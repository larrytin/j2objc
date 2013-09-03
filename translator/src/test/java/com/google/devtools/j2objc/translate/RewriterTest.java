/*
 * Copyright 2011 Google Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.devtools.j2objc.translate;

import com.google.devtools.j2objc.GenerationTest;
import com.google.devtools.j2objc.J2ObjC;
import com.google.devtools.j2objc.types.Types;
import com.google.devtools.j2objc.util.ASTUtil;
import com.google.devtools.j2objc.util.NameTable;

import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.EmptyStatement;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ForStatement;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.core.dom.IfStatement;
import org.eclipse.jdt.core.dom.LabeledStatement;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.ReturnStatement;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.SuperMethodInvocation;
import org.eclipse.jdt.core.dom.SwitchStatement;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;

import java.io.IOException;
import java.util.List;

/**
 * Unit tests for {@link Rewriter}.
 *
 * @author Tom Ball
 */
@SuppressWarnings("unchecked")
public class RewriterTest extends GenerationTest {

  public void testContinueAndBreakUsingSameLabel() throws IOException {
    String translation = translateSourceFile(
        "class Test { void test() { " +
        "int i = 0; outer: for (; i < 10; i++) { " +
        "for (int j = 0; j < 10; j++) { " +
        "int n = i + j; " +
        "if (n == 5) continue outer; " +
        "else break outer; } } } }", "Test", "Test.m");
    assertTranslatedLines(translation,
        "int i = 0;",
        "for (; i < 10; i++) {",
        "{",
        "for (int j = 0; j < 10; j++) {",
        "int n = i + j;",
        "if (n == 5) goto continue_outer;",
        "else goto break_outer;",
        "}",
        "}",
        "continue_outer: ;",
        "}",
        "break_outer: ;");
  }

  public void testLabeledContinue() throws IOException {
    List<Statement> stmts = translateStatements(
        "int i = 0; outer: for (; i < 10; i++) { " +
        "for (int j = 0; j < 10; j++) { continue outer; }}");
    assertEquals(2, stmts.size());
    Statement s = stmts.get(1);
    assertTrue(s instanceof ForStatement);  // not LabeledStatement
    ForStatement fs = (ForStatement) s;
    Statement forStmt = fs.getBody();
    assertTrue(forStmt instanceof Block);
    stmts = ((Block) forStmt).statements();
    assertEquals(2, stmts.size());
    Statement lastStmt = stmts.get(1);
    assertTrue(lastStmt instanceof LabeledStatement);
    assertTrue(((LabeledStatement) lastStmt).getBody() instanceof EmptyStatement);
  }

  public void testLabeledBreak() throws IOException {
    List<Statement> stmts = translateStatements(
        "int i = 0; outer: for (; i < 10; i++) { " +
        "for (int j = 0; j < 10; j++) { break outer; }}");
    assertEquals(3, stmts.size());
    Statement s = stmts.get(1);
    assertTrue(s instanceof ForStatement);  // not LabeledStatement
    ForStatement fs = (ForStatement) s;
    Statement forStmt = fs.getBody();
    assertTrue(forStmt instanceof Block);
    assertEquals(1, ((Block) forStmt).statements().size());
    Statement lastStmt = stmts.get(2);
    assertTrue(lastStmt instanceof LabeledStatement);
    assertTrue(((LabeledStatement) lastStmt).getBody() instanceof EmptyStatement);
  }

  public void testLabeledBreakWithNonBlockParent() throws IOException {
    List<Statement> stmts = translateStatements(
        "int i = 0; if (i == 0) outer: for (; i < 10; i++) { " +
        "for (int j = 0; j < 10; j++) { break outer; }}");
    assertEquals(2, stmts.size());
    Statement s = stmts.get(1);
    assertTrue(s instanceof IfStatement);
    s = ((IfStatement) s).getThenStatement();
    assertTrue(s instanceof Block);
    stmts = ((Block) s).statements();
    assertEquals(2, stmts.size());
    s = stmts.get(0);
    assertTrue(s instanceof ForStatement);  // not LabeledStatement
    ForStatement fs = (ForStatement) s;
    Statement forStmt = fs.getBody();
    assertTrue(forStmt instanceof Block);
    assertEquals(1, ((Block) forStmt).statements().size());
    Statement labelStmt = stmts.get(1);
    assertTrue(labelStmt instanceof LabeledStatement);
    assertTrue(((LabeledStatement) labelStmt).getBody() instanceof EmptyStatement);
  }

  /**
   * Verifies that abstract methods to implement an interface are added to an
   * abstract class.
   */
  public void testAbstractMethodsAdded() {
    String source =
        "import java.util.Iterator; public abstract class Test implements Iterator<Test> { "
            + "public boolean hasNext() { return true; } }";
    CompilationUnit unit = translateType("Test", source);
    List<?> types = unit.types();
    assertEquals(1, types.size());
    assertTrue(types.get(0) instanceof TypeDeclaration);
    TypeDeclaration testType = (TypeDeclaration) types.get(0);
    MethodDeclaration[] methods = testType.getMethods();
    assertEquals(4, methods.length);

    // verify added methods are abstract, and that existing method wasn't changed
    for (MethodDeclaration m : methods) {
      int modifiers = m.getModifiers();
      String name = m.getName().getIdentifier();
      if (name.equals("hasNext")) {
        assertFalse(Modifier.isAbstract(modifiers));
      } else if (name.equals(DestructorGenerator.FINALIZE_METHOD)
          || name.equals(DestructorGenerator.DEALLOC_METHOD)
          || name.equals(NameTable.INIT_NAME)) {
        // it's ok.
      } else {
        // it's an added method
        assertTrue(Modifier.isAbstract(modifiers));
        assertEquals(0, m.parameters().size());
        if (name.equals("next")) {
          assertEquals(testType.resolveBinding(), Types.getBinding(m.getReturnType2()));
        } else if (name.equals("remove")) {
          ITypeBinding voidType = m.getAST().resolveWellKnownType("void");
          assertEquals(voidType, m.getReturnType2().resolveBinding());
        } else {
          fail("unknown method added: " + name);
        }
      }
    }
  }

  /**
   * List has a toArray() method that uses array types.
   */
  public void testAbstractMethodsAddedWithArrayType() {
    String source =
        "import java.util.List; public abstract class Test implements List<Object> { "
            + "public boolean isEmpty() { return true; } }";
    CompilationUnit unit = translateType("Test", source);
    List<?> types = unit.types();
    assertEquals(1, types.size());
    assertTrue(types.get(0) instanceof TypeDeclaration);
    TypeDeclaration testType = (TypeDeclaration) types.get(0);
    MethodDeclaration[] methods = testType.getMethods();
    assertEquals(26, methods.length);

    // verify added methods are abstract, and that existing method wasn't changed
    for (MethodDeclaration m : methods) {
      int modifiers = m.getModifiers();
      String name = m.getName().getIdentifier();
      if (name.equals("isEmpty")) {
        assertFalse(Modifier.isAbstract(modifiers));
      } else if (name.equals(DestructorGenerator.FINALIZE_METHOD)
          || name.equals(DestructorGenerator.DEALLOC_METHOD)
          || name.equals(NameTable.INIT_NAME)) {
        // it's ok.
      } else {
        // it's an added method
        assertTrue(Modifier.isAbstract(modifiers));
        ITypeBinding returnType = Types.getTypeBinding(m.getReturnType2());
        if (name.equals("toArray")) {
          assertEquals("IOSObjectArray", returnType.getName());
          if (!m.parameters().isEmpty()) {
            assertEquals(1, m.parameters().size());
            Object param = m.parameters().get(0);
            IBinding paramBinding = Types.getBinding(param);
            assertTrue(paramBinding instanceof IVariableBinding);
            ITypeBinding paramType = ((IVariableBinding) paramBinding).getType();
            assertTrue(paramType.isArray());
          }
        }
      }
    }
  }

  /**
   * Verify that super-interface methods are also added.
   */
  public void testAbstractClassGrandfatherInterface() {
    String source =
        "public class Test {" +
        "  public interface I1 { void foo(); } " +
        "  public interface I2 extends I1 { void bar(); } " +
        "  public abstract class Inner implements I2 { } }";
    CompilationUnit unit = translateType("Test", source);
    List<?> types = unit.types();
    assertEquals(4, types.size());
    assertTrue(types.get(3) instanceof TypeDeclaration);
    TypeDeclaration innerType = (TypeDeclaration) types.get(3);
    assertEquals("Inner", innerType.getName().toString());

    MethodDeclaration[] methods = innerType.getMethods();
    assertEquals(3, methods.length);
    String name0 = methods[0].getName().getIdentifier();
    assertTrue(name0.matches("foo|bar"));
    String name1 = methods[1].getName().getIdentifier();
    assertTrue(name1.matches("foo|bar"));
    assertNotSame(name0, name1);
  }

  /**
   * Verify that interface methods declaring methods implemented by
   * super-class have a forwarding method.
   */
  public void testInterfaceOfSuperclassMethod() {
    String source =
        "public class Test implements Equateable {} " +
        "interface Equateable { boolean equals(Object o); }";
    CompilationUnit unit = translateType("Test", source);
    assertEquals(2, unit.types().size());
    TypeDeclaration innerType = (TypeDeclaration) unit.types().get(1);
    assertEquals("Test", innerType.getName().toString());

    MethodDeclaration[] methods = innerType.getMethods();
    assertEquals(2, methods.length);
    MethodDeclaration equalsMethod = methods[0];
    assertEquals("isEqual", equalsMethod.getName().getIdentifier());
    assertEquals(1, equalsMethod.parameters().size());
    assertTrue(equalsMethod.parameters().get(0) instanceof SingleVariableDeclaration);
    List<Statement> stmts = equalsMethod.getBody().statements();
    assertEquals(1, stmts.size());
    Statement stmt = stmts.get(0);
    assertTrue(stmt instanceof ReturnStatement);
    assertTrue(((ReturnStatement) stmt).getExpression() instanceof SuperMethodInvocation);
  }

  /**
   * Verify that interface methods declaring methods implemented by
   * super-class have a forwarding method.
   */
  public void testInterfaceOfSuperclassMethodInAnonymousInner() {
    String source =
        "interface Equateable { boolean equals(Object o); }" +
        "public class Test { public void foo() { Equateable e = new Equateable() { }; } } ";
    CompilationUnit unit = translateType("Test", source);
    assertEquals(3, unit.types().size());
    TypeDeclaration innerType = (TypeDeclaration) unit.types().get(2);
    assertEquals("$1", innerType.getName().toString());

    MethodDeclaration[] methods = innerType.getMethods();
    assertEquals(2, methods.length); // isEqual, init
    MethodDeclaration equalsMethod = methods[0];
    assertEquals("isEqual", equalsMethod.getName().getIdentifier());
    assertEquals(1, equalsMethod.parameters().size());
    assertTrue(equalsMethod.parameters().get(0) instanceof SingleVariableDeclaration);
    List<Statement> stmts = equalsMethod.getBody().statements();
    assertEquals(1, stmts.size());
    Statement stmt = stmts.get(0);
    assertTrue(stmt instanceof ReturnStatement);
    assertTrue(((ReturnStatement) stmt).getExpression() instanceof SuperMethodInvocation);
  }

  /**
   * Verify that array initializers are rewritten as method calls.
   */
  public void testArrayInitializerRewrite() {
    String source =
        "public class Test { void test() { int[] a = { 1, 2, 3 }; char b[] = { '4', '5' }; } }";
    CompilationUnit unit = translateType("Test", source);
    TypeDeclaration clazz = (TypeDeclaration) unit.types().get(0);
    MethodDeclaration md = (MethodDeclaration) clazz.bodyDeclarations().get(0);
    List<Statement> stmts = md.getBody().statements();
    assertEquals(2, stmts.size());

    assertEquals("IOSIntArray a=IOSIntArray.arrayWithInts({1,2,3},3);",
        stmts.get(0).toString().trim());
    assertEquals("IOSCharArray b[]=IOSCharArray.arrayWithCharacters({'4','5'},2);",
      stmts.get(1).toString().trim());
  }

  /**
   * Verify that static array initializers are rewritten as method calls.
   */
  public void testStaticArrayInitializerRewrite() throws IOException {
    String translation = translateSourceFile(
        "public class Test { static int[] a = { 1, 2, 3 }; static char b[] = { '4', '5' }; }",
        "Test", "Test.m");
    assertTranslatedLines(translation,
        "+ (void)initialize {",
        "if (self == [Test class]) {",
        "JreOperatorRetainedAssign(&Test_a_, nil, " +
            "[IOSIntArray arrayWithInts:(int[]){ 1, 2, 3 } count:3]);",
        "JreOperatorRetainedAssign(&Test_b_, nil, " +
            "[IOSCharArray arrayWithCharacters:(unichar[]){ '4', '5' } count:2]);",
        "}",
        "}");
  }

  public void testNonStaticMultiDimArrayInitializer() throws IOException {
    String translation = translateSourceFile(
        "class Test { int[][] a = { { 1, 2, 3 } }; }", "Test", "Test.m");
    assertTranslation(translation,
        "[IOSObjectArray arrayWithObjects:(id[]){" +
        " [IOSIntArray arrayWithInts:(int[]){ 1, 2, 3 } count:3] } count:1" +
        " type:[IOSIntArray iosClass]]");
  }

  public void testArrayCreationInConstructorInvocation() throws IOException {
    String translation = translateSourceFile(
        "class Test { Test(int[] i) {} Test() { this(new int[] {}); } }", "Test", "Test.m");
    assertTranslation(translation,
        "[self initTestWithIntArray:[IOSIntArray arrayWithInts:(int[]){  } count:0]]");
  }

  /**
   * Verify serialization methods and fields are removed.
   */
  public void testSerializationRemoval() {
    String source = "import java.io.*; public class Test implements Serializable { " +
        "private int foo; " +

        "private static long serialVersionUID; " +
        "private void readObject(ObjectInputStream in) {} " +
        "private void writeObject(ObjectOutputStream out) {} " +
        "private void readObjectNoData() {} " +
        "private Object readResolve() { return null; } " +
        "private Object writeResolve() { return null;} " +

        "public Test() {} " +
        "private void testMethod() {} }";
    CompilationUnit unit = compileType("Test", source);
    TypeDeclaration type = (TypeDeclaration) unit.types().get(0);
    List<BodyDeclaration> members = type.bodyDeclarations();
    assertEquals(9, members.size());
    J2ObjC.initializeTranslation(unit);
    J2ObjC.translate(unit);
    assertEquals(4, members.size());
    FieldDeclaration f = (FieldDeclaration) members.get(0);
    VariableDeclarationFragment var = (VariableDeclarationFragment) f.fragments().get(0);
    assertEquals("foo", var.getName().getIdentifier());
    MethodDeclaration m = (MethodDeclaration) members.get(1);
    assertTrue(m.isConstructor());
    m = (MethodDeclaration) members.get(2);
    assertEquals("testMethod", m.getName().getIdentifier());
  }

  public void testAddsAbstractMethodsToEnum() throws IOException {
    String interfaceSource = "interface I { public int foo(); }";
    String enumSource =
        "enum E implements I { " +
        "  A { public int foo() { return 42; } }," +
        "  B { public int foo() { return -1; } } }";
    addSourceFile(interfaceSource, "I.java");
    addSourceFile(enumSource, "E.java");
    String translation = translateSourceFile("E", "E.m");
    assertTranslation(translation, "- (int)foo {");
    assertTranslation(translation, "[self doesNotRecognizeSelector:_cmd];");
  }

  public void testInterfaceFieldsAreStaticFinal() throws IOException {
    String source = "interface Test { String foo = \"bar\"; }";
    String translation = translateSourceFile(source, "Test", "Test.m");
    assertTranslation(translation, "+ (NSString *)foo {");
    assertFalse(translation.contains("setFoo"));
  }

  // Regression test: the wrong method name used for "f.group()" translation.
  public void testPrintlnWithMethodInvocation() throws IOException {
    String source = "public class A { " +
        "String group() { return \"foo\"; } " +
        "void test() { A a = new A(); System.out.println(a.group()); }}";
    String translation = translateSourceFile(source, "A", "A.m");
    assertTranslation(translation, "printlnWithNSString:[a group]];");
  }

  // Regression test: Must call "charValue" on boxed type returned from iterator.
  public void testEnhancedForWithBoxedType() throws IOException {
    String source = "import java.util.List;" +
        "public class A { " +
        "List<Character> chars; " +
        "void test() { for (char c : chars) {} } }";
    String translation = translateSourceFile(source, "A", "A.m");
    assertTranslation(translation,
        "unichar c = [((JavaLangCharacter *) nil_chk([iter__ next])) charValue];");
  }

  public void testStaticArrayInitializerMove() throws IOException {
    String source = "class Test { static final double[] EVERY_SIXTEENTH_FACTORIAL = " +
        "{ 0x1.0p0, 0x1.30777758p44, 0x1.956ad0aae33a4p117, 0x1.ee69a78d72cb6p202, " +
        "0x1.fe478ee34844ap295, 0x1.c619094edabffp394, 0x1.3638dd7bd6347p498, " +
        "0x1.7cac197cfe503p605, 0x1.1e5dfc140e1e5p716, 0x1.8ce85fadb707ep829, " +
        "0x1.95d5f3d928edep945 }; }";
    String translation = translateSourceFile(source, "Test", "Test.m");
    assertTranslation(translation, "{ 1.0, 2.0922789888E13, 2.631308369336935E35, " +
        "1.2413915592536073E61, 1.2688693218588417E89, 7.156945704626381E118, " +
        "9.916779348709496E149, 1.974506857221074E182, 3.856204823625804E215, " +
        "5.5502938327393044E249, 4.7147236359920616E284 }");
  }

  public void testTypeCheckInCompareToMethod() throws IOException {
    String translation = translateSourceFile(
        "class Test implements Comparable<Test> { int i; " +
        "  public int compareTo(Test t) { return i - t.i; } }", "Test", "Test.m");
    assertTranslation(translation, "#include \"java/lang/ClassCastException.h\"");
    assertTranslation(translation, "if (t != nil && ![t isKindOfClass:[Test class]])");
    assertTranslation(translation,
        "@throw [[[JavaLangClassCastException alloc] init] autorelease]");
  }

  public void testAdditionWithinStringConcatenation() throws IOException {
    String translation = translateSourceFile(
        "class Test { void test() { String s = 1 + 2.3f + \"foo\"; } }", "Test", "test.m");
    assertTranslation(translation,
        "NSString *s = [NSString stringWithFormat:@\"%ffoo\", 1 + 2.3f]");
  }

  public void testVariableDeclarationsInSwitchStatement() throws IOException {
    String translation = translateSourceFile(
      "public class A { public void doSomething(int i) { switch (i) { " +
      "case 1: int j = i * 2; log(j); break; " +
      "case 2: log(i); break; " +
      "case 3: log(i); int k = i, l = 42; break; }}" +
      "private void log(int i) {}}",
      "A", "A.m");
    assertTranslation(translation, "int j;");
    assertTranslation(translation, "int k, l;");
    assertTranslation(translation, "case 1:");
    assertTrue(translation.indexOf("int j;") < translation.indexOf("case 1:"));
    assertTrue(translation.indexOf("int k, l;") < translation.indexOf("case 1:"));
    assertTrue(translation.indexOf("int j;") < translation.indexOf("int k, l;"));
    assertTranslation(translation, "j = i * 2;");
    assertTranslation(translation, "k = i;");
    assertTranslation(translation, "l = 42;");
    assertTrue(translation.indexOf("k = i") < translation.indexOf("l = 42"));
  }

  public void testVariableDeclarationsInSwitchStatement2() throws IOException {
    CompilationUnit unit = translateType("A",
        "public class A { public void doSomething(int i) { switch (i) { " +
        "case 1: int j = i * 2; log(j); break; " +
        "case 2: log(i); break; " +
        "case 3: log(i); int k = i, l = 42; break; }}" +
        "private void log(int i) {}}");
    TypeDeclaration testType = (TypeDeclaration) unit.types().get(0);
    MethodDeclaration method = testType.getMethods()[0];
    List<Statement> stmts = ASTUtil.getStatements(method.getBody());
    assertEquals(1, stmts.size());
    Block block = (Block) stmts.get(0);
    stmts = ASTUtil.getStatements(block);
    assertEquals(3, stmts.size());
    assertTrue(stmts.get(0) instanceof VariableDeclarationStatement);
    assertTrue(stmts.get(1) instanceof VariableDeclarationStatement);
    assertTrue(stmts.get(2) instanceof SwitchStatement);
  }

  public void testMultipleSwitchVariables() throws IOException {
    String translation = translateSourceFile(
      "public class A { public void doSomething(int n) { switch (n) { " +
      "case 1: int i; int j = 2; }}" +
      "private void log(int i) {}}",
      "A", "A.m");
    int index = translation.indexOf("int i;");
    assertTrue(index >= 0 && index < translation.indexOf("switch"));
    index = translation.indexOf("int j;");
    assertTrue(index >= 0 && index < translation.indexOf("switch"));
    assertOccurrences(translation, "int i;", 1);
    assertFalse(translation.contains("int j = 2;"));
  }

  public void testPercentInFormatString() throws IOException {
    String translation = translateSourceFile("public class Test { " +
        "String test(int n) { return String.format(\"%d%% of 100%%\", n); }}", "Test", "Test.m");
    assertTranslation(translation, "[NSString stringWithFormat:@\"%d%% of 100%%\" , n, nil];");
  }

  public void testFormatStringWithLong() throws IOException {
    String translation = translateSourceFile("public class Test { " +
        "String test(long n) { return String.format(\"%d\", n); }}", "Test", "Test.m");
    assertTranslation(translation, "[NSString stringWithFormat:@\"%lld\" , n, nil];");
  }

  public void testMethodCollisionWithSuperclassField() throws IOException {
    addSourceFile("class A { protected int i; }", "A.java");
    String translation = translateSourceFile(
        "class B extends A { int i() { return i; } }", "B", "B.m");
    assertTranslation(translation, "return i_;");
  }

  public void testMultipleLabelsWithSameName() throws IOException {
    String translation = translateSourceFile(
        "public class Test { void test() { " +
        "  outer: for (int r = 0; r < 10; r++) {" +
        "    for (int s = 0; s < 10; s++) {" +
        "      break outer; }}" +
        "  outer: for (int t = 0; t < 10; t++) {" +
        "    for (int u = 0; u < 10; u++) {" +
        "      break outer; }}" +
        "  outer: for (int v = 0; v < 10; v++) {" +
        "    for (int w = 0; w < 10; w++) {" +
        "      break outer;" +
        "}}}}", "Test", "Test.m");
    assertTranslation(translation, "break_outer:");
    assertTranslation(translation, "goto break_outer;");
    assertTranslation(translation, "break_outer_2:");
    assertTranslation(translation, "goto break_outer_2;");
    assertTranslation(translation, "break_outer_3:");
    assertTranslation(translation, "goto break_outer_3;");
  }

  public void testExtraDimensionsInFieldDeclaration() throws IOException {
    String translation = translateSourceFile(
        "class Test { int i1, i2[], i3[][], i4[][][], i5[][], i6; }", "Test", "Test.h");
    assertTranslatedLines(translation,
        "int i1_, i6_;",
        "IOSIntArray *i2_;",
        "IOSObjectArray *i3_, *i5_;",
        "IOSObjectArray *i4_;");
  }

  public void testExtraDimensionsInVariableDeclarationStatement() throws IOException {
    String translation = translateSourceFile(
        "class Test { void test() { char c1[][], c2[], c3, c4, c5[][]; } }", "Test", "Test.m");
    assertTranslatedLines(translation,
        "IOSObjectArray *c1, *c5;",
        "IOSCharArray *c2;",
        "unichar c3, c4;");
  }

  // Objective-C requires that && tests be surrounded by parens when mixed with || tests.
  public void testLogicalPrecedence() throws IOException {
    String translation = translateSourceFile(
        "class Test { " +
        "boolean test1(boolean a, boolean b) {" +
        "  return a && b; }" +
        "boolean test2(boolean c, boolean d) {" +
        "  return c || d; }" +
        "boolean test3(boolean e, boolean f, boolean g, boolean h, boolean i) { " +
        "  return e && f || g && h || i; }" +
        "boolean test4(boolean j, boolean k, boolean l, boolean m, boolean n) {" +
        "  return j || k || l && m && n; }}",
        "Test", "Test.m");
    assertTranslation(translation, "return a && b;");
    assertTranslation(translation, "return c || d;");
    assertTranslatedLines(translation, "return (e && f) || (g && h) || i;");
    assertTranslatedLines(translation, "return j || k || (l && m && n);");

    translation = translateSourceFile(
        "class Test { int i; @Override public boolean equals(Object object) { " +
        "return (object == this) || (object instanceof Test) && (i == ((Test) object).i); } }",
        "Test", "Test.m");
    assertTranslatedLines(translation, "(object == self) || " +
        "(([object isKindOfClass:[Test class]]) && (i_ == ((Test *) nil_chk(object))->i_));");
  }

  // Objective-C requires that bit-wise and tests be surrounded by parens when mixed with or tests.
  public void testBitPrecedence() throws IOException {
    String translation = translateSourceFile(
        "class Test { " +
        "int test1(int a, int b) {" +
        "  return a & b; }" +
        "int test2(int c, int d) {" +
        "  return c | d; }" +
        "int test3(int e, int f, int g, int h, int i) { " +
        "  return e & f | g & h | i; }" +
        "int test4(int j, int k, int l, int m, int n) {" +
        "  return j | k | l & m & n; }}",
        "Test", "Test.m");
    assertTranslation(translation, "return a & b;");
    assertTranslation(translation, "return c | d;");
    assertTranslatedLines(translation, "return (e & f) | (g & h) | i;");
    assertTranslatedLines(translation, "return j | k | (l & m & n);");
  }
}
