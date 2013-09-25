//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/org/junit/internal/builders/AnnotatedBuilder.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/Exception.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/reflect/Constructor.h"
#include "org/junit/internal/builders/AnnotatedBuilder.h"
#include "org/junit/runner/RunWith.h"
#include "org/junit/runner/Runner.h"
#include "org/junit/runners/model/InitializationError.h"
#include "org/junit/runners/model/RunnerBuilder.h"

@implementation OrgJunitInternalBuildersAnnotatedBuilder

static NSString * OrgJunitInternalBuildersAnnotatedBuilder_CONSTRUCTOR_ERROR_FORMAT_ = @"Custom runner class %s should have a public constructor with signature %s(Class testClass)";

+ (NSString *)CONSTRUCTOR_ERROR_FORMAT {
  return OrgJunitInternalBuildersAnnotatedBuilder_CONSTRUCTOR_ERROR_FORMAT_;
}

- (id)initWithOrgJunitRunnersModelRunnerBuilder:(OrgJunitRunnersModelRunnerBuilder *)suiteBuilder {
  if (self = [super init]) {
    OrgJunitInternalBuildersAnnotatedBuilder_set_fSuiteBuilder_(self, suiteBuilder);
  }
  return self;
}

- (OrgJunitRunnerRunner *)runnerForClassWithIOSClass:(IOSClass *)testClass {
  id<OrgJunitRunnerRunWith> annotation = [((IOSClass *) nil_chk(testClass)) getAnnotationWithIOSClass:[IOSClass classWithProtocol:@protocol(OrgJunitRunnerRunWith)]];
  if (annotation != nil) return [self buildRunnerWithIOSClass:[annotation value] withIOSClass:testClass];
  return nil;
}

+ (IOSObjectArray *)__exceptions_runnerForClassWithIOSClass_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangException getClass] } count:1 type:[IOSClass getClass]];
}

- (OrgJunitRunnerRunner *)buildRunnerWithIOSClass:(IOSClass *)runnerClass
                                     withIOSClass:(IOSClass *)testClass {
  @try {
    return [((JavaLangReflectConstructor *) nil_chk([((IOSClass *) nil_chk(runnerClass)) getConstructor:[IOSObjectArray arrayWithObjects:(id[]){ [IOSClass classWithClass:[IOSClass class]] } count:1 type:[IOSClass classWithClass:[IOSClass class]]]])) newInstanceWithNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ testClass } count:1 type:[IOSClass classWithClass:[NSObject class]]]];
  }
  @catch (JavaLangNoSuchMethodException *e) {
    @try {
      return [((JavaLangReflectConstructor *) nil_chk([((IOSClass *) nil_chk(runnerClass)) getConstructor:[IOSObjectArray arrayWithObjects:(id[]){ [IOSClass classWithClass:[IOSClass class]], [IOSClass classWithClass:[OrgJunitRunnersModelRunnerBuilder class]] } count:2 type:[IOSClass classWithClass:[IOSClass class]]]])) newInstanceWithNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ testClass, fSuiteBuilder_ } count:2 type:[IOSClass classWithClass:[NSObject class]]]];
    }
    @catch (JavaLangNoSuchMethodException *e2) {
      NSString *simpleName = [((IOSClass *) nil_chk(runnerClass)) getSimpleName];
      @throw [[[OrgJunitRunnersModelInitializationError alloc] initWithNSString:[NSString stringWithFormat:OrgJunitInternalBuildersAnnotatedBuilder_CONSTRUCTOR_ERROR_FORMAT_ , simpleName, simpleName, nil]] autorelease];
    }
  }
}

+ (IOSObjectArray *)__exceptions_buildRunnerWithIOSClass_withIOSClass_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)dealloc {
  OrgJunitInternalBuildersAnnotatedBuilder_set_fSuiteBuilder_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgJunitInternalBuildersAnnotatedBuilder *)other {
  [super copyAllFieldsTo:other];
  OrgJunitInternalBuildersAnnotatedBuilder_set_fSuiteBuilder_(other, fSuiteBuilder_);
}

@end
