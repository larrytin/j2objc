//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/Float.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "IOSFloatArray.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/NumberFormatException.h"
#import "java/lang/NumberFormatException.h"

// From apache-harmony/classlib/modules/luni/src/main/native/luni/shared/floatbits.c
#define SINGLE_EXPONENT_MASK    0x7F800000
#define SINGLE_MANTISSA_MASK    0x007FFFFF
#define SINGLE_NAN_BITS         (SINGLE_EXPONENT_MASK | 0x00400000)

@implementation JavaLangFloat

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangFloat_TYPE_ name:@"JavaLangFloat_TYPE_"]];
  return result;
}

static IOSClass * JavaLangFloat_TYPE_;

+ (int)EXPONENT_BIAS {
  return JavaLangFloat_EXPONENT_BIAS;
}

+ (int)EXPONENT_BITS {
  return JavaLangFloat_EXPONENT_BITS;
}

+ (int)MANTISSA_BITS {
  return JavaLangFloat_MANTISSA_BITS;
}

+ (int)NON_MANTISSA_BITS {
  return JavaLangFloat_NON_MANTISSA_BITS;
}

+ (int)SIGN_MASK {
  return JavaLangFloat_SIGN_MASK;
}

+ (int)EXPONENT_MASK {
  return JavaLangFloat_EXPONENT_MASK;
}

+ (int)MANTISSA_MASK {
  return JavaLangFloat_MANTISSA_MASK;
}

+ (float)MAX_VALUE {
  return JavaLangFloat_MAX_VALUE;
}

+ (float)MIN_VALUE {
  return JavaLangFloat_MIN_VALUE;
}

+ (float)NaN {
  return JavaLangFloat_NaN;
}

+ (float)POSITIVE_INFINITY {
  return JavaLangFloat_POSITIVE_INFINITY;
}

+ (float)NEGATIVE_INFINITY {
  return JavaLangFloat_NEGATIVE_INFINITY;
}

+ (int)MAX_EXPONENT {
  return JavaLangFloat_MAX_EXPONENT;
}

+ (int)MIN_EXPONENT {
  return JavaLangFloat_MIN_EXPONENT;
}

+ (IOSClass *)TYPE {
  return JavaLangFloat_TYPE_;
}

+ (int)SIZE {
  return JavaLangFloat_SIZE;
}

- (id)initJavaLangFloatWithFloat:(float)value {
  if (self = [super init]) {
    self->value_ = value;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithFloat:(float)value {
  return [self initJavaLangFloatWithFloat:value];
}

- (id)initWithDouble:(double)value {
  if (self = [super init]) {
    self->value_ = (float) value;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)string {
  return JreMemDebugAdd([self initJavaLangFloatWithFloat:[JavaLangFloat parseFloatWithNSString:string]]);
}

+ (IOSObjectArray *)__exceptions_JavaLangFloatWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangNumberFormatException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)compareToWithId:(JavaLangFloat *)object {
  if (object != nil && ![object isKindOfClass:[JavaLangFloat class]]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  if (object == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  return [JavaLangFloat compareWithFloat:value_ withFloat:((JavaLangFloat *) nil_chk(object))->value_];
}

- (char)byteValue {
  return (char) value_;
}

- (double)doubleValue {
  return value_;
}

- (BOOL)isEqual:(id)object {
  if (!object || ![object isKindOfClass:[JavaLangFloat class]]) {
    return NO;
  }
  NSComparisonResult result = [self compare:object];
  return result == NSOrderedSame;
}

+ (int)floatToIntBitsWithFloat:(float)value {
  // Modified from Harmony JNI implementation.
  int intValue = *(int *) &value;
  if ((intValue & SINGLE_EXPONENT_MASK) == SINGLE_EXPONENT_MASK) {
    if (intValue & SINGLE_MANTISSA_MASK) {
      return SINGLE_NAN_BITS;
    }
  }
  return intValue;
}

+ (int)floatToRawIntBitsWithFloat:(float)value {
  return *(int *) &value;
}

- (float)floatValue {
  return value_;
}

- (NSUInteger)hash {
  return [JavaLangFloat floatToIntBitsWithFloat:value_];
}

+ (float)intBitsToFloatWithInt:(int)bits {
  return *(float *) &bits;
}

- (int)intValue {
  return (int) value_;
}

- (BOOL)isInfinite {
  return [JavaLangFloat isInfiniteWithFloat:value_];
}

+ (BOOL)isInfiniteWithFloat:(float)f {
  return isinf(f);
}

- (BOOL)isNaN {
  return [JavaLangFloat isNaNWithFloat:value_];
}

+ (BOOL)isNaNWithFloat:(float)f {
  return isnan(f);
}

- (long long int)longLongValue {
  return (long long int) value_;
}

+ (float)parseFloatWithNSString:(NSString *)string {
  if (![((NSString *) nil_chk(string)) matches:[JavaLangDouble FLOATING_POINT_REGEX]]) {
    @throw [[[JavaLangNumberFormatException alloc] initWithNSString:string] autorelease];
  }
  return [JavaLangFloat nativeParseFloatWithNSString:string];
}

+ (IOSObjectArray *)__exceptions_parseFloatWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangNumberFormatException getClass] } count:1 type:[IOSClass getClass]];
}

+ (float)nativeParseFloatWithNSString:(NSString *)s {
  return [s floatValue];
}

- (short int)shortValue {
  return (short int) value_;
}

- (NSString *)description {
  return [JavaLangFloat toStringWithFloat:value_];
}

+ (NSString *)toStringWithFloat:(float)f {
  NSString *s = [NSString stringWithFormat:@"%g", f];
  // Append ".0" if no decimal, like Java does.
  if ([s rangeOfString:@"."].location == NSNotFound) {
    return [s stringByAppendingString:@".0"];
  }
  return s;
}

+ (JavaLangFloat *)valueOfWithNSString:(NSString *)string {
  return [JavaLangFloat valueOfWithFloat:[JavaLangFloat parseFloatWithNSString:string]];
}

+ (IOSObjectArray *)__exceptions_valueOfWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangNumberFormatException getClass] } count:1 type:[IOSClass getClass]];
}

+ (int)compareWithFloat:(float)float1
              withFloat:(float)float2 {
  if (float1 > float2) {
    return 1;
  }
  if (float2 > float1) {
    return -1;
  }
  if (float1 == float2 && 0.0f != float1) {
    return 0;
  }
  if ([JavaLangFloat isNaNWithFloat:float1]) {
    if ([JavaLangFloat isNaNWithFloat:float2]) {
      return 0;
    }
    return 1;
  }
  else if ([JavaLangFloat isNaNWithFloat:float2]) {
    return -1;
  }
  int f1 = [JavaLangFloat floatToRawIntBitsWithFloat:float1];
  int f2 = [JavaLangFloat floatToRawIntBitsWithFloat:float2];
  return (f1 >> 31) - (f2 >> 31);
}

+ (JavaLangFloat *)valueOfWithFloat:(float)f {
  return [[[JavaLangFloat alloc] initWithFloat:f] autorelease];
}

+ (NSString *)toHexStringWithFloat:(float)f {
  return [NSString stringWithFormat:@"%A", (double) f];
}

+ (void)initialize {
  if (self == [JavaLangFloat class]) {
    JreOperatorRetainedAssign(&JavaLangFloat_TYPE_, nil, (IOSClass *) check_class_cast([[[IOSFloatArray arrayWithLength:0] getClass] getComponentType], [IOSClass class]));
  }
}

- (void)copyAllFieldsTo:(JavaLangFloat *)other {
  [super copyAllFieldsTo:other];
  other->value_ = value_;
}

- (const char *)objCType {
  return "f";
}

- (void)getValue:(void *)buffer {
  *((float *) buffer) = value_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
