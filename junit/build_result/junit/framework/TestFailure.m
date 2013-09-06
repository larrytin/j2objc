//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/junit/framework/TestFailure.java
//
//  Created by retechretech on 13-9-4.
//

#include "java/io/PrintWriter.h"
#include "java/io/StringWriter.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/Throwable.h"
#include "junit/framework/AssertionFailedError.h"
#include "junit/framework/Test.h"
#include "junit/framework/TestFailure.h"

@implementation JunitFrameworkTestFailure

- (id)initWithJunitFrameworkTest:(id<JunitFrameworkTest>)failedTest
           withJavaLangThrowable:(JavaLangThrowable *)thrownException {
  if ((self = [super init])) {
    JunitFrameworkTestFailure_set_fFailedTest_(self, failedTest);
    JunitFrameworkTestFailure_set_fThrownException_(self, thrownException);
  }
  return self;
}

- (id<JunitFrameworkTest>)failedTest {
  return fFailedTest_;
}

- (JavaLangThrowable *)thrownException {
  return fThrownException_;
}

- (NSString *)description {
  JavaLangStringBuffer *buffer = [[[JavaLangStringBuffer alloc] init] autorelease];
  [buffer appendWithNSString:[NSString stringWithFormat:@"%@: %@", fFailedTest_, [((JavaLangThrowable *) nil_chk(fThrownException_)) getMessage]]];
  return [buffer description];
}

- (NSString *)trace {
  JavaIoStringWriter *stringWriter = [[[JavaIoStringWriter alloc] init] autorelease];
  JavaIoPrintWriter *writer = [[[JavaIoPrintWriter alloc] initWithJavaIoWriter:stringWriter] autorelease];
  [((JavaLangThrowable *) nil_chk([self thrownException])) printStackTraceWithJavaIoPrintWriter:writer];
  JavaLangStringBuffer *buffer = [stringWriter getBuffer];
  return [((JavaLangStringBuffer *) nil_chk(buffer)) description];
}

- (NSString *)exceptionMessage {
  return [((JavaLangThrowable *) nil_chk([self thrownException])) getMessage];
}

- (BOOL)isFailure {
  return [[self thrownException] isKindOfClass:[JunitFrameworkAssertionFailedError class]];
}

- (void)dealloc {
  JunitFrameworkTestFailure_set_fThrownException_(self, nil);
  JunitFrameworkTestFailure_set_fFailedTest_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JunitFrameworkTestFailure *)other {
  [super copyAllFieldsTo:other];
  JunitFrameworkTestFailure_set_fFailedTest_(other, fFailedTest_);
  JunitFrameworkTestFailure_set_fThrownException_(other, fThrownException_);
}

@end
