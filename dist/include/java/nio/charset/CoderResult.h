//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/nio/charset/CoderResult.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaNioCharsetCoderResult_H_
#define _JavaNioCharsetCoderResult_H_

@class JavaUtilWeakHashMap;

#import "JreEmulation.h"

#define JavaNioCharsetCoderResult_TYPE_MALFORMED_INPUT 3
#define JavaNioCharsetCoderResult_TYPE_OVERFLOW 2
#define JavaNioCharsetCoderResult_TYPE_UNDERFLOW 1
#define JavaNioCharsetCoderResult_TYPE_UNMAPPABLE_CHAR 4

@interface JavaNioCharsetCoderResult : NSObject {
 @public
  int type_;
  int length__;
}

+ (JavaNioCharsetCoderResult *)getUNDERFLOW;
+ (JavaNioCharsetCoderResult *)getOVERFLOW;
+ (JavaUtilWeakHashMap *)_malformedErrors;
+ (void)set_malformedErrors:(JavaUtilWeakHashMap *)_malformedErrors;
+ (JavaUtilWeakHashMap *)_unmappableErrors;
+ (void)set_unmappableErrors:(JavaUtilWeakHashMap *)_unmappableErrors;
- (id)initWithInt:(int)type
          withInt:(int)length;
+ (JavaNioCharsetCoderResult *)malformedForLengthWithInt:(int)length;
+ (JavaNioCharsetCoderResult *)unmappableForLengthWithInt:(int)length;
- (BOOL)isUnderflow;
- (BOOL)isError;
- (BOOL)isMalformed;
- (BOOL)isOverflow;
- (BOOL)isUnmappable;
- (int)length;
- (void)throwException;
- (NSString *)description;
- (void)copyAllFieldsTo:(JavaNioCharsetCoderResult *)other;
@end

#endif // _JavaNioCharsetCoderResult_H_
