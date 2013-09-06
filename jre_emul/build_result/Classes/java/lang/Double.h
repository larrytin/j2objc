//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/Double.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaLangDouble_H_
#define _JavaLangDouble_H_

@class IOSClass;

#import "JreEmulation.h"
#include "java/lang/Comparable.h"

#define JavaLangDouble_EXPONENT_BIAS 1023
#define JavaLangDouble_EXPONENT_BITS 12
#define JavaLangDouble_EXPONENT_MASK 9218868437227405312
#define JavaLangDouble_MANTISSA_BITS 52
#define JavaLangDouble_MANTISSA_MASK 4503599627370495
#define JavaLangDouble_MAX_EXPONENT 1023
#define JavaLangDouble_MAX_VALUE __DBL_MAX__
#define JavaLangDouble_MIN_EXPONENT -1022
#define JavaLangDouble_MIN_VALUE __DBL_MIN__
#define JavaLangDouble_NEGATIVE_INFINITY -INFINITY
#define JavaLangDouble_NON_MANTISSA_BITS 12
#define JavaLangDouble_NaN NAN
#define JavaLangDouble_POSITIVE_INFINITY INFINITY
#define JavaLangDouble_SIGN_MASK ((long long) 0x8000000000000000LL)
#define JavaLangDouble_SIZE 64

@interface JavaLangDouble : NSNumber < JavaLangComparable > {
 @public
  double value_;
}

+ (int)EXPONENT_BIAS;
+ (int)EXPONENT_BITS;
+ (int)MANTISSA_BITS;
+ (int)NON_MANTISSA_BITS;
+ (long long int)SIGN_MASK;
+ (long long int)EXPONENT_MASK;
+ (long long int)MANTISSA_MASK;
+ (double)MAX_VALUE;
+ (double)MIN_VALUE;
+ (double)NaN;
+ (double)POSITIVE_INFINITY;
+ (double)NEGATIVE_INFINITY;
+ (int)MAX_EXPONENT;
+ (int)MIN_EXPONENT;
+ (IOSClass *)TYPE;
+ (int)SIZE;
- (id)initWithDouble:(double)value;
- (id)initWithNSString:(NSString *)string;
- (int)compareToWithId:(JavaLangDouble *)object;
- (char)byteValue;
+ (long long int)doubleToLongBitsWithDouble:(double)value;
+ (long long int)doubleToRawLongBitsWithDouble:(double)value;
- (double)doubleValue;
- (BOOL)isEqual:(id)object;
- (float)floatValue;
- (NSUInteger)hash;
- (int)intValue;
- (BOOL)isInfinite;
+ (BOOL)isInfiniteWithDouble:(double)d;
- (BOOL)isNaN;
+ (BOOL)isNaNWithDouble:(double)d;
+ (double)longBitsToDoubleWithLongInt:(long long int)bits;
- (long long int)longLongValue;
+ (double)parseDoubleWithNSString:(NSString *)string;
- (short int)shortValue;
- (NSString *)description;
+ (NSString *)toStringWithDouble:(double)d;
+ (JavaLangDouble *)valueOfWithNSString:(NSString *)string;
+ (int)compareWithDouble:(double)double1
              withDouble:(double)double2;
+ (JavaLangDouble *)valueOfWithDouble:(double)d;
+ (NSString *)toHexStringWithDouble:(double)d;
- (void)copyAllFieldsTo:(JavaLangDouble *)other;
@end

BOXED_INC_AND_DEC(Double, double, JavaLangDouble, Double)

#endif // _JavaLangDouble_H_
