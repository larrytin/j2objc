//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/Throwable.h"
#include "org/junit/internal/runners/statements/InvokeMethod.h"
#include "org/junit/runners/model/FrameworkMethod.h"

@implementation OrgJunitInternalRunnersStatementsInvokeMethod

- (id)initWithOrgJunitRunnersModelFrameworkMethod:(OrgJunitRunnersModelFrameworkMethod *)testMethod
                                           withId:(id)target {
  if (self = [super init]) {
    OrgJunitInternalRunnersStatementsInvokeMethod_set_fTestMethod_(self, testMethod);
    OrgJunitInternalRunnersStatementsInvokeMethod_set_fTarget_(self, target);
  }
  return self;
}

- (void)evaluate {
  [((OrgJunitRunnersModelFrameworkMethod *) nil_chk(fTestMethod_)) invokeExplosivelyWithId:fTarget_ withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]];
}

+ (IOSObjectArray *)__exceptions_evaluate {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangThrowable getClass] } count:1 type:[IOSClass getClass]];
}

- (void)dealloc {
  OrgJunitInternalRunnersStatementsInvokeMethod_set_fTarget_(self, nil);
  OrgJunitInternalRunnersStatementsInvokeMethod_set_fTestMethod_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgJunitInternalRunnersStatementsInvokeMethod *)other {
  [super copyAllFieldsTo:other];
  OrgJunitInternalRunnersStatementsInvokeMethod_set_fTarget_(other, fTarget_);
  OrgJunitInternalRunnersStatementsInvokeMethod_set_fTestMethod_(other, fTestMethod_);
}

@end
