//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/ExceptionInInitializerError.java
//
//  Created by retechretech on 13-4-19.
//

#import "IOSClass.h"
#import "java/lang/ExceptionInInitializerError.h"
#import "java/lang/Throwable.h"

@implementation JavaLangExceptionInInitializerError

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaLangThrowable *)exception {
  return exception_;
}
- (void)setException:(JavaLangThrowable *)exception {
  JreOperatorRetainedAssign(&exception_, exception);
}
@synthesize exception = exception_;

- (id)init {
  if ((self = [super init])) {
    [self initCauseWithJavaLangThrowable:nil];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)detailMessage {
  if ((self = [super initWithNSString:detailMessage])) {
    [self initCauseWithJavaLangThrowable:nil];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaLangThrowable:(JavaLangThrowable *)exception {
  if ((self = [super init])) {
    self.exception = exception;
    [self initCauseWithJavaLangThrowable:exception];
    JreMemDebugAdd(self);
  }
  return self;
}

- (JavaLangThrowable *)getException {
  return exception_;
}

- (JavaLangThrowable *)getCause {
  return exception_;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&exception_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaLangExceptionInInitializerError *typedCopy = (JavaLangExceptionInInitializerError *) copy;
  typedCopy.exception = exception_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:exception_ name:@"exception"]];
  return result;
}

@end
