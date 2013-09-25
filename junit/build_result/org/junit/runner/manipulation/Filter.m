//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/org/junit/runner/manipulation/Filter.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "java/util/ArrayList.h"
#include "org/junit/runner/Description.h"
#include "org/junit/runner/manipulation/Filter.h"
#include "org/junit/runner/manipulation/Filterable.h"
#include "org/junit/runner/manipulation/NoTestsRemainException.h"

@implementation OrgJunitRunnerManipulationFilter

static OrgJunitRunnerManipulationFilter * OrgJunitRunnerManipulationFilter_ALL_;

+ (OrgJunitRunnerManipulationFilter *)ALL {
  return OrgJunitRunnerManipulationFilter_ALL_;
}

+ (void)setALL:(OrgJunitRunnerManipulationFilter *)ALL {
  JreOperatorRetainedAssign(&OrgJunitRunnerManipulationFilter_ALL_, nil, ALL);
}

+ (OrgJunitRunnerManipulationFilter *)matchMethodDescriptionWithOrgJunitRunnerDescription:(OrgJunitRunnerDescription *)desiredDescription {
  return [[[OrgJunitRunnerManipulationFilter_$2 alloc] initWithOrgJunitRunnerDescription:desiredDescription] autorelease];
}

- (BOOL)shouldRunWithOrgJunitRunnerDescription:(OrgJunitRunnerDescription *)description_ {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)describe {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)applyWithId:(id)child {
  if (!([child conformsToProtocol: @protocol(OrgJunitRunnerManipulationFilterable)])) return;
  id<OrgJunitRunnerManipulationFilterable> filterable = (id<OrgJunitRunnerManipulationFilterable>) check_protocol_cast(child, @protocol(OrgJunitRunnerManipulationFilterable));
  [((id<OrgJunitRunnerManipulationFilterable>) nil_chk(filterable)) filterWithOrgJunitRunnerManipulationFilter:self];
}

+ (IOSObjectArray *)__exceptions_applyWithId_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgJunitRunnerManipulationNoTestsRemainException getClass] } count:1 type:[IOSClass getClass]];
}

- (OrgJunitRunnerManipulationFilter *)intersectWithOrgJunitRunnerManipulationFilter:(OrgJunitRunnerManipulationFilter *)second {
  if (second == self || second == OrgJunitRunnerManipulationFilter_ALL_) {
    return self;
  }
  OrgJunitRunnerManipulationFilter *first = self;
  return [[[OrgJunitRunnerManipulationFilter_$3 alloc] initWithOrgJunitRunnerManipulationFilter:first withOrgJunitRunnerManipulationFilter:second] autorelease];
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [OrgJunitRunnerManipulationFilter class]) {
    JreOperatorRetainedAssign(&OrgJunitRunnerManipulationFilter_ALL_, nil, [[[OrgJunitRunnerManipulationFilter_$1 alloc] init] autorelease]);
  }
}

@end
@implementation OrgJunitRunnerManipulationFilter_$1

- (BOOL)shouldRunWithOrgJunitRunnerDescription:(OrgJunitRunnerDescription *)description_ {
  return YES;
}

- (NSString *)describe {
  return @"all tests";
}

- (void)applyWithId:(id)child {
}

+ (IOSObjectArray *)__exceptions_applyWithId_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgJunitRunnerManipulationNoTestsRemainException getClass] } count:1 type:[IOSClass getClass]];
}

- (OrgJunitRunnerManipulationFilter *)intersectWithOrgJunitRunnerManipulationFilter:(OrgJunitRunnerManipulationFilter *)second {
  return second;
}

- (id)init {
  return [super init];
}

@end
@implementation OrgJunitRunnerManipulationFilter_$2

- (BOOL)shouldRunWithOrgJunitRunnerDescription:(OrgJunitRunnerDescription *)description_ {
  if ([((OrgJunitRunnerDescription *) nil_chk(description_)) isTest]) return [((OrgJunitRunnerDescription *) nil_chk(val$desiredDescription_)) isEqual:description_];
  for (OrgJunitRunnerDescription * __strong each in [description_ getChildren]) if ([self shouldRunWithOrgJunitRunnerDescription:each]) return YES;
  return NO;
}

- (NSString *)describe {
  return [NSString stringWithFormat:@"Method %@" , [((OrgJunitRunnerDescription *) nil_chk(val$desiredDescription_)) getDisplayName], nil];
}

- (id)initWithOrgJunitRunnerDescription:(OrgJunitRunnerDescription *)capture$0 {
  OrgJunitRunnerManipulationFilter_$2_set_val$desiredDescription_(self, capture$0);
  return [super init];
}

- (void)dealloc {
  OrgJunitRunnerManipulationFilter_$2_set_val$desiredDescription_(self, nil);
  [super dealloc];
}

@end
@implementation OrgJunitRunnerManipulationFilter_$3

- (BOOL)shouldRunWithOrgJunitRunnerDescription:(OrgJunitRunnerDescription *)description_ {
  return [((OrgJunitRunnerManipulationFilter *) nil_chk(val$first_)) shouldRunWithOrgJunitRunnerDescription:description_] && [((OrgJunitRunnerManipulationFilter *) nil_chk(val$second_)) shouldRunWithOrgJunitRunnerDescription:description_];
}

- (NSString *)describe {
  return [NSString stringWithFormat:@"%@ and %@", [((OrgJunitRunnerManipulationFilter *) nil_chk(val$first_)) describe], [((OrgJunitRunnerManipulationFilter *) nil_chk(val$second_)) describe]];
}

- (id)initWithOrgJunitRunnerManipulationFilter:(OrgJunitRunnerManipulationFilter *)capture$0
          withOrgJunitRunnerManipulationFilter:(OrgJunitRunnerManipulationFilter *)capture$1 {
  OrgJunitRunnerManipulationFilter_$3_set_val$first_(self, capture$0);
  OrgJunitRunnerManipulationFilter_$3_set_val$second_(self, capture$1);
  return [super init];
}

- (void)dealloc {
  OrgJunitRunnerManipulationFilter_$3_set_val$second_(self, nil);
  OrgJunitRunnerManipulationFilter_$3_set_val$first_(self, nil);
  [super dealloc];
}

@end
