/*
 * Copyright 2012 Google Inc. All Rights Reserved.
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

package com.google.devtools.j2objc.types;

import com.google.devtools.j2objc.GenerationTest;

import java.io.IOException;

/**
 * Unit tests for the {@link ImplementationImportCollector} class.
 *
 * @author Tom Ball
 */
public class ImplementationImportCollectorTest extends GenerationTest {

  // Verify that invoked method's return value has associated header.
  public void testMethodReturnHasHeader() throws IOException {
    addSourceFile("class FooException extends Exception { AssertionError asAssertion() { " +
        "return new AssertionError(this); }}", "FooException.java");
    addSourceFile(
        "class FooMaker { static FooException makeException() { return new FooException(); }}",
        "FooMaker.java");
    String translation = translateSourceFile(
        "class A { void test() { " +
        "throw FooMaker.makeException().asAssertion(); }}", "A", "A.m");
    assertTranslation(translation, "#include \"FooException.h\"");
  }

  public void testVarargsMethodNoActualArguments() throws IOException {
    translateSourceFile(
        "class Test { Test(String ... values) { } Test test = new Test(); }",
        "Test", "Test.m");
    // Nothing to do; Successful translation is the test.
  }

  public void testVarargsMethodManyArguments() throws IOException {
    translateSourceFile(
        "class Test { Test(int... values) { } Test test = new Test(1,2,3); }",
        "Test", "Test.m");
    // Nothing to do; Successful translation is the test.
  }

  public void testBooleanArrayImport() throws IOException {
    addSourceFile("class A { boolean[] b; }", "A.java");
    String translation = translateSourceFile(
        "class B { int test() { return new A().b.length; }}", "B", "B.m");
    assertTranslation(translation, "#include \"IOSBooleanArray.h\"");
  }

  public void testPrimitiveArrayAsParameterImport() throws IOException {
    addSourceFile(
        "class B { protected char bits[]; public B(char[] bits_) { bits = bits_;} }", "B.java");
    String translation = translateSourceFile(
        "class A { public static final B test = new B(new char[]{'a', 'b'}); }", "A", "A.m");
    assertTranslation(translation, "#include \"IOSCharArray.h\"");
  }

  public void testObjectArrayImport() throws IOException {
    String translation = translateSourceFile(
        "import java.util.BitSet; class A { public BitSet[] test = new BitSet[3]; }", "A", "A.m");
    assertTranslation(translation, "#include \"IOSObjectArray.h\"");
    assertTranslation(translation, "#include \"java/util/BitSet.h\"");
  }

  public void testEnhancedForMethodInvocation() throws IOException {
    addSourceFile("import java.util.*; class A { " +
        "final Map<String,String> map; }", "A.java");
    String translation = translateSourceFile(
        "import java.util.*; class B extends A { " +
        "void test() { for (String s : map.keySet()) {}}}", "B", "B.m");
    assertTranslation(translation, "#include \"java/util/Map.h\"");
  }

  public void testReturnTypeOfSuperclassMethod() throws IOException {
    addSourceFile("interface I {}", "I.java");
    addSourceFile("class A implements I {}", "A.java");
    addSourceFile("class B { A getAnA() { return new A(); } }", "B.java");
    String translation = translateSourceFile(
        "class C extends B { void test() { I i = getAnA(); } }", "C", "C.m");
    assertTranslation(translation, "#include \"A.h\"");
  }

  // Verify that a primitive type literal has a wrapper class import.
  public void testPrimitiveTypeLiteral() throws IOException {
    String translation = translateSourceFile(
        "class Test { Class doubleType() { return double.class; }}",
        "Test", "Test.m");
    assertTranslation(translation, "#include \"java/lang/Double.h\"");
  }

  // Verify that an object array type literal imports IOSObjectArray.
  public void testArrayTypeLiteralImport() throws IOException {
    String translation = translateSourceFile(
        "class Test { Class arrayType() { return Object[].class; }}",
        "Test", "Test.m");
    assertTranslation(translation, "#include \"IOSObjectArray.h\"");
  }

  // Verify that a multi-dimensional array declaration imports IOSObjectArray.
  public void testMultiArrayTypeLiteralImport() throws IOException {
    String translation = translateSourceFile(
        "class Test { String[][] map = { { \"1\", \"one\" }, { \"2\", \"two\" } }; }",
        "Test", "Test.m");
    assertTranslation(translation, "#include \"IOSObjectArray.h\"");
  }
}
