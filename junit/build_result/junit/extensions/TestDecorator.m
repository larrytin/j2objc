//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/junit/extensions/TestDecorator.java
//
//  Created by retechretech on 13-9-4.
//

#include "junit/extensions/TestDecorator.h"
#include "junit/framework/Test.h"
#include "junit/framework/TestResult.h"

@implementation JunitExtensionsTestDecorator

- (id)initWithJunitFrameworkTest:(id<JunitFrameworkTest>)test {
  if ((self = [super init])) {
    JunitExtensionsTestDecorator_set_fTest_(self, test);
  }
  return self;
}

- (void)basicRunWithJunitFrameworkTestResult:(JunitFrameworkTestResult *)result {
  [((id<JunitFrameworkTest>) nil_chk(fTest_)) runWithJunitFrameworkTestResult:result];
}

- (int)countTestCases {
  return [((id<JunitFrameworkTest>) nil_chk(fTest_)) countTestCases];
}

- (void)runWithJunitFrameworkTestResult:(JunitFrameworkTestResult *)result {
  [self basicRunWithJunitFrameworkTestResult:result];
}

- (NSString *)description {
  return [((id<JunitFrameworkTest>) nil_chk(fTest_)) description];
}

- (id<JunitFrameworkTest>)getTest {
  return fTest_;
}

- (void)dealloc {
  JunitExtensionsTestDecorator_set_fTest_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JunitExtensionsTestDecorator *)other {
  [super copyAllFieldsTo:other];
  JunitExtensionsTestDecorator_set_fTest_(other, fTest_);
}

@end
