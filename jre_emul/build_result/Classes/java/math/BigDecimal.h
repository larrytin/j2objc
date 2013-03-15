//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/math/src/main/java/java/math/BigDecimal.java
//
//  Created by retechretech on 13-3-15.
//

@class IOSCharArray;
@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;
@class JavaMathBigInteger;
@class JavaMathMathContext;
@class JavaMathRoundingModeEnum;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/lang/Comparable.h"

#define JavaMathBigDecimal_BI_SCALED_BY_ZERO_LENGTH 11
#define JavaMathBigDecimal_LOG10_2 0.3010299956639812
#define JavaMathBigDecimal_ROUND_CEILING 2
#define JavaMathBigDecimal_ROUND_DOWN 1
#define JavaMathBigDecimal_ROUND_FLOOR 3
#define JavaMathBigDecimal_ROUND_HALF_DOWN 5
#define JavaMathBigDecimal_ROUND_HALF_EVEN 6
#define JavaMathBigDecimal_ROUND_HALF_UP 4
#define JavaMathBigDecimal_ROUND_UNNECESSARY 7
#define JavaMathBigDecimal_ROUND_UP 0
#define JavaMathBigDecimal_serialVersionUID 6108874887143696463

@interface JavaMathBigDecimal : NSNumber < JavaLangComparable, JavaIoSerializable > {
 @public
  NSString *toStringImage_;
  int hashCode__;
  JavaMathBigInteger *intVal_;
  int bitLength__;
  long long int smallValue_;
  int scale__;
  int precision__;
}

@property (nonatomic, copy) NSString *toStringImage;
@property (nonatomic, assign) int hashCode_;
@property (nonatomic, retain) JavaMathBigInteger *intVal;
@property (nonatomic, assign) int bitLength_;
@property (nonatomic, assign) long long int smallValue;
@property (nonatomic, assign) int scale_;
@property (nonatomic, assign) int precision_;

+ (JavaMathBigDecimal *)ZERO;
+ (JavaMathBigDecimal *)ONE;
+ (JavaMathBigDecimal *)TEN;
+ (int)ROUND_UP;
+ (int)ROUND_DOWN;
+ (int)ROUND_CEILING;
+ (int)ROUND_FLOOR;
+ (int)ROUND_HALF_UP;
+ (int)ROUND_HALF_DOWN;
+ (int)ROUND_HALF_EVEN;
+ (int)ROUND_UNNECESSARY;
+ (IOSObjectArray *)FIVE_POW;
+ (IOSObjectArray *)TEN_POW;
+ (IOSLongArray *)LONG_TEN_POW;
+ (IOSLongArray *)LONG_FIVE_POW;
+ (IOSIntArray *)LONG_FIVE_POW_BIT_LENGTH;
+ (IOSIntArray *)LONG_TEN_POW_BIT_LENGTH;
+ (IOSObjectArray *)BI_SCALED_BY_ZERO;
+ (IOSObjectArray *)ZERO_SCALED_BY;
+ (IOSCharArray *)CH_ZEROS;
- (id)initWithLongInt:(long long int)smallValue
              withInt:(int)scale_;
- (id)initWithInt:(int)smallValue
          withInt:(int)scale_;
- (id)initWithJavaLangCharacterArray:(IOSCharArray *)inArg
                             withInt:(int)offset
                             withInt:(int)len;
- (id)initWithJavaLangCharacterArray:(IOSCharArray *)inArg
                             withInt:(int)offset
                             withInt:(int)len
             withJavaMathMathContext:(JavaMathMathContext *)mc;
- (id)initWithJavaLangCharacterArray:(IOSCharArray *)inArg;
- (id)initWithJavaLangCharacterArray:(IOSCharArray *)inArg
             withJavaMathMathContext:(JavaMathMathContext *)mc;
- (id)initWithNSString:(NSString *)val;
- (id)initWithNSString:(NSString *)val
withJavaMathMathContext:(JavaMathMathContext *)mc;
- (id)initWithDouble:(double)val;
- (id)initWithDouble:(double)val
withJavaMathMathContext:(JavaMathMathContext *)mc;
- (id)initWithJavaMathBigInteger:(JavaMathBigInteger *)val;
- (id)initWithJavaMathBigInteger:(JavaMathBigInteger *)val
         withJavaMathMathContext:(JavaMathMathContext *)mc;
- (id)initWithJavaMathBigInteger:(JavaMathBigInteger *)unscaledVal
                         withInt:(int)scale_;
- (id)initWithJavaMathBigInteger:(JavaMathBigInteger *)unscaledVal
                         withInt:(int)scale_
         withJavaMathMathContext:(JavaMathMathContext *)mc;
- (id)initWithInt:(int)val;
- (id)initWithInt:(int)val
withJavaMathMathContext:(JavaMathMathContext *)mc;
- (id)initWithLongInt:(long long int)val;
- (id)initWithLongInt:(long long int)val
withJavaMathMathContext:(JavaMathMathContext *)mc;
+ (JavaMathBigDecimal *)valueOfWithLongInt:(long long int)unscaledVal
                                   withInt:(int)scale_;
+ (JavaMathBigDecimal *)valueOfWithLongInt:(long long int)unscaledVal;
+ (JavaMathBigDecimal *)valueOfWithDouble:(double)val;
- (JavaMathBigDecimal *)addWithJavaMathBigDecimal:(JavaMathBigDecimal *)augend;
+ (JavaMathBigDecimal *)addAndMult10WithJavaMathBigDecimal:(JavaMathBigDecimal *)thisValue
                                    withJavaMathBigDecimal:(JavaMathBigDecimal *)augend
                                                   withInt:(int)diffScale;
- (JavaMathBigDecimal *)addWithJavaMathBigDecimal:(JavaMathBigDecimal *)augend
                          withJavaMathMathContext:(JavaMathMathContext *)mc;
- (JavaMathBigDecimal *)subtractWithJavaMathBigDecimal:(JavaMathBigDecimal *)subtrahend;
- (JavaMathBigDecimal *)subtractWithJavaMathBigDecimal:(JavaMathBigDecimal *)subtrahend
                               withJavaMathMathContext:(JavaMathMathContext *)mc;
- (JavaMathBigDecimal *)multiplyWithJavaMathBigDecimal:(JavaMathBigDecimal *)multiplicand;
- (JavaMathBigDecimal *)multiplyWithJavaMathBigDecimal:(JavaMathBigDecimal *)multiplicand
                               withJavaMathMathContext:(JavaMathMathContext *)mc;
- (JavaMathBigDecimal *)divideWithJavaMathBigDecimal:(JavaMathBigDecimal *)divisor
                                             withInt:(int)scale_
                                             withInt:(int)roundingMode;
- (JavaMathBigDecimal *)divideWithJavaMathBigDecimal:(JavaMathBigDecimal *)divisor
                                             withInt:(int)scale_
                        withJavaMathRoundingModeEnum:(JavaMathRoundingModeEnum *)roundingMode;
+ (JavaMathBigDecimal *)divideBigIntegersWithJavaMathBigInteger:(JavaMathBigInteger *)scaledDividend
                                         withJavaMathBigInteger:(JavaMathBigInteger *)scaledDivisor
                                                        withInt:(int)scale_
                                   withJavaMathRoundingModeEnum:(JavaMathRoundingModeEnum *)roundingMode;
+ (JavaMathBigDecimal *)dividePrimitiveLongsWithLongInt:(long long int)scaledDividend
                                            withLongInt:(long long int)scaledDivisor
                                                withInt:(int)scale_
                           withJavaMathRoundingModeEnum:(JavaMathRoundingModeEnum *)roundingMode;
- (JavaMathBigDecimal *)divideWithJavaMathBigDecimal:(JavaMathBigDecimal *)divisor
                                             withInt:(int)roundingMode;
- (JavaMathBigDecimal *)divideWithJavaMathBigDecimal:(JavaMathBigDecimal *)divisor
                        withJavaMathRoundingModeEnum:(JavaMathRoundingModeEnum *)roundingMode;
- (JavaMathBigDecimal *)divideWithJavaMathBigDecimal:(JavaMathBigDecimal *)divisor;
- (JavaMathBigDecimal *)divideWithJavaMathBigDecimal:(JavaMathBigDecimal *)divisor
                             withJavaMathMathContext:(JavaMathMathContext *)mc;
- (JavaMathBigDecimal *)divideToIntegralValueWithJavaMathBigDecimal:(JavaMathBigDecimal *)divisor;
- (JavaMathBigDecimal *)divideToIntegralValueWithJavaMathBigDecimal:(JavaMathBigDecimal *)divisor
                                            withJavaMathMathContext:(JavaMathMathContext *)mc;
- (JavaMathBigDecimal *)remainderWithJavaMathBigDecimal:(JavaMathBigDecimal *)divisor;
- (JavaMathBigDecimal *)remainderWithJavaMathBigDecimal:(JavaMathBigDecimal *)divisor
                                withJavaMathMathContext:(JavaMathMathContext *)mc;
- (IOSObjectArray *)divideAndRemainderWithJavaMathBigDecimal:(JavaMathBigDecimal *)divisor;
- (IOSObjectArray *)divideAndRemainderWithJavaMathBigDecimal:(JavaMathBigDecimal *)divisor
                                     withJavaMathMathContext:(JavaMathMathContext *)mc;
- (JavaMathBigDecimal *)powWithInt:(int)n;
- (JavaMathBigDecimal *)powWithInt:(int)n
           withJavaMathMathContext:(JavaMathMathContext *)mc;
- (JavaMathBigDecimal *)abs;
- (JavaMathBigDecimal *)absWithJavaMathMathContext:(JavaMathMathContext *)mc;
- (JavaMathBigDecimal *)negate;
- (JavaMathBigDecimal *)negateWithJavaMathMathContext:(JavaMathMathContext *)mc;
- (JavaMathBigDecimal *)plus;
- (JavaMathBigDecimal *)plusWithJavaMathMathContext:(JavaMathMathContext *)mc;
- (int)signum;
- (BOOL)isZero;
- (int)scale__;
- (int)precision;
- (JavaMathBigInteger *)unscaledValue;
- (JavaMathBigDecimal *)roundWithJavaMathMathContext:(JavaMathMathContext *)mc;
- (JavaMathBigDecimal *)setScaleWithInt:(int)newScale
           withJavaMathRoundingModeEnum:(JavaMathRoundingModeEnum *)roundingMode;
- (JavaMathBigDecimal *)setScaleWithInt:(int)newScale
                                withInt:(int)roundingMode;
- (JavaMathBigDecimal *)setScaleWithInt:(int)newScale;
- (JavaMathBigDecimal *)movePointLeftWithInt:(int)n;
- (JavaMathBigDecimal *)movePointWithLongInt:(long long int)newScale;
- (JavaMathBigDecimal *)movePointRightWithInt:(int)n;
- (JavaMathBigDecimal *)scaleByPowerOfTenWithInt:(int)n;
- (JavaMathBigDecimal *)stripTrailingZeros;
- (int)compareToWithId:(JavaMathBigDecimal *)val;
- (BOOL)isEqual:(id)x;
- (JavaMathBigDecimal *)minWithJavaMathBigDecimal:(JavaMathBigDecimal *)val;
- (JavaMathBigDecimal *)maxWithJavaMathBigDecimal:(JavaMathBigDecimal *)val;
- (NSUInteger)hash;
- (NSString *)description;
- (NSString *)toEngineeringString;
- (NSString *)toPlainString;
- (JavaMathBigInteger *)toBigInteger;
- (JavaMathBigInteger *)toBigIntegerExact;
- (long long int)longValue;
- (long long int)longValueExact;
- (int)intValue;
- (int)intValueExact;
- (short int)shortValueExact;
- (char)byteValueExact;
- (float)floatValue;
- (double)doubleValue;
- (JavaMathBigDecimal *)ulp;
- (void)inplaceRoundWithJavaMathMathContext:(JavaMathMathContext *)mc;
+ (int)longCompareToWithLongInt:(long long int)value1
                    withLongInt:(long long int)value2;
- (void)smallRoundWithJavaMathMathContext:(JavaMathMathContext *)mc
                                  withInt:(int)discardedPrecision;
+ (int)roundingBehaviorWithInt:(int)parityBit
                       withInt:(int)fraction
  withJavaMathRoundingModeEnum:(JavaMathRoundingModeEnum *)roundingMode;
- (long long int)valueExactWithInt:(int)bitLengthOfType;
- (int)aproxPrecision;
+ (int)toIntScaleWithLongInt:(long long int)longScale;
+ (JavaMathBigDecimal *)zeroScaledByWithLongInt:(long long int)longScale;
- (JavaMathBigInteger *)getUnscaledValue;
- (void)setUnscaledValueWithJavaMathBigInteger:(JavaMathBigInteger *)unscaledValue;
+ (int)bitLengthWithLongInt:(long long int)smallValue;
+ (int)bitLengthWithInt:(int)smallValue;
@end
