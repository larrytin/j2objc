//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ByteBuffer.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaNioByteBuffer_H_
#define _JavaNioByteBuffer_H_

@class IOSByteArray;
@class JavaNioByteOrder;
@class OrgApacheHarmonyLuniPlatformEndianness;

#import "JreEmulation.h"
#include "java/lang/Comparable.h"
#include "java/nio/Buffer.h"

@interface JavaNioByteBuffer : JavaNioBuffer < JavaLangComparable > {
 @public
  OrgApacheHarmonyLuniPlatformEndianness *order__;
}

+ (JavaNioByteBuffer *)allocateWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioByteBuffer *)allocateDirectWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioByteBuffer *)wrapWithByteArray:(IOSByteArray *)array;
+ (JavaNioByteBuffer *)wrapWithByteArray:(IOSByteArray *)array
                                 withInt:(int)start
                                 withInt:(int)len;
- (id)initWithInt:(int)capacity;
- (IOSByteArray *)array;
- (int)arrayOffset;
- (JavaNioByteBuffer *)asReadOnlyBuffer;
- (JavaNioByteBuffer *)compact;
- (int)compareToWithId:(JavaNioByteBuffer *)otherBuffer;
- (JavaNioByteBuffer *)duplicate;
- (BOOL)isEqual:(id)other;
- (char)get;
- (JavaNioByteBuffer *)getWithByteArray:(IOSByteArray *)dest;
- (JavaNioByteBuffer *)getWithByteArray:(IOSByteArray *)dest
                                withInt:(int)off
                                withInt:(int)len;
- (char)getWithInt:(int)index;
- (unichar)getChar;
- (unichar)getCharWithInt:(int)index;
- (double)getDouble;
- (double)getDoubleWithInt:(int)index;
- (float)getFloat;
- (float)getFloatWithInt:(int)index;
- (int)getInt;
- (int)getIntWithInt:(int)index;
- (long long int)getLong;
- (long long int)getLongWithInt:(int)index;
- (short int)getShort;
- (short int)getShortWithInt:(int)index;
- (BOOL)hasArray;
- (NSUInteger)hash;
- (BOOL)isDirect;
- (JavaNioByteOrder *)order;
- (JavaNioByteBuffer *)orderWithJavaNioByteOrder:(JavaNioByteOrder *)byteOrder;
- (JavaNioByteBuffer *)orderImplWithJavaNioByteOrder:(JavaNioByteOrder *)byteOrder;
- (IOSByteArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioByteBuffer *)putWithByte:(char)b;
- (JavaNioByteBuffer *)putWithByteArray:(IOSByteArray *)src;
- (JavaNioByteBuffer *)putWithByteArray:(IOSByteArray *)src
                                withInt:(int)off
                                withInt:(int)len;
- (JavaNioByteBuffer *)putWithJavaNioByteBuffer:(JavaNioByteBuffer *)src;
- (JavaNioByteBuffer *)putWithInt:(int)index
                         withByte:(char)b;
- (JavaNioByteBuffer *)putCharWithChar:(unichar)value;
- (JavaNioByteBuffer *)putCharWithInt:(int)index
                             withChar:(unichar)value;
- (JavaNioByteBuffer *)putDoubleWithDouble:(double)value;
- (JavaNioByteBuffer *)putDoubleWithInt:(int)index
                             withDouble:(double)value;
- (JavaNioByteBuffer *)putFloatWithFloat:(float)value;
- (JavaNioByteBuffer *)putFloatWithInt:(int)index
                             withFloat:(float)value;
- (JavaNioByteBuffer *)putIntWithInt:(int)value;
- (JavaNioByteBuffer *)putIntWithInt:(int)index
                             withInt:(int)value;
- (JavaNioByteBuffer *)putLongWithLong:(long long int)value;
- (JavaNioByteBuffer *)putLongWithInt:(int)index
                             withLong:(long long int)value;
- (JavaNioByteBuffer *)putShortWithShort:(short int)value;
- (JavaNioByteBuffer *)putShortWithInt:(int)index
                             withShort:(short int)value;
- (JavaNioByteBuffer *)slice;
- (NSString *)description;
- (void)copyAllFieldsTo:(JavaNioByteBuffer *)other;
@end

J2OBJC_FIELD_SETTER(JavaNioByteBuffer, order__, OrgApacheHarmonyLuniPlatformEndianness *)

#endif // _JavaNioByteBuffer_H_
