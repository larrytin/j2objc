//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/util/EmptyArray.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSBooleanArray.h"
#include "IOSByteArray.h"
#include "IOSCharArray.h"
#include "IOSClass.h"
#include "IOSDoubleArray.h"
#include "IOSIntArray.h"
#include "IOSObjectArray.h"
#include "java/lang/StackTraceElement.h"
#include "java/lang/Throwable.h"
#include "libcore/util/EmptyArray.h"

@implementation LibcoreUtilEmptyArray

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:LibcoreUtilEmptyArray_BOOLEAN_ name:@"LibcoreUtilEmptyArray_BOOLEAN_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:LibcoreUtilEmptyArray_BYTE_ name:@"LibcoreUtilEmptyArray_BYTE_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:LibcoreUtilEmptyArray_CHAR_ name:@"LibcoreUtilEmptyArray_CHAR_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:LibcoreUtilEmptyArray_DOUBLE_ name:@"LibcoreUtilEmptyArray_DOUBLE_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:LibcoreUtilEmptyArray_INT_ name:@"LibcoreUtilEmptyArray_INT_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:LibcoreUtilEmptyArray_CLASS_ name:@"LibcoreUtilEmptyArray_CLASS_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:LibcoreUtilEmptyArray_OBJECT_ name:@"LibcoreUtilEmptyArray_OBJECT_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:LibcoreUtilEmptyArray_STRING_ name:@"LibcoreUtilEmptyArray_STRING_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:LibcoreUtilEmptyArray_THROWABLE_ name:@"LibcoreUtilEmptyArray_THROWABLE_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:LibcoreUtilEmptyArray_STACK_TRACE_ELEMENT_ name:@"LibcoreUtilEmptyArray_STACK_TRACE_ELEMENT_"]];
  return result;
}

static IOSBooleanArray * LibcoreUtilEmptyArray_BOOLEAN_;
static IOSByteArray * LibcoreUtilEmptyArray_BYTE_;
static IOSCharArray * LibcoreUtilEmptyArray_CHAR_;
static IOSDoubleArray * LibcoreUtilEmptyArray_DOUBLE_;
static IOSIntArray * LibcoreUtilEmptyArray_INT_;
static IOSObjectArray * LibcoreUtilEmptyArray_CLASS_;
static IOSObjectArray * LibcoreUtilEmptyArray_OBJECT_;
static IOSObjectArray * LibcoreUtilEmptyArray_STRING_;
static IOSObjectArray * LibcoreUtilEmptyArray_THROWABLE_;
static IOSObjectArray * LibcoreUtilEmptyArray_STACK_TRACE_ELEMENT_;

+ (IOSBooleanArray *)BOOLEAN {
  return LibcoreUtilEmptyArray_BOOLEAN_;
}

+ (IOSByteArray *)BYTE {
  return LibcoreUtilEmptyArray_BYTE_;
}

+ (IOSCharArray *)CHAR {
  return LibcoreUtilEmptyArray_CHAR_;
}

+ (IOSDoubleArray *)DOUBLE {
  return LibcoreUtilEmptyArray_DOUBLE_;
}

+ (IOSIntArray *)INT {
  return LibcoreUtilEmptyArray_INT_;
}

+ (IOSObjectArray *)CLASS {
  return LibcoreUtilEmptyArray_CLASS_;
}

+ (IOSObjectArray *)OBJECT {
  return LibcoreUtilEmptyArray_OBJECT_;
}

+ (IOSObjectArray *)STRING {
  return LibcoreUtilEmptyArray_STRING_;
}

+ (IOSObjectArray *)THROWABLE {
  return LibcoreUtilEmptyArray_THROWABLE_;
}

+ (IOSObjectArray *)STACK_TRACE_ELEMENT {
  return LibcoreUtilEmptyArray_STACK_TRACE_ELEMENT_;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (void)initialize {
  if (self == [LibcoreUtilEmptyArray class]) {
    JreOperatorRetainedAssign(&LibcoreUtilEmptyArray_BOOLEAN_, nil, [IOSBooleanArray arrayWithLength:0]);
    JreOperatorRetainedAssign(&LibcoreUtilEmptyArray_BYTE_, nil, [IOSByteArray arrayWithLength:0]);
    JreOperatorRetainedAssign(&LibcoreUtilEmptyArray_CHAR_, nil, [IOSCharArray arrayWithLength:0]);
    JreOperatorRetainedAssign(&LibcoreUtilEmptyArray_DOUBLE_, nil, [IOSDoubleArray arrayWithLength:0]);
    JreOperatorRetainedAssign(&LibcoreUtilEmptyArray_INT_, nil, [IOSIntArray arrayWithLength:0]);
    JreOperatorRetainedAssign(&LibcoreUtilEmptyArray_CLASS_, nil, [IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[IOSClass class]]]);
    JreOperatorRetainedAssign(&LibcoreUtilEmptyArray_OBJECT_, nil, [IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]);
    JreOperatorRetainedAssign(&LibcoreUtilEmptyArray_STRING_, nil, [IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSString class]]]);
    JreOperatorRetainedAssign(&LibcoreUtilEmptyArray_THROWABLE_, nil, [IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[JavaLangThrowable class]]]);
    JreOperatorRetainedAssign(&LibcoreUtilEmptyArray_STACK_TRACE_ELEMENT_, nil, [IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[JavaLangStackTraceElement class]]]);
  }
}

@end
