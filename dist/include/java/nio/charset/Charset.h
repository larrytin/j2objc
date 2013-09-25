//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/nio/charset/Charset.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaNioCharsetCharset_H_
#define _JavaNioCharsetCharset_H_

@class IOSObjectArray;
@class JavaNioByteBuffer;
@class JavaNioCharBuffer;
@class JavaNioCharsetCharsetDecoder;
@class JavaNioCharsetCharsetEncoder;
@class JavaUtilHashMap;
@class JavaUtilHashSet;
@class JavaUtilLocale;
@protocol JavaUtilSet;
@protocol JavaUtilSortedMap;

#import "JreEmulation.h"
#include "java/lang/Comparable.h"

@interface JavaNioCharsetCharset : NSObject < JavaLangComparable > {
 @public
  NSString *canonicalName_;
  JavaUtilHashSet *aliasesSet_;
}

+ (JavaUtilHashMap *)CACHED_CHARSETS;
+ (JavaNioCharsetCharset *)DEFAULT_CHARSET;
- (id)initWithNSString:(NSString *)canonicalName
     withNSStringArray:(IOSObjectArray *)aliases;
+ (void)checkCharsetNameWithNSString:(NSString *)name;
+ (BOOL)isValidCharsetNameCharacterWithChar:(unichar)c;
+ (id<JavaUtilSortedMap>)availableCharsets;
+ (JavaNioCharsetCharset *)cacheCharsetWithNSString:(NSString *)charsetName
                          withJavaNioCharsetCharset:(JavaNioCharsetCharset *)cs;
+ (JavaNioCharsetCharset *)forNameWithNSString:(NSString *)charsetName;
+ (JavaNioCharsetCharset *)forNameUEEWithNSString:(NSString *)charsetName;
+ (BOOL)isSupportedWithNSString:(NSString *)charsetName;
- (BOOL)containsWithJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;
- (JavaNioCharsetCharsetEncoder *)newEncoder OBJC_METHOD_FAMILY_NONE;
- (JavaNioCharsetCharsetDecoder *)newDecoder OBJC_METHOD_FAMILY_NONE;
- (NSString *)name;
- (id<JavaUtilSet>)aliases;
- (NSString *)displayName;
- (NSString *)displayNameWithJavaUtilLocale:(JavaUtilLocale *)l;
- (BOOL)isRegistered;
- (BOOL)canEncode;
- (JavaNioByteBuffer *)encodeWithJavaNioCharBuffer:(JavaNioCharBuffer *)buffer;
- (JavaNioByteBuffer *)encodeWithNSString:(NSString *)s;
- (JavaNioCharBuffer *)decodeWithJavaNioByteBuffer:(JavaNioByteBuffer *)buffer;
- (int)compareToWithId:(JavaNioCharsetCharset *)charset;
- (BOOL)isEqual:(id)obj;
- (NSUInteger)hash;
- (NSString *)description;
+ (JavaNioCharsetCharset *)defaultCharset;
+ (JavaNioCharsetCharset *)getDefaultCharset;
- (void)copyAllFieldsTo:(JavaNioCharsetCharset *)other;
@end

J2OBJC_FIELD_SETTER(JavaNioCharsetCharset, canonicalName_, NSString *)
J2OBJC_FIELD_SETTER(JavaNioCharsetCharset, aliasesSet_, JavaUtilHashSet *)

#endif // _JavaNioCharsetCharset_H_
