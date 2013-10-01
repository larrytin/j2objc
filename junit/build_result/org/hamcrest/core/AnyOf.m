//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/Iterable.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "org/hamcrest/Description.h"
#include "org/hamcrest/Factory.h"
#include "org/hamcrest/Matcher.h"
#include "org/hamcrest/core/AnyOf.h"

@implementation OrgHamcrestCoreAnyOf

- (id)initWithJavaLangIterable:(id<JavaLangIterable>)matchers {
  if (self = [super init]) {
    OrgHamcrestCoreAnyOf_set_matchers_(self, matchers);
  }
  return self;
}

- (BOOL)matchesWithId:(id)o {
  for (id<OrgHamcrestMatcher> __strong matcher in matchers_) {
    if ([((id<OrgHamcrestMatcher>) nil_chk(matcher)) matchesWithId:o]) {
      return YES;
    }
  }
  return NO;
}

- (void)describeToWithOrgHamcrestDescription:(id<OrgHamcrestDescription>)description_ {
  [((id<OrgHamcrestDescription>) nil_chk(description_)) appendListWithNSString:@"(" withNSString:@" or " withNSString:@")" withJavaLangIterable:matchers_];
}

+ (id<OrgHamcrestMatcher>)anyOfWithOrgHamcrestMatcherArray:(IOSObjectArray *)matchers {
  return [OrgHamcrestCoreAnyOf anyOfWithJavaLangIterable:[JavaUtilArrays asListWithNSObjectArray:matchers]];
}

+ (id<OrgHamcrestMatcher>)anyOfWithJavaLangIterable:(id<JavaLangIterable>)matchers {
  return [[[OrgHamcrestCoreAnyOf alloc] initWithJavaLangIterable:matchers] autorelease];
}

- (void)dealloc {
  OrgHamcrestCoreAnyOf_set_matchers_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgHamcrestCoreAnyOf *)other {
  [super copyAllFieldsTo:other];
  OrgHamcrestCoreAnyOf_set_matchers_(other, matchers_);
}

+ (IOSObjectArray *)__annotations_anyOfWithOrgHamcrestMatcherArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[OrgHamcrestFactoryImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_anyOfWithJavaLangIterable_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[OrgHamcrestFactoryImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

@end
