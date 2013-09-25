//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/junit/extensions/TestDecorator.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JunitExtensionsTestDecorator_H_
#define _JunitExtensionsTestDecorator_H_

@class JunitFrameworkTestResult;

#import "JreEmulation.h"
#include "junit/framework/Assert.h"
#include "junit/framework/Test.h"

@interface JunitExtensionsTestDecorator : JunitFrameworkAssert < JunitFrameworkTest > {
 @public
  id<JunitFrameworkTest> fTest_;
}

- (id)initWithJunitFrameworkTest:(id<JunitFrameworkTest>)test;
- (void)basicRunWithJunitFrameworkTestResult:(JunitFrameworkTestResult *)result;
- (int)countTestCases;
- (void)runWithJunitFrameworkTestResult:(JunitFrameworkTestResult *)result;
- (NSString *)description;
- (id<JunitFrameworkTest>)getTest;
- (void)copyAllFieldsTo:(JunitExtensionsTestDecorator *)other;
@end

J2OBJC_FIELD_SETTER(JunitExtensionsTestDecorator, fTest_, id<JunitFrameworkTest>)

#endif // _JunitExtensionsTestDecorator_H_
