//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/org/junit/internal/runners/statements/InvokeMethod.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _OrgJunitInternalRunnersStatementsInvokeMethod_H_
#define _OrgJunitInternalRunnersStatementsInvokeMethod_H_

@class OrgJunitRunnersModelFrameworkMethod;

#import "JreEmulation.h"
#include "org/junit/runners/model/Statement.h"

@interface OrgJunitInternalRunnersStatementsInvokeMethod : OrgJunitRunnersModelStatement {
 @public
  OrgJunitRunnersModelFrameworkMethod *fTestMethod_;
  id fTarget_;
}

- (id)initWithOrgJunitRunnersModelFrameworkMethod:(OrgJunitRunnersModelFrameworkMethod *)testMethod
                                           withId:(id)target;
- (void)evaluate;
- (void)copyAllFieldsTo:(OrgJunitInternalRunnersStatementsInvokeMethod *)other;
@end

J2OBJC_FIELD_SETTER(OrgJunitInternalRunnersStatementsInvokeMethod, fTestMethod_, OrgJunitRunnersModelFrameworkMethod *)
J2OBJC_FIELD_SETTER(OrgJunitInternalRunnersStatementsInvokeMethod, fTarget_, id)

#endif // _OrgJunitInternalRunnersStatementsInvokeMethod_H_
