//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "java/util/Comparator.h"
#include "org/junit/internal/requests/SortingRequest.h"
#include "org/junit/runner/Request.h"
#include "org/junit/runner/Runner.h"
#include "org/junit/runner/manipulation/Sorter.h"

@implementation OrgJunitInternalRequestsSortingRequest

- (id)initWithOrgJunitRunnerRequest:(OrgJunitRunnerRequest *)request
             withJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  if (self = [super init]) {
    OrgJunitInternalRequestsSortingRequest_set_fRequest_(self, request);
    OrgJunitInternalRequestsSortingRequest_set_fComparator_(self, comparator);
  }
  return self;
}

- (OrgJunitRunnerRunner *)getRunner {
  OrgJunitRunnerRunner *runner = [((OrgJunitRunnerRequest *) nil_chk(fRequest_)) getRunner];
  [((OrgJunitRunnerManipulationSorter *) [[[OrgJunitRunnerManipulationSorter alloc] initWithJavaUtilComparator:fComparator_] autorelease]) applyWithId:runner];
  return runner;
}

- (void)dealloc {
  OrgJunitInternalRequestsSortingRequest_set_fComparator_(self, nil);
  OrgJunitInternalRequestsSortingRequest_set_fRequest_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgJunitInternalRequestsSortingRequest *)other {
  [super copyAllFieldsTo:other];
  OrgJunitInternalRequestsSortingRequest_set_fComparator_(other, fComparator_);
  OrgJunitInternalRequestsSortingRequest_set_fRequest_(other, fRequest_);
}

@end
