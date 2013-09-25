//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/org/junit/runner/notification/Failure.java
//
//  Created by retechretech on 13-9-25.
//

#include "java/io/PrintWriter.h"
#include "java/io/StringWriter.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/Throwable.h"
#include "org/junit/runner/Description.h"
#include "org/junit/runner/notification/Failure.h"

@implementation OrgJunitRunnerNotificationFailure

- (id)initWithOrgJunitRunnerDescription:(OrgJunitRunnerDescription *)description_
                  withJavaLangThrowable:(JavaLangThrowable *)thrownException {
  if (self = [super init]) {
    OrgJunitRunnerNotificationFailure_set_fThrownException_(self, thrownException);
    OrgJunitRunnerNotificationFailure_set_fDescription_(self, description_);
  }
  return self;
}

- (NSString *)getTestHeader {
  return [((OrgJunitRunnerDescription *) nil_chk(fDescription_)) getDisplayName];
}

- (OrgJunitRunnerDescription *)getDescription {
  return fDescription_;
}

- (JavaLangThrowable *)getException {
  return fThrownException_;
}

- (NSString *)description {
  JavaLangStringBuffer *buffer = [[[JavaLangStringBuffer alloc] init] autorelease];
  [buffer appendWithNSString:[NSString stringWithFormat:@"%@: %@", [self getTestHeader], [((JavaLangThrowable *) nil_chk(fThrownException_)) getMessage]]];
  return [buffer description];
}

- (NSString *)getTrace {
  JavaIoStringWriter *stringWriter = [[[JavaIoStringWriter alloc] init] autorelease];
  JavaIoPrintWriter *writer = [[[JavaIoPrintWriter alloc] initWithJavaIoWriter:stringWriter] autorelease];
  [((JavaLangThrowable *) nil_chk([self getException])) printStackTraceWithJavaIoPrintWriter:writer];
  JavaLangStringBuffer *buffer = [stringWriter getBuffer];
  return [((JavaLangStringBuffer *) nil_chk(buffer)) description];
}

- (NSString *)getMessage {
  return [((JavaLangThrowable *) nil_chk([self getException])) getMessage];
}

- (void)dealloc {
  OrgJunitRunnerNotificationFailure_set_fThrownException_(self, nil);
  OrgJunitRunnerNotificationFailure_set_fDescription_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgJunitRunnerNotificationFailure *)other {
  [super copyAllFieldsTo:other];
  OrgJunitRunnerNotificationFailure_set_fDescription_(other, fDescription_);
  OrgJunitRunnerNotificationFailure_set_fThrownException_(other, fThrownException_);
}

@end
