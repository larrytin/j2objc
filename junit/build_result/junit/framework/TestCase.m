//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/junit/framework/TestCase.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/Throwable.h"
#include "java/lang/reflect/InvocationTargetException.h"
#include "java/lang/reflect/Method.h"
#include "java/lang/reflect/Modifier.h"
#include "junit/framework/Assert.h"
#include "junit/framework/TestCase.h"
#include "junit/framework/TestResult.h"

@implementation JunitFrameworkTestCase

- (id)init {
  if (self = [super init]) {
    JunitFrameworkTestCase_set_fName_(self, nil);
  }
  return self;
}

- (id)initWithNSString:(NSString *)name {
  if (self = [super init]) {
    JunitFrameworkTestCase_set_fName_(self, name);
  }
  return self;
}

- (int)countTestCases {
  return 1;
}

- (JunitFrameworkTestResult *)createResult {
  return [[[JunitFrameworkTestResult alloc] init] autorelease];
}

- (JunitFrameworkTestResult *)run {
  JunitFrameworkTestResult *result = [self createResult];
  [self runWithJunitFrameworkTestResult:result];
  return result;
}

- (void)runWithJunitFrameworkTestResult:(JunitFrameworkTestResult *)result {
  [((JunitFrameworkTestResult *) nil_chk(result)) runWithJunitFrameworkTestCase:self];
}

- (void)runBare {
  JavaLangThrowable *exception = nil;
  [self setUp];
  @try {
    [self runTest];
  }
  @catch (JavaLangThrowable *running) {
    exception = running;
  }
  @finally {
    @try {
      [self tearDown];
    }
    @catch (JavaLangThrowable *tearingDown) {
      if (exception == nil) exception = tearingDown;
    }
  }
  if (exception != nil) @throw exception;
}

+ (IOSObjectArray *)__exceptions_runBare {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangThrowable getClass] } count:1 type:[IOSClass getClass]];
}

- (void)runTest {
  [JunitFrameworkAssert assertNotNullWithNSString:@"TestCase.fName cannot be null" withId:fName_];
  JavaLangReflectMethod *runMethod = nil;
  @try {
    runMethod = [[self getClass] getMethod:fName_ parameterTypes:(IOSObjectArray *) check_class_cast(nil, [IOSObjectArray class])];
  }
  @catch (JavaLangNoSuchMethodException *e) {
    [JunitFrameworkAssert failWithNSString:[NSString stringWithFormat:@"Method \"%@\" not found", fName_]];
  }
  if (![JavaLangReflectModifier isPublicWithInt:[((JavaLangReflectMethod *) nil_chk(runMethod)) getModifiers]]) {
    [JunitFrameworkAssert failWithNSString:[NSString stringWithFormat:@"Method \"%@\" should be public", fName_]];
  }
  @try {
    [runMethod invokeWithId:self withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]];
  }
  @catch (JavaLangReflectInvocationTargetException *e) {
    [((JavaLangReflectInvocationTargetException *) nil_chk(e)) fillInStackTrace];
    @throw [e getTargetException];
  }
  @catch (JavaLangIllegalAccessException *e) {
    [((JavaLangIllegalAccessException *) nil_chk(e)) fillInStackTrace];
    @throw e;
  }
}

+ (IOSObjectArray *)__exceptions_runTest {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangThrowable getClass] } count:1 type:[IOSClass getClass]];
}

- (void)setUp {
}

+ (IOSObjectArray *)__exceptions_setUp {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)tearDown {
}

+ (IOSObjectArray *)__exceptions_tearDown {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangException getClass] } count:1 type:[IOSClass getClass]];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"%@(%@)", [self getName], [[self getClass] getName]];
}

- (NSString *)getName {
  return fName_;
}

- (void)setNameWithNSString:(NSString *)name {
  JunitFrameworkTestCase_set_fName_(self, name);
}

- (void)dealloc {
  JunitFrameworkTestCase_set_fName_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JunitFrameworkTestCase *)other {
  [super copyAllFieldsTo:other];
  JunitFrameworkTestCase_set_fName_(other, fName_);
}

@end
