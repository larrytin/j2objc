//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/org/junit/runners/model/RunnerBuilder.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/junit/internal/runners/ErrorReportingRunner.h"
#include "org/junit/runner/Runner.h"
#include "org/junit/runners/model/InitializationError.h"
#include "org/junit/runners/model/RunnerBuilder.h"

@implementation OrgJunitRunnersModelRunnerBuilder

- (OrgJunitRunnerRunner *)runnerForClassWithIOSClass:(IOSClass *)testClass {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (IOSObjectArray *)__exceptions_runnerForClassWithIOSClass_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangThrowable getClass] } count:1 type:[IOSClass getClass]];
}

- (OrgJunitRunnerRunner *)safeRunnerForClassWithIOSClass:(IOSClass *)testClass {
  @try {
    return [self runnerForClassWithIOSClass:testClass];
  }
  @catch (JavaLangThrowable *e) {
    return [[[OrgJunitInternalRunnersErrorReportingRunner alloc] initWithIOSClass:testClass withJavaLangThrowable:e] autorelease];
  }
}

- (IOSClass *)addParentWithIOSClass:(IOSClass *)parent {
  if (![((id<JavaUtilSet>) nil_chk(parents_)) addWithId:parent]) @throw [[[OrgJunitRunnersModelInitializationError alloc] initWithNSString:[NSString stringWithFormat:@"class '%@' (possibly indirectly) contains itself as a SuiteClass" , [((IOSClass *) nil_chk(parent)) getName], nil]] autorelease];
  return parent;
}

+ (IOSObjectArray *)__exceptions_addParentWithIOSClass_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgJunitRunnersModelInitializationError getClass] } count:1 type:[IOSClass getClass]];
}

- (void)removeParentWithIOSClass:(IOSClass *)klass {
  [((id<JavaUtilSet>) nil_chk(parents_)) removeWithId:klass];
}

- (id<JavaUtilList>)runnersWithIOSClass:(IOSClass *)parent
                      withIOSClassArray:(IOSObjectArray *)children {
  [self addParentWithIOSClass:parent];
  @try {
    return [self runnersWithIOSClassArray:children];
  }
  @finally {
    [self removeParentWithIOSClass:parent];
  }
}

+ (IOSObjectArray *)__exceptions_runnersWithIOSClass_withIOSClassArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgJunitRunnersModelInitializationError getClass] } count:1 type:[IOSClass getClass]];
}

- (id<JavaUtilList>)runnersWithIOSClass:(IOSClass *)parent
                       withJavaUtilList:(id<JavaUtilList>)children {
  return [self runnersWithIOSClass:parent withIOSClassArray:[((id<JavaUtilList>) nil_chk(children)) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[IOSClass class]]]]];
}

+ (IOSObjectArray *)__exceptions_runnersWithIOSClass_withJavaUtilList_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgJunitRunnersModelInitializationError getClass] } count:1 type:[IOSClass getClass]];
}

- (id<JavaUtilList>)runnersWithIOSClassArray:(IOSObjectArray *)children {
  JavaUtilArrayList *runners = [[[JavaUtilArrayList alloc] init] autorelease];
  {
    IOSObjectArray *a__ = children;
    id const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      IOSClass *each = (*b__++);
      OrgJunitRunnerRunner *childRunner = [self safeRunnerForClassWithIOSClass:each];
      if (childRunner != nil) [runners addWithId:childRunner];
    }
  }
  return runners;
}

- (id)init {
  if (self = [super init]) {
    OrgJunitRunnersModelRunnerBuilder_set_parents_(self, [[[JavaUtilHashSet alloc] init] autorelease]);
  }
  return self;
}

- (void)dealloc {
  OrgJunitRunnersModelRunnerBuilder_set_parents_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgJunitRunnersModelRunnerBuilder *)other {
  [super copyAllFieldsTo:other];
  OrgJunitRunnersModelRunnerBuilder_set_parents_(other, parents_);
}

@end
