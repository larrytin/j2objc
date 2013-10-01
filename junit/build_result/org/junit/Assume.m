//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSObjectArray.h"
#include "java/lang/Boolean.h"
#include "java/lang/Throwable.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "org/hamcrest/CoreMatchers.h"
#include "org/hamcrest/Matcher.h"
#include "org/junit/Assume.h"
#include "org/junit/internal/AssumptionViolatedException.h"
#include "org/junit/internal/matchers/Each.h"

@implementation OrgJunitAssume

+ (void)assumeTrueWithBoolean:(BOOL)b {
  [OrgJunitAssume assumeThatWithId:[JavaLangBoolean valueOfWithBoolean:b] withOrgHamcrestMatcher:[OrgHamcrestCoreMatchers isWithId:[JavaLangBoolean valueOfWithBoolean:YES]]];
}

+ (void)assumeNotNullWithNSObjectArray:(IOSObjectArray *)objects {
  [OrgJunitAssume assumeThatWithId:[JavaUtilArrays asListWithNSObjectArray:objects] withOrgHamcrestMatcher:[OrgJunitInternalMatchersEach eachWithOrgHamcrestMatcher:[OrgHamcrestCoreMatchers notNullValue]]];
}

+ (void)assumeThatWithId:(id)actual
  withOrgHamcrestMatcher:(id<OrgHamcrestMatcher>)matcher {
  if (![((id<OrgHamcrestMatcher>) nil_chk(matcher)) matchesWithId:actual]) @throw [[[OrgJunitInternalAssumptionViolatedException alloc] initWithId:actual withOrgHamcrestMatcher:matcher] autorelease];
}

+ (void)assumeNoExceptionWithJavaLangThrowable:(JavaLangThrowable *)t {
  [OrgJunitAssume assumeThatWithId:t withOrgHamcrestMatcher:[OrgHamcrestCoreMatchers nullValue]];
}

- (id)init {
  return [super init];
}

@end
