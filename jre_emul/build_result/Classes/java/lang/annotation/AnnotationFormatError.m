//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/lang/annotation/AnnotationFormatError.java
//
//  Created by retechretech on 13-9-25.
//

#include "java/lang/Throwable.h"
#include "java/lang/annotation/AnnotationFormatError.h"

@implementation JavaLangAnnotationAnnotationFormatError

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithNSString:(NSString *)message {
  return JreMemDebugAdd([super initWithNSString:message]);
}

- (id)initWithNSString:(NSString *)message
 withJavaLangThrowable:(JavaLangThrowable *)cause {
  return JreMemDebugAdd([super initWithNSString:message withJavaLangThrowable:cause]);
}

- (id)initWithJavaLangThrowable:(JavaLangThrowable *)cause {
  return JreMemDebugAdd([super initWithNSString:cause == nil ? nil : [cause description] withJavaLangThrowable:cause]);
}

@end
