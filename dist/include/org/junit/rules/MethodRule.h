//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/org/junit/rules/MethodRule.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _OrgJunitRulesMethodRule_H_
#define _OrgJunitRulesMethodRule_H_

@class OrgJunitRunnersModelFrameworkMethod;
@class OrgJunitRunnersModelStatement;

#import "JreEmulation.h"

@protocol OrgJunitRulesMethodRule < NSObject, JavaObject >
- (OrgJunitRunnersModelStatement *)applyWithOrgJunitRunnersModelStatement:(OrgJunitRunnersModelStatement *)base
                                  withOrgJunitRunnersModelFrameworkMethod:(OrgJunitRunnersModelFrameworkMethod *)method
                                                                   withId:(id)target;
@end

#endif // _OrgJunitRulesMethodRule_H_
