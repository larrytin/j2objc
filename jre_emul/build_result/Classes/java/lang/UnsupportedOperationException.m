//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/UnsupportedOperationException.java
//
//  Created by retechretech on 13-4-19.
//

#import "java/lang/Throwable.h"
#import "java/lang/UnsupportedOperationException.h"

@implementation JavaLangUnsupportedOperationException

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (id)initWithNSString:(NSString *)detailMessage {
  return JreMemDebugAdd([super initWithNSString:detailMessage]);
}

- (id)initWithNSString:(NSString *)message
 withJavaLangThrowable:(JavaLangThrowable *)cause {
  return JreMemDebugAdd([super initWithNSString:message withJavaLangThrowable:cause]);
}

- (id)initWithJavaLangThrowable:(JavaLangThrowable *)cause {
  return JreMemDebugAdd([super initWithNSString:(cause == nil ? nil : [((JavaLangThrowable *) NIL_CHK(cause)) description]) withJavaLangThrowable:cause]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
