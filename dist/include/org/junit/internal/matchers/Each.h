//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/org/junit/internal/matchers/Each.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _OrgJunitInternalMatchersEach_H_
#define _OrgJunitInternalMatchersEach_H_

@protocol OrgHamcrestDescription;
@protocol OrgHamcrestMatcher;

#import "JreEmulation.h"
#include "org/hamcrest/BaseMatcher.h"

@interface OrgJunitInternalMatchersEach : NSObject {
}

+ (id<OrgHamcrestMatcher>)eachWithOrgHamcrestMatcher:(id<OrgHamcrestMatcher>)individual;
- (id)init;
@end

@interface OrgJunitInternalMatchersEach_$1 : OrgHamcrestBaseMatcher {
 @public
  id<OrgHamcrestMatcher> val$allItemsAre_;
  id<OrgHamcrestMatcher> val$individual_;
}

- (BOOL)matchesWithId:(id)item;
- (void)describeToWithOrgHamcrestDescription:(id<OrgHamcrestDescription>)description_;
- (id)initWithOrgHamcrestMatcher:(id<OrgHamcrestMatcher>)capture$0
          withOrgHamcrestMatcher:(id<OrgHamcrestMatcher>)capture$1;
@end

J2OBJC_FIELD_SETTER(OrgJunitInternalMatchersEach_$1, val$allItemsAre_, id<OrgHamcrestMatcher>)
J2OBJC_FIELD_SETTER(OrgJunitInternalMatchersEach_$1, val$individual_, id<OrgHamcrestMatcher>)

#endif // _OrgJunitInternalMatchersEach_H_
