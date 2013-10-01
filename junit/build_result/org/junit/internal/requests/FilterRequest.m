//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "java/lang/Exception.h"
#include "org/junit/internal/requests/FilterRequest.h"
#include "org/junit/internal/runners/ErrorReportingRunner.h"
#include "org/junit/runner/Request.h"
#include "org/junit/runner/Runner.h"
#include "org/junit/runner/manipulation/Filter.h"
#include "org/junit/runner/manipulation/NoTestsRemainException.h"

@implementation OrgJunitInternalRequestsFilterRequest

- (id)initWithOrgJunitRunnerRequest:(OrgJunitRunnerRequest *)classRequest
withOrgJunitRunnerManipulationFilter:(OrgJunitRunnerManipulationFilter *)filter {
  if (self = [super init]) {
    OrgJunitInternalRequestsFilterRequest_set_fRequest_(self, classRequest);
    OrgJunitInternalRequestsFilterRequest_set_fFilter_(self, filter);
  }
  return self;
}

- (OrgJunitRunnerRunner *)getRunner {
  @try {
    OrgJunitRunnerRunner *runner = [((OrgJunitRunnerRequest *) nil_chk(fRequest_)) getRunner];
    [((OrgJunitRunnerManipulationFilter *) nil_chk(fFilter_)) applyWithId:runner];
    return runner;
  }
  @catch (OrgJunitRunnerManipulationNoTestsRemainException *e) {
    return [[[OrgJunitInternalRunnersErrorReportingRunner alloc] initWithIOSClass:[IOSClass classWithClass:[OrgJunitRunnerManipulationFilter class]] withJavaLangThrowable:[[[JavaLangException alloc] initWithNSString:[NSString stringWithFormat:@"No tests found matching %@ from %@" , [((OrgJunitRunnerManipulationFilter *) nil_chk(fFilter_)) describe], [((OrgJunitRunnerRequest *) nil_chk(fRequest_)) description], nil]] autorelease]] autorelease];
  }
}

- (void)dealloc {
  OrgJunitInternalRequestsFilterRequest_set_fFilter_(self, nil);
  OrgJunitInternalRequestsFilterRequest_set_fRequest_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgJunitInternalRequestsFilterRequest *)other {
  [super copyAllFieldsTo:other];
  OrgJunitInternalRequestsFilterRequest_set_fFilter_(other, fFilter_);
  OrgJunitInternalRequestsFilterRequest_set_fRequest_(other, fRequest_);
}

@end
