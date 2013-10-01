//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaTextIOSCollator_H_
#define _JavaTextIOSCollator_H_

@class IOSByteArray;
@class JavaUtilLocale;

#import "JreEmulation.h"
#include "java/text/CollationKey.h"
#include "java/text/Collator.h"

@interface JavaTextIOSCollator : JavaTextCollator {
 @public
  id nsLocale_;
  int strength_;
  int decomposition_;
}

- (id)initWithJavaUtilLocale:(JavaUtilLocale *)locale;
- (void)initNativeLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale OBJC_METHOD_FAMILY_NONE;
- (int)compareWithNSString:(NSString *)string1
              withNSString:(NSString *)string2;
- (int)getDecomposition;
- (int)getStrength;
- (void)setDecompositionWithInt:(int)value;
- (void)setStrengthWithInt:(int)value;
- (NSUInteger)hash;
- (BOOL)isEqual:(id)obj;
+ (BOOL)nativeLocalesEqualWithId:(id)locale1
                          withId:(id)locale2;
- (JavaTextCollationKey *)getCollationKeyWithNSString:(NSString *)string;
- (void)copyAllFieldsTo:(JavaTextIOSCollator *)other;
@end

J2OBJC_FIELD_SETTER(JavaTextIOSCollator, nsLocale_, id)

@interface JavaTextIOSCollator_IOSCollationKey : JavaTextCollationKey {
}

- (id)initWithNSString:(NSString *)source;
- (int)compareToWithId:(JavaTextCollationKey *)value;
- (IOSByteArray *)toByteArray;
@end

#endif // _JavaTextIOSCollator_H_
