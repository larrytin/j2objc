//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/AssertionError.java
//
//  Created by retechretech on 13-9-4.
//

#include "java/lang/AssertionError.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Throwable.h"

@implementation JavaLangAssertionError

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (id)initJavaLangAssertionErrorWithId:(id)detailMessage {
  return JreMemDebugAdd([super initWithNSString:[NSString valueOf:detailMessage] withJavaLangThrowable:([detailMessage isKindOfClass:[JavaLangThrowable class]] ? (JavaLangThrowable *) detailMessage : nil)]);
}

- (id)initWithId:(id)detailMessage {
  return [self initJavaLangAssertionErrorWithId:detailMessage];
}

- (id)initWithBOOL:(BOOL)detailMessage {
  return JreMemDebugAdd([self initJavaLangAssertionErrorWithId:[NSString valueOfBool:detailMessage]]);
}

- (id)initWithUnichar:(unichar)detailMessage {
  return JreMemDebugAdd([self initJavaLangAssertionErrorWithId:[NSString valueOfChar:detailMessage]]);
}

- (id)initWithInt:(int)detailMessage {
  return JreMemDebugAdd([self initJavaLangAssertionErrorWithId:[JavaLangInteger toStringWithInt:detailMessage]]);
}

- (id)initWithLongInt:(long long int)detailMessage {
  return JreMemDebugAdd([self initJavaLangAssertionErrorWithId:[JavaLangLong toStringWithLongInt:detailMessage]]);
}

- (id)initWithFloat:(float)detailMessage {
  return JreMemDebugAdd([self initJavaLangAssertionErrorWithId:[JavaLangFloat toStringWithFloat:detailMessage]]);
}

- (id)initWithDouble:(double)detailMessage {
  return JreMemDebugAdd([self initJavaLangAssertionErrorWithId:[JavaLangDouble toStringWithDouble:detailMessage]]);
}

@end
