//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/org/junit/internal/runners/statements/Fail.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "java/lang/Throwable.h"
#include "org/junit/internal/runners/statements/Fail.h"

@implementation OrgJunitInternalRunnersStatementsFail

- (id)initWithJavaLangThrowable:(JavaLangThrowable *)e {
  if (self = [super init]) {
    OrgJunitInternalRunnersStatementsFail_set_fError_(self, e);
  }
  return self;
}

- (void)evaluate {
  @throw fError_;
}

+ (IOSObjectArray *)__exceptions_evaluate {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangThrowable getClass] } count:1 type:[IOSClass getClass]];
}

- (void)dealloc {
  OrgJunitInternalRunnersStatementsFail_set_fError_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgJunitInternalRunnersStatementsFail *)other {
  [super copyAllFieldsTo:other];
  OrgJunitInternalRunnersStatementsFail_set_fError_(other, fError_);
}

@end
