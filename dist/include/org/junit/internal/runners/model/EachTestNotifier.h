//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/org/junit/internal/runners/model/EachTestNotifier.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _OrgJunitInternalRunnersModelEachTestNotifier_H_
#define _OrgJunitInternalRunnersModelEachTestNotifier_H_

@class JavaLangThrowable;
@class OrgJunitInternalAssumptionViolatedException;
@class OrgJunitRunnerDescription;
@class OrgJunitRunnerNotificationRunNotifier;
@class OrgJunitRunnersModelMultipleFailureException;

#import "JreEmulation.h"

@interface OrgJunitInternalRunnersModelEachTestNotifier : NSObject {
 @public
  OrgJunitRunnerNotificationRunNotifier *fNotifier_;
  OrgJunitRunnerDescription *fDescription_;
}

- (id)initWithOrgJunitRunnerNotificationRunNotifier:(OrgJunitRunnerNotificationRunNotifier *)notifier
                      withOrgJunitRunnerDescription:(OrgJunitRunnerDescription *)description_;
- (void)addFailureWithJavaLangThrowable:(JavaLangThrowable *)targetException;
- (void)addMultipleFailureExceptionWithOrgJunitRunnersModelMultipleFailureException:(OrgJunitRunnersModelMultipleFailureException *)mfe;
- (void)addFailedAssumptionWithOrgJunitInternalAssumptionViolatedException:(OrgJunitInternalAssumptionViolatedException *)e;
- (void)fireTestFinished;
- (void)fireTestStarted;
- (void)fireTestIgnored;
- (void)copyAllFieldsTo:(OrgJunitInternalRunnersModelEachTestNotifier *)other;
@end

J2OBJC_FIELD_SETTER(OrgJunitInternalRunnersModelEachTestNotifier, fNotifier_, OrgJunitRunnerNotificationRunNotifier *)
J2OBJC_FIELD_SETTER(OrgJunitInternalRunnersModelEachTestNotifier, fDescription_, OrgJunitRunnerDescription *)

#endif // _OrgJunitInternalRunnersModelEachTestNotifier_H_
