//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/Void.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSClass.h"
#include "java/lang/Void.h"

@implementation JavaLangVoid

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangVoid_TYPE_ name:@"JavaLangVoid_TYPE_"]];
  return result;
}

static IOSClass * JavaLangVoid_TYPE_;

+ (IOSClass *)TYPE {
  return JavaLangVoid_TYPE_;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (void)initialize {
  if (self == [JavaLangVoid class]) {
    JreOperatorRetainedAssign(&JavaLangVoid_TYPE_, nil, [IOSClass classWithClass:[JavaLangVoid class]]);
  }
}

@end
