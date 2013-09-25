//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/icu/NativeDecimalFormat.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSCharArray.h"
#include "IOSClass.h"
#include "IOSIntArray.h"
#include "IOSObjectArray.h"
#include "java/lang/AssertionError.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Throwable.h"
#include "java/math/BigDecimal.h"
#include "java/math/BigInteger.h"
#include "java/math/RoundingMode.h"
#include "java/text/AttributedCharacterIterator.h"
#include "java/text/AttributedString.h"
#include "java/text/DecimalFormatSymbols.h"
#include "java/text/FieldPosition.h"
#include "java/text/Format.h"
#include "java/text/NumberFormat.h"
#include "java/text/ParsePosition.h"
#include "java/util/Currency.h"
#include "java/util/NoSuchElementException.h"
#include "libcore/icu/LocaleData.h"
#include "libcore/icu/NativeDecimalFormat.h"
#import "java/lang/Double.h"
#import "java/lang/Long.h"

@implementation LibcoreIcuNativeDecimalFormat

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithNSString:(NSString *)pattern
withJavaTextDecimalFormatSymbols:(JavaTextDecimalFormatSymbols *)dfs {
  if (self = [super init]) {
    LibcoreIcuNativeDecimalFormat_set_multiplierBigDecimal_(self, nil);
    @try {
      LibcoreIcuNativeDecimalFormat_set_nsFormatter_(self, [LibcoreIcuNativeDecimalFormat openWithNSString:pattern withNSString:[((JavaTextDecimalFormatSymbols *) nil_chk(dfs)) getCurrencySymbol] withChar:[dfs getDecimalSeparator] withChar:[dfs getDigit] withNSString:[dfs getExponentSeparator] withChar:[dfs getGroupingSeparator] withNSString:[dfs getInfinity] withNSString:[dfs getInternationalCurrencySymbol] withChar:[dfs getMinusSign] withChar:[dfs getMonetaryDecimalSeparator] withNSString:[dfs getNaN] withChar:[dfs getPatternSeparator] withChar:[dfs getPercent] withChar:[dfs getPerMill] withChar:[dfs getZeroDigit]]);
      LibcoreIcuNativeDecimalFormat_set_lastPattern_(self, pattern);
    }
    @catch (JavaLangNullPointerException *npe) {
      @throw npe;
    }
    @catch (JavaLangRuntimeException *re) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"syntax error: %@: %@", [((JavaLangRuntimeException *) nil_chk(re)) getMessage], pattern]] autorelease];
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)pattern
withLibcoreIcuLocaleData:(LibcoreIcuLocaleData *)data {
  if (self = [super init]) {
    LibcoreIcuNativeDecimalFormat_set_multiplierBigDecimal_(self, nil);
    LibcoreIcuNativeDecimalFormat_set_nsFormatter_(self, [LibcoreIcuNativeDecimalFormat openWithNSString:pattern withNSString:((LibcoreIcuLocaleData *) nil_chk(data))->currencySymbol_ withChar:data->decimalSeparator_ withChar:'#' withNSString:data->exponentSeparator_ withChar:data->groupingSeparator_ withNSString:data->infinity_ withNSString:data->internationalCurrencySymbol_ withChar:data->minusSign_ withChar:data->monetarySeparator_ withNSString:data->NaN_ withChar:data->patternSeparator_ withChar:data->percent_ withChar:data->perMill_ withChar:data->zeroDigit_]);
    LibcoreIcuNativeDecimalFormat_set_lastPattern_(self, pattern);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)close {
  @synchronized(self) {
    {
      if (nsFormatter_ != nil) {
        [LibcoreIcuNativeDecimalFormat closeWithId:nsFormatter_];
        LibcoreIcuNativeDecimalFormat_set_nsFormatter_(self, nil);
      }
    }
  }
}

- (void)dealloc {
  @try {
    [self close];
    LibcoreIcuNativeDecimalFormat_set_multiplierBigDecimal_(self, nil);
    LibcoreIcuNativeDecimalFormat_set_lastPattern_(self, nil);
    LibcoreIcuNativeDecimalFormat_set_nsFormatter_(self, nil);
  }
  @finally {
    [super dealloc];
  }
}

+ (IOSObjectArray *)__exceptions_dealloc {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangThrowable getClass] } count:1 type:[IOSClass getClass]];
}

- (id)clone {
  @try {
    LibcoreIcuNativeDecimalFormat *clone = (LibcoreIcuNativeDecimalFormat *) check_class_cast([super clone], [LibcoreIcuNativeDecimalFormat class]);
    LibcoreIcuNativeDecimalFormat_set_nsFormatter_(nil_chk(clone), [LibcoreIcuNativeDecimalFormat cloneImplWithId:nsFormatter_]);
    LibcoreIcuNativeDecimalFormat_set_lastPattern_(clone, lastPattern_);
    return clone;
  }
  @catch (JavaLangCloneNotSupportedException *unexpected) {
    @throw [[[JavaLangAssertionError alloc] initWithId:unexpected] autorelease];
  }
}

- (BOOL)isEqual:(id)object {
  if (object == self) {
    return YES;
  }
  if (!([object isKindOfClass:[LibcoreIcuNativeDecimalFormat class]])) {
    return NO;
  }
  LibcoreIcuNativeDecimalFormat *obj = (LibcoreIcuNativeDecimalFormat *) check_class_cast(object, [LibcoreIcuNativeDecimalFormat class]);
  if (((LibcoreIcuNativeDecimalFormat *) nil_chk(obj))->nsFormatter_ == self->nsFormatter_) {
    return YES;
  }
  return [((NSString *) nil_chk([obj toPattern])) isEqual:[self toPattern]] && [obj isDecimalSeparatorAlwaysShown] == [self isDecimalSeparatorAlwaysShown] && [obj getGroupingSize] == [self getGroupingSize] && [obj getMultiplier] == [self getMultiplier] && [((NSString *) nil_chk([obj getNegativePrefix])) isEqual:[self getNegativePrefix]] && [((NSString *) nil_chk([obj getNegativeSuffix])) isEqual:[self getNegativeSuffix]] && [((NSString *) nil_chk([obj getPositivePrefix])) isEqual:[self getPositivePrefix]] && [((NSString *) nil_chk([obj getPositiveSuffix])) isEqual:[self getPositiveSuffix]] && [obj getMaximumIntegerDigits] == [self getMaximumIntegerDigits] && [obj getMaximumFractionDigits] == [self getMaximumFractionDigits] && [obj getMinimumIntegerDigits] == [self getMinimumIntegerDigits] && [obj getMinimumFractionDigits] == [self getMinimumFractionDigits] && [obj isGroupingUsed] == [self isGroupingUsed];
}

- (void)setDecimalFormatSymbolsWithJavaTextDecimalFormatSymbols:(JavaTextDecimalFormatSymbols *)dfs {
  [LibcoreIcuNativeDecimalFormat setDecimalFormatSymbolsWithId:self->nsFormatter_ withNSString:[((JavaTextDecimalFormatSymbols *) nil_chk(dfs)) getCurrencySymbol] withChar:[dfs getDecimalSeparator] withChar:[dfs getDigit] withNSString:[dfs getExponentSeparator] withChar:[dfs getGroupingSeparator] withNSString:[dfs getInfinity] withNSString:[dfs getInternationalCurrencySymbol] withChar:[dfs getMinusSign] withChar:[dfs getMonetaryDecimalSeparator] withNSString:[dfs getNaN] withChar:[dfs getPatternSeparator] withChar:[dfs getPercent] withChar:[dfs getPerMill] withChar:[dfs getZeroDigit]];
}

- (void)setDecimalFormatSymbolsWithLibcoreIcuLocaleData:(LibcoreIcuLocaleData *)localeData {
  [LibcoreIcuNativeDecimalFormat setDecimalFormatSymbolsWithId:self->nsFormatter_ withNSString:((LibcoreIcuLocaleData *) nil_chk(localeData))->currencySymbol_ withChar:localeData->decimalSeparator_ withChar:'#' withNSString:localeData->exponentSeparator_ withChar:localeData->groupingSeparator_ withNSString:localeData->infinity_ withNSString:localeData->internationalCurrencySymbol_ withChar:localeData->minusSign_ withChar:localeData->monetarySeparator_ withNSString:localeData->NaN_ withChar:localeData->patternSeparator_ withChar:localeData->percent_ withChar:localeData->perMill_ withChar:localeData->zeroDigit_];
}

- (IOSCharArray *)formatBigDecimalWithJavaMathBigDecimal:(JavaMathBigDecimal *)value
                               withJavaTextFieldPosition:(JavaTextFieldPosition *)field {
  LibcoreIcuNativeDecimalFormat_FieldPositionIterator *fpi = [LibcoreIcuNativeDecimalFormat_FieldPositionIterator forFieldPositionWithJavaTextFieldPosition:field];
  IOSCharArray *result = [LibcoreIcuNativeDecimalFormat formatDigitListWithId:self->nsFormatter_ withNSString:[((JavaMathBigDecimal *) nil_chk(value)) description] withLibcoreIcuNativeDecimalFormat_FieldPositionIterator:fpi];
  if (fpi != nil) {
    [LibcoreIcuNativeDecimalFormat_FieldPositionIterator setFieldPositionWithLibcoreIcuNativeDecimalFormat_FieldPositionIterator:fpi withJavaTextFieldPosition:field];
  }
  return result;
}

- (IOSCharArray *)formatBigIntegerWithJavaMathBigInteger:(JavaMathBigInteger *)value
                               withJavaTextFieldPosition:(JavaTextFieldPosition *)field {
  LibcoreIcuNativeDecimalFormat_FieldPositionIterator *fpi = [LibcoreIcuNativeDecimalFormat_FieldPositionIterator forFieldPositionWithJavaTextFieldPosition:field];
  IOSCharArray *result = [LibcoreIcuNativeDecimalFormat formatDigitListWithId:self->nsFormatter_ withNSString:[((JavaMathBigInteger *) nil_chk(value)) toStringWithInt:10] withLibcoreIcuNativeDecimalFormat_FieldPositionIterator:fpi];
  if (fpi != nil) {
    [LibcoreIcuNativeDecimalFormat_FieldPositionIterator setFieldPositionWithLibcoreIcuNativeDecimalFormat_FieldPositionIterator:fpi withJavaTextFieldPosition:field];
  }
  return result;
}

- (IOSCharArray *)formatLongWithLong:(long long int)value
           withJavaTextFieldPosition:(JavaTextFieldPosition *)field {
  LibcoreIcuNativeDecimalFormat_FieldPositionIterator *fpi = [LibcoreIcuNativeDecimalFormat_FieldPositionIterator forFieldPositionWithJavaTextFieldPosition:field];
  IOSCharArray *result = [LibcoreIcuNativeDecimalFormat formatLongWithId:self->nsFormatter_ withLong:value withLibcoreIcuNativeDecimalFormat_FieldPositionIterator:fpi];
  if (fpi != nil) {
    [LibcoreIcuNativeDecimalFormat_FieldPositionIterator setFieldPositionWithLibcoreIcuNativeDecimalFormat_FieldPositionIterator:fpi withJavaTextFieldPosition:field];
  }
  return result;
}

- (IOSCharArray *)formatDoubleWithDouble:(double)value
               withJavaTextFieldPosition:(JavaTextFieldPosition *)field {
  LibcoreIcuNativeDecimalFormat_FieldPositionIterator *fpi = [LibcoreIcuNativeDecimalFormat_FieldPositionIterator forFieldPositionWithJavaTextFieldPosition:field];
  IOSCharArray *result = [LibcoreIcuNativeDecimalFormat formatDoubleWithId:self->nsFormatter_ withDouble:value withLibcoreIcuNativeDecimalFormat_FieldPositionIterator:fpi];
  if (fpi != nil) {
    [LibcoreIcuNativeDecimalFormat_FieldPositionIterator setFieldPositionWithLibcoreIcuNativeDecimalFormat_FieldPositionIterator:fpi withJavaTextFieldPosition:field];
  }
  return result;
}

- (void)applyLocalizedPatternWithNSString:(NSString *)pattern {
  [LibcoreIcuNativeDecimalFormat applyPatternWithId:self->nsFormatter_ withBoolean:YES withNSString:pattern];
  LibcoreIcuNativeDecimalFormat_set_lastPattern_(self, nil);
}

- (void)applyPatternWithNSString:(NSString *)pattern {
  if (lastPattern_ != nil && [((NSString *) nil_chk(pattern)) isEqual:lastPattern_]) {
    return;
  }
  [LibcoreIcuNativeDecimalFormat applyPatternWithId:self->nsFormatter_ withBoolean:NO withNSString:pattern];
  LibcoreIcuNativeDecimalFormat_set_lastPattern_(self, pattern);
}

- (id<JavaTextAttributedCharacterIterator>)formatToCharacterIteratorWithId:(id)object {
  if (object == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"object == null"] autorelease];
  }
  if (!([object isKindOfClass:[NSNumber class]])) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"object not a Number: %@", [nil_chk(object) getClass]]] autorelease];
  }
  NSNumber *number = (NSNumber *) check_class_cast(object, [NSNumber class]);
  LibcoreIcuNativeDecimalFormat_FieldPositionIterator *fpIter = [[[LibcoreIcuNativeDecimalFormat_FieldPositionIterator alloc] init] autorelease];
  NSString *text;
  if ([number isKindOfClass:[JavaMathBigInteger class]] || [number isKindOfClass:[JavaMathBigDecimal class]]) {
    text = [NSString stringWithCharacters:[LibcoreIcuNativeDecimalFormat formatDigitListWithId:self->nsFormatter_ withNSString:[((NSNumber *) nil_chk(number)) description] withLibcoreIcuNativeDecimalFormat_FieldPositionIterator:fpIter]];
  }
  else if ([number isKindOfClass:[JavaLangDouble class]] || [number isKindOfClass:[JavaLangFloat class]]) {
    double dv = [((NSNumber *) nil_chk(number)) doubleValue];
    text = [NSString stringWithCharacters:[LibcoreIcuNativeDecimalFormat formatDoubleWithId:self->nsFormatter_ withDouble:dv withLibcoreIcuNativeDecimalFormat_FieldPositionIterator:fpIter]];
  }
  else {
    long long int lv = [((NSNumber *) nil_chk(number)) longLongValue];
    text = [NSString stringWithCharacters:[LibcoreIcuNativeDecimalFormat formatLongWithId:self->nsFormatter_ withLong:lv withLibcoreIcuNativeDecimalFormat_FieldPositionIterator:fpIter]];
  }
  JavaTextAttributedString *as = [[[JavaTextAttributedString alloc] initWithNSString:text] autorelease];
  while ([fpIter next]) {
    JavaTextFormat_Field *field = [fpIter field];
    [as addAttributeWithJavaTextAttributedCharacterIterator_Attribute:field withId:field withInt:[fpIter start] withInt:[fpIter limit]];
  }
  return [as getIterator];
}

- (NSString *)toLocalizedPattern {
  return [LibcoreIcuNativeDecimalFormat toPatternImplWithId:self->nsFormatter_ withBoolean:YES];
}

- (NSString *)toPattern {
  return [LibcoreIcuNativeDecimalFormat toPatternImplWithId:self->nsFormatter_ withBoolean:NO];
}

- (NSNumber *)parseWithNSString:(NSString *)string
      withJavaTextParsePosition:(JavaTextParsePosition *)position {
  return [LibcoreIcuNativeDecimalFormat parseWithId:nsFormatter_ withNSString:string withJavaTextParsePosition:position withBoolean:parseBigDecimal_];
}

- (int)getMaximumFractionDigits {
  return [(NSNumberFormatter *) nsFormatter_ maximumFractionDigits];
}

- (int)getMaximumIntegerDigits {
  return [(NSNumberFormatter *) nsFormatter_ maximumIntegerDigits];
}

- (int)getMinimumFractionDigits {
  return [(NSNumberFormatter *) nsFormatter_ minimumFractionDigits];
}

- (int)getMinimumIntegerDigits {
  return [(NSNumberFormatter *) nsFormatter_ minimumIntegerDigits];
}

- (int)getGroupingSize {
  return [(NSNumberFormatter *) nsFormatter_ groupingSize];
}

- (int)getMultiplier {
  return [[(NSNumberFormatter *) nsFormatter_ multiplier] intValue];
}

- (NSString *)getNegativePrefix {
  return [(NSNumberFormatter *) nsFormatter_ negativePrefix];
}

- (NSString *)getNegativeSuffix {
  return [(NSNumberFormatter *) nsFormatter_ negativeSuffix];
}

- (NSString *)getPositivePrefix {
  return [(NSNumberFormatter *) nsFormatter_ positivePrefix];
}

- (NSString *)getPositiveSuffix {
  return [(NSNumberFormatter *) nsFormatter_ positivePrefix];
}

- (BOOL)isDecimalSeparatorAlwaysShown {
  return [(NSNumberFormatter *) nsFormatter_ alwaysShowsDecimalSeparator];
}

- (BOOL)isParseBigDecimal {
  return parseBigDecimal_;
}

- (BOOL)isParseIntegerOnly {
  return [(NSNumberFormatter *) nsFormatter_ allowsFloats] == NO;
}

- (BOOL)isGroupingUsed {
  return [(NSNumberFormatter *) nsFormatter_ usesGroupingSeparator];
}

- (void)setDecimalSeparatorAlwaysShownWithBoolean:(BOOL)value {
  [(NSNumberFormatter *) nsFormatter_ setAlwaysShowsDecimalSeparator:value];
}

- (void)setCurrencyWithJavaUtilCurrency:(JavaUtilCurrency *)currency {
  [(NSNumberFormatter *) nsFormatter_ setCurrencySymbol:[currency getSymbol]];
  [(NSNumberFormatter *) nsFormatter_ setCurrencyCode:[currency getCurrencyCode]];
}

- (void)setGroupingSizeWithInt:(int)value {
  [(NSNumberFormatter *) nsFormatter_ setGroupingSize:value];
}

- (void)setGroupingUsedWithBoolean:(BOOL)value {
  [(NSNumberFormatter *) nsFormatter_ setUsesGroupingSeparator:value];
}

- (void)setMaximumFractionDigitsWithInt:(int)value {
  [(NSNumberFormatter *) nsFormatter_ setMaximumFractionDigits:value];
}

- (void)setMaximumIntegerDigitsWithInt:(int)value {
  [(NSNumberFormatter *) nsFormatter_ setMaximumIntegerDigits:value];
}

- (void)setMinimumFractionDigitsWithInt:(int)value {
  [(NSNumberFormatter *) nsFormatter_ setMinimumFractionDigits:value];
}

- (void)setMinimumIntegerDigitsWithInt:(int)value {
  [(NSNumberFormatter *) nsFormatter_ setMinimumIntegerDigits:value];
}

- (void)setMultiplierWithInt:(int)value {
  [(NSNumberFormatter *) nsFormatter_ setMultiplier:[NSNumber numberWithInt:value]];
  multiplierBigDecimal_ = [JavaMathBigDecimal valueOfWithLong:value];
}

- (void)setNegativePrefixWithNSString:(NSString *)value {
  negPrefNull_ = (value == nil);
  if (!negPrefNull_) {
    [(NSNumberFormatter *) nsFormatter_ setNegativePrefix:value];
  }
}

- (void)setNegativeSuffixWithNSString:(NSString *)value {
  negSuffNull_ = (value == nil);
  if (!negSuffNull_) {
    [(NSNumberFormatter *) nsFormatter_ setNegativeSuffix:value];
  }
}

- (void)setPositivePrefixWithNSString:(NSString *)value {
  posPrefNull_ = (value == nil);
  if (!posPrefNull_) {
    [(NSNumberFormatter *) nsFormatter_ setPositivePrefix:value];
  }
}

- (void)setPositiveSuffixWithNSString:(NSString *)value {
  posSuffNull_ = (value == nil);
  if (!posSuffNull_) {
    [(NSNumberFormatter *) nsFormatter_ setPositiveSuffix:value];
  }
}

- (void)setParseBigDecimalWithBoolean:(BOOL)value {
  parseBigDecimal_ = value;
}

- (void)setParseIntegerOnlyWithBoolean:(BOOL)value {
  BOOL floats = value ? NO : YES;
  [(NSNumberFormatter *) nsFormatter_ setAllowsFloats:floats];
}

+ (void)applyPatternWithId:(id)nativeFormatter
               withBoolean:(BOOL)localized
              withNSString:(NSString *)pattern {
  @try {
    [LibcoreIcuNativeDecimalFormat applyPatternImplWithId:nativeFormatter withBoolean:localized withNSString:pattern];
  }
  @catch (JavaLangNullPointerException *npe) {
    @throw npe;
  }
  @catch (JavaLangRuntimeException *re) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"syntax error: %@: %@", [((JavaLangRuntimeException *) nil_chk(re)) getMessage], pattern]] autorelease];
  }
}

- (void)setRoundingModeWithJavaMathRoundingModeEnum:(JavaMathRoundingModeEnum *)roundingMode
                                         withDouble:(double)roundingIncrement {
  int nsRoundingMode;
  switch ([roundingMode ordinal]) {
    case JavaMathRoundingMode_CEILING: nsRoundingMode = NSNumberFormatterRoundCeiling; break;
    case JavaMathRoundingMode_FLOOR: nsRoundingMode = NSNumberFormatterRoundFloor; break;
    case JavaMathRoundingMode_DOWN: nsRoundingMode = NSNumberFormatterRoundDown; break;
    case JavaMathRoundingMode_UP: nsRoundingMode = NSNumberFormatterRoundUp; break;
    case JavaMathRoundingMode_HALF_EVEN: nsRoundingMode = NSNumberFormatterRoundHalfEven; break;
    case JavaMathRoundingMode_HALF_DOWN: nsRoundingMode = NSNumberFormatterRoundHalfDown; break;
    case JavaMathRoundingMode_HALF_UP: nsRoundingMode = NSNumberFormatterRoundHalfUp; break;
    default:
    @throw [[JavaLangAssertionError alloc] init];
  }
  NSNumberFormatter *formatter = (NSNumberFormatter *) nsFormatter_;
  [formatter setRoundingMode:nsRoundingMode];
  [formatter setRoundingIncrement:[NSNumber numberWithDouble:roundingIncrement]];
}

+ (id)openWithNSString:(NSString *)pattern
          withNSString:(NSString *)currencySymbol
              withChar:(unichar)decimalSeparator
              withChar:(unichar)digit
          withNSString:(NSString *)exponentSeparator
              withChar:(unichar)groupingSeparator
          withNSString:(NSString *)infinity
          withNSString:(NSString *)internationalCurrencySymbol
              withChar:(unichar)minusSign
              withChar:(unichar)monetaryDecimalSeparator
          withNSString:(NSString *)nan
              withChar:(unichar)patternSeparator
              withChar:(unichar)percent
              withChar:(unichar)perMill
              withChar:(unichar)zeroDigit {
  NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
  [LibcoreIcuNativeDecimalFormat applyPatternImplWithId:formatter
  withBoolean:YES
  withNSString:pattern];
  [LibcoreIcuNativeDecimalFormat setDecimalFormatSymbolsWithId:formatter
  withNSString:currencySymbol
  withChar:decimalSeparator
  withChar:digit
  withNSString:exponentSeparator
  withChar:groupingSeparator
  withNSString:infinity
  withNSString:internationalCurrencySymbol
  withChar:minusSign
  withChar:monetaryDecimalSeparator
  withNSString:nan
  withChar:patternSeparator
  withChar:percent
  withChar:perMill
  withChar:zeroDigit];
  
  return formatter;
}

+ (void)setDecimalFormatSymbolsWithId:(id)nativeFormatter
                         withNSString:(NSString *)currencySymbol
                             withChar:(unichar)decimalSeparator
                             withChar:(unichar)digit
                         withNSString:(NSString *)exponentSeparator
                             withChar:(unichar)groupingSeparator
                         withNSString:(NSString *)infinity
                         withNSString:(NSString *)internationalCurrencySymbol
                             withChar:(unichar)minusSign
                             withChar:(unichar)monetaryDecimalSeparator
                         withNSString:(NSString *)nan
                             withChar:(unichar)patternSeparator
                             withChar:(unichar)percent
                             withChar:(unichar)perMill
                             withChar:(unichar)zeroDigit {
  NSNumberFormatter *formatter = (NSNumberFormatter *) nativeFormatter;
  [formatter setCurrencySymbol:currencySymbol];
  [formatter setDecimalSeparator:[NSString stringWithCharacters:&decimalSeparator length:1]];
  [formatter setExponentSymbol:exponentSeparator];
  [formatter setGroupingSeparator:[NSString stringWithCharacters:&groupingSeparator length:1]];
  [formatter setPositiveInfinitySymbol:infinity];
  [formatter setInternationalCurrencySymbol:internationalCurrencySymbol];
  [formatter setNegativePrefix:[NSString stringWithCharacters:&minusSign length:1]];
  [formatter
  setCurrencyGroupingSeparator:[NSString stringWithCharacters:&monetaryDecimalSeparator
  length:1]];
  [formatter setNotANumberSymbol:nan];
  [formatter setPercentSymbol:[NSString stringWithCharacters:&percent length:1]];
  [formatter setPerMillSymbol:[NSString stringWithCharacters:&perMill length:1]];
  [formatter setZeroSymbol:[NSString stringWithCharacters:&zeroDigit length:1]];
}

+ (void)applyPatternImplWithId:(id)nativeFormatter
                   withBoolean:(BOOL)localized
                  withNSString:(NSString *)pattern {
  NSNumberFormatter *formatter = (NSNumberFormatter *) nativeFormatter;
  NSArray *formats = [pattern componentsSeparatedByString:@";"];
  [formatter setPositiveFormat:[formats objectAtIndex:0]];
  if ([formats count] > 1) {
    [formatter setNegativeFormat:[formats objectAtIndex:1]];
  }
}

+ (id)cloneImplWithId:(id)nativeFormatter {
  NSNumberFormatter *formatter = (NSNumberFormatter *) nativeFormatter;
  return [formatter copyWithZone:NULL];
}

+ (void)closeWithId:(id)nativeFormatter {
  // Nothing to close:
}

+ (IOSCharArray *)formatDoubleWithId:(id)nativeFormatter
                          withDouble:(double)value
withLibcoreIcuNativeDecimalFormat_FieldPositionIterator:(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)iter {
  NSNumberFormatter *formatter = (NSNumberFormatter *) nativeFormatter;
  [formatter setNumberStyle:NSNumberFormatterNoStyle];
  [formatter setAllowsFloats:YES];
  NSString *string = [formatter stringFromNumber:[NSNumber numberWithDouble:value]];
  return [IOSCharArray arrayWithNSString:string];
}

+ (IOSCharArray *)formatDigitListWithId:(id)nativeFormatter
                           withNSString:(NSString *)value
withLibcoreIcuNativeDecimalFormat_FieldPositionIterator:(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)iter {
  // TODO(user): figure out how to do field position iterating on iOS.
  @throw [[JavaLangAssertionError alloc]
  initWithNSString:@"BigDecimal and BigNumber formatting not implemented"];
  return nil;
}

+ (IOSCharArray *)formatLongWithId:(id)nativeFormatter
                          withLong:(long long int)value
withLibcoreIcuNativeDecimalFormat_FieldPositionIterator:(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)iter {
  NSNumberFormatter *formatter = (NSNumberFormatter *) nativeFormatter;
  [formatter setNumberStyle:NSNumberFormatterNoStyle];
  [formatter setAllowsFloats:NO];
  NSString *string = [formatter stringFromNumber:[NSNumber numberWithDouble:value]];
  return [IOSCharArray arrayWithNSString:string];
}

+ (NSNumber *)parseWithId:(id)nativeFormatter
             withNSString:(NSString *)string
withJavaTextParsePosition:(JavaTextParsePosition *)position
              withBoolean:(BOOL)parseBigDecimal {
  NSNumberFormatter *formatter = (NSNumberFormatter *) nativeFormatter;
  NSNumber *result;
  int start = [position getIndex];
  NSRange range = NSMakeRange(start, [string length] - start);
  NSError *error;
  BOOL success = [formatter getObjectValue:&result
  forString:string
  range:&range
  error:&error];
  if (success) {
    [position setIndexWithInt:start + range.length];
    if ([formatter generatesDecimalNumbers]) {
      return [JavaLangDouble valueOfWithDouble:[result doubleValue]];
    } else {
      return [JavaLangLong valueOfWithLong:[result longLongValue]];
    }
  } else {
    [position setErrorIndexWithInt:start];
    return nil;
  }
}

+ (NSString *)toPatternImplWithId:(id)nativeFormatter
                      withBoolean:(BOOL)localized {
  NSNumberFormatter *formatter = (NSNumberFormatter *) nativeFormatter;
  return [NSString stringWithFormat:@"%@;%@", [formatter positiveFormat],
  [formatter negativeFormat]];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)copyAllFieldsTo:(LibcoreIcuNativeDecimalFormat *)other {
  [super copyAllFieldsTo:other];
  LibcoreIcuNativeDecimalFormat_set_lastPattern_(other, lastPattern_);
  LibcoreIcuNativeDecimalFormat_set_multiplierBigDecimal_(other, multiplierBigDecimal_);
  other->negPrefNull_ = negPrefNull_;
  other->negSuffNull_ = negSuffNull_;
  LibcoreIcuNativeDecimalFormat_set_nsFormatter_(other, nsFormatter_);
  other->parseBigDecimal_ = parseBigDecimal_;
  other->posPrefNull_ = posPrefNull_;
  other->posSuffNull_ = posSuffNull_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:nsFormatter_ name:@"nsFormatter"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:lastPattern_ name:@"lastPattern"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:multiplierBigDecimal_ name:@"multiplierBigDecimal"]];
  return result;
}

@end
@implementation LibcoreIcuNativeDecimalFormat_FieldPositionIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:LibcoreIcuNativeDecimalFormat_FieldPositionIterator_fields_ name:@"LibcoreIcuNativeDecimalFormat_FieldPositionIterator_fields_"]];
  return result;
}

static IOSObjectArray * LibcoreIcuNativeDecimalFormat_FieldPositionIterator_fields_;

+ (IOSObjectArray *)fields {
  return LibcoreIcuNativeDecimalFormat_FieldPositionIterator_fields_;
}

+ (void)setFields:(IOSObjectArray *)fields {
  JreOperatorRetainedAssign(&LibcoreIcuNativeDecimalFormat_FieldPositionIterator_fields_, nil, fields);
}

- (id)init {
  if (self = [super init]) {
    pos_ = -3;
    JreMemDebugAdd(self);
  }
  return self;
}

+ (LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)forFieldPositionWithJavaTextFieldPosition:(JavaTextFieldPosition *)fp {
  return nil;
}

+ (int)getNativeFieldPositionIdWithJavaTextFieldPosition:(JavaTextFieldPosition *)fp {
  int id_ = [((JavaTextFieldPosition *) nil_chk(fp)) getField];
  if (id_ < -1 || id_ > 1) {
    id_ = -1;
  }
  if (id_ == -1) {
    JavaTextFormat_Field *attr = [fp getFieldAttribute];
    if (attr != nil) {
      for (int i = 0; i < (int) [((IOSObjectArray *) nil_chk(LibcoreIcuNativeDecimalFormat_FieldPositionIterator_fields_)) count]; ++i) {
        if ([((JavaTextFormat_Field *) nil_chk(IOSObjectArray_Get(LibcoreIcuNativeDecimalFormat_FieldPositionIterator_fields_, i))) isEqual:attr]) {
          id_ = i;
          break;
        }
      }
    }
  }
  return id_;
}

+ (void)setFieldPositionWithLibcoreIcuNativeDecimalFormat_FieldPositionIterator:(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)fpi
                                                      withJavaTextFieldPosition:(JavaTextFieldPosition *)fp {
  if (fpi != nil && fp != nil) {
    int field = [LibcoreIcuNativeDecimalFormat_FieldPositionIterator getNativeFieldPositionIdWithJavaTextFieldPosition:fp];
    if (field != -1) {
      while ([fpi next]) {
        if ([fpi fieldId] == field) {
          [fp setBeginIndexWithInt:[fpi start]];
          [fp setEndIndexWithInt:[fpi limit]];
          break;
        }
      }
    }
  }
}

- (BOOL)next {
  if (data_ == nil || pos_ == (int) [data_ count]) {
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
  pos_ += 3;
  return pos_ < (int) [((IOSIntArray *) nil_chk(data_)) count];
}

- (void)checkValid {
  if (data_ == nil || pos_ < 0 || pos_ == (int) [data_ count]) {
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
}

- (int)fieldId {
  return IOSIntArray_Get(nil_chk(data_), pos_);
}

- (JavaTextFormat_Field *)field {
  [self checkValid];
  return IOSObjectArray_Get(nil_chk(LibcoreIcuNativeDecimalFormat_FieldPositionIterator_fields_), IOSIntArray_Get(nil_chk(data_), pos_));
}

- (int)start {
  [self checkValid];
  return IOSIntArray_Get(nil_chk(data_), pos_ + 1);
}

- (int)limit {
  [self checkValid];
  return IOSIntArray_Get(nil_chk(data_), pos_ + 2);
}

- (void)setDataWithIntArray:(IOSIntArray *)data {
  LibcoreIcuNativeDecimalFormat_FieldPositionIterator_set_data_(self, data);
  self->pos_ = -3;
}

+ (void)initialize {
  if (self == [LibcoreIcuNativeDecimalFormat_FieldPositionIterator class]) {
    JreOperatorRetainedAssign(&LibcoreIcuNativeDecimalFormat_FieldPositionIterator_fields_, nil, [IOSObjectArray arrayWithObjects:(id[]){ [JavaTextNumberFormat_Field INTEGER], [JavaTextNumberFormat_Field FRACTION], [JavaTextNumberFormat_Field DECIMAL_SEPARATOR], [JavaTextNumberFormat_Field EXPONENT_SYMBOL], [JavaTextNumberFormat_Field EXPONENT_SIGN], [JavaTextNumberFormat_Field EXPONENT], [JavaTextNumberFormat_Field GROUPING_SEPARATOR], [JavaTextNumberFormat_Field CURRENCY], [JavaTextNumberFormat_Field PERCENT], [JavaTextNumberFormat_Field PERMILLE], [JavaTextNumberFormat_Field SIGN] } count:11 type:[IOSClass classWithClass:[JavaTextFormat_Field class]]]);
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  LibcoreIcuNativeDecimalFormat_FieldPositionIterator_set_data_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)other {
  [super copyAllFieldsTo:other];
  LibcoreIcuNativeDecimalFormat_FieldPositionIterator_set_data_(other, data_);
  other->pos_ = pos_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:data_ name:@"data"]];
  return result;
}

@end
