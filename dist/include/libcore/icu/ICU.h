//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/icu/ICU.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _LibcoreIcuICU_H_
#define _LibcoreIcuICU_H_

@class IOSObjectArray;
@class JavaUtilLocale;

#import "JreEmulation.h"

@interface LibcoreIcuICU : NSObject {
}

+ (IOSObjectArray *)isoLanguages;
+ (void)setIsoLanguages:(IOSObjectArray *)isoLanguages;
+ (IOSObjectArray *)isoCountries;
+ (void)setIsoCountries:(IOSObjectArray *)isoCountries;
+ (IOSObjectArray *)availableLocalesCache;
+ (void)setAvailableLocalesCache:(IOSObjectArray *)availableLocalesCache;
+ (IOSObjectArray *)getISOLanguages;
+ (IOSObjectArray *)getISOCountries;
+ (JavaUtilLocale *)localeFromStringWithNSString:(NSString *)localeName;
+ (IOSObjectArray *)localesFromStringsWithNSStringArray:(IOSObjectArray *)localeNames;
+ (IOSObjectArray *)getAvailableLocales;
+ (IOSObjectArray *)getAvailableBreakIteratorLocales;
+ (IOSObjectArray *)getAvailableCalendarLocales;
+ (IOSObjectArray *)getAvailableCollatorLocales;
+ (IOSObjectArray *)getAvailableDateFormatLocales;
+ (IOSObjectArray *)getAvailableDateFormatSymbolsLocales;
+ (IOSObjectArray *)getAvailableDecimalFormatSymbolsLocales;
+ (IOSObjectArray *)getAvailableNumberFormatLocales;
+ (IOSObjectArray *)getAvailableCurrencyCodes;
+ (IOSObjectArray *)getISOLanguagesNative;
+ (IOSObjectArray *)getISOCountriesNative;
+ (IOSObjectArray *)getAvailableLocalesNative;
+ (IOSObjectArray *)getAvailableDateFormatLocalesNative;
+ (IOSObjectArray *)getAvailableCalendarLocalesNative;
+ (IOSObjectArray *)getAvailableNumberFormatLocalesNative;
+ (NSString *)getDisplayCountryNativeWithNSString:(NSString *)countryCode
                                     withNSString:(NSString *)localeId;
+ (NSString *)getDisplayLanguageNativeWithNSString:(NSString *)languageCode
                                      withNSString:(NSString *)localeId;
+ (NSString *)getDisplayVariantNativeWithNSString:(NSString *)variantCode
                                     withNSString:(NSString *)localeId;
+ (NSString *)getISO3CountryNativeWithNSString:(NSString *)localeId;
+ (NSString *)getISO3LanguageNativeWithNSString:(NSString *)localeId;
+ (NSString *)getCurrencyCodeWithNSString:(NSString *)localeId;
+ (NSString *)getCurrencySymbolWithNSString:(NSString *)localeId;
+ (int)getCurrencyFractionDigitsWithNSString:(NSString *)currencyCode;
- (id)init;
@end

@interface LibcoreIcuICU (NativeMethods)
+ (IOSObjectArray *)getAvailableBreakIteratorLocalesNative;
+ (IOSObjectArray *)getAvailableCollatorLocalesNative;
@end

#endif // _LibcoreIcuICU_H_
