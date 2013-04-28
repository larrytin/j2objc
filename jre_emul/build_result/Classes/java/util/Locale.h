//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/Locale.java
//
//  Created by retechretech on 13-4-26.
//

@class IOSObjectArray;

#import "JreEmulation.h"
#import "java/io/Serializable.h"

#define JavaUtilLocale_serialVersionUID 9149081749638150636

@interface JavaUtilLocale : NSObject < NSCopying, JavaIoSerializable > {
 @public
  NSString *countryCode_;
  NSString *languageCode_;
  NSString *variantCode_;
}

@property (nonatomic, copy) NSString *countryCode;
@property (nonatomic, copy) NSString *languageCode;
@property (nonatomic, copy) NSString *variantCode;

+ (JavaUtilLocale *)defaultLocale;
+ (void)setDefaultLocale:(JavaUtilLocale *)defaultLocale;
+ (JavaUtilLocale *)CANADA;
+ (JavaUtilLocale *)CANADA_FRENCH;
+ (JavaUtilLocale *)CHINA;
+ (JavaUtilLocale *)CHINESE;
+ (JavaUtilLocale *)ENGLISH;
+ (JavaUtilLocale *)FRANCE;
+ (JavaUtilLocale *)FRENCH;
+ (JavaUtilLocale *)GERMAN;
+ (JavaUtilLocale *)GERMANY;
+ (JavaUtilLocale *)ITALIAN;
+ (JavaUtilLocale *)ITALY;
+ (JavaUtilLocale *)JAPAN;
+ (JavaUtilLocale *)JAPANESE;
+ (JavaUtilLocale *)KOREA;
+ (JavaUtilLocale *)KOREAN;
+ (JavaUtilLocale *)PRC;
+ (JavaUtilLocale *)ROOT;
+ (JavaUtilLocale *)SIMPLIFIED_CHINESE;
+ (JavaUtilLocale *)TAIWAN;
+ (JavaUtilLocale *)TRADITIONAL_CHINESE;
+ (JavaUtilLocale *)UK;
+ (JavaUtilLocale *)US;
+ (NSString *)getUserLanguageWithNSString:(NSString *)defaultLanguage;
+ (NSString *)getUserRegionWithNSString:(NSString *)defaultRegion;
+ (NSString *)getUserVariantWithNSString:(NSString *)defaultVariant;
- (id)init;
- (id)initWithNSString:(NSString *)language;
- (id)initWithNSString:(NSString *)language
          withNSString:(NSString *)country;
- (id)initWithNSString:(NSString *)language
          withNSString:(NSString *)country
          withNSString:(NSString *)variant;
- (id)clone;
- (BOOL)isEqual:(id)object;
+ (IOSObjectArray *)getAvailableLocales;
- (NSString *)getCountry;
+ (JavaUtilLocale *)getDefault;
- (NSString *)getDisplayCountry;
- (NSString *)getDisplayCountryWithJavaUtilLocale:(JavaUtilLocale *)locale;
- (NSString *)getDisplayLanguage;
- (NSString *)getDisplayLanguageWithJavaUtilLocale:(JavaUtilLocale *)locale;
- (NSString *)getDisplayName;
- (NSString *)getDisplayNameWithJavaUtilLocale:(JavaUtilLocale *)locale;
- (NSString *)getDisplayVariant;
- (NSString *)getDisplayVariantWithJavaUtilLocale:(JavaUtilLocale *)locale;
- (NSString *)getISO3Country;
- (NSString *)getISO3Language;
+ (IOSObjectArray *)getISOCountries;
+ (IOSObjectArray *)getISOLanguages;
- (NSString *)getLanguage;
- (NSString *)getVariant;
- (NSUInteger)hash;
+ (void)setDefaultWithJavaUtilLocale:(JavaUtilLocale *)locale;
- (NSString *)description;
- (id)copyWithZone:(NSZone *)zone;
@end
