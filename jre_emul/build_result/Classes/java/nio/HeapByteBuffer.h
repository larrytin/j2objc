//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/HeapByteBuffer.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaNioHeapByteBuffer_H_
#define _JavaNioHeapByteBuffer_H_

@class IOSByteArray;

#import "JreEmulation.h"
#include "java/nio/ByteBuffer.h"

@interface JavaNioHeapByteBuffer : JavaNioByteBuffer {
 @public
  IOSByteArray *backingArray_;
  int offset_;
}

- (id)initWithByteArray:(IOSByteArray *)backingArray;
- (id)initWithInt:(int)capacity;
- (id)initWithByteArray:(IOSByteArray *)backingArray
                withInt:(int)capacity
                withInt:(int)offset;
- (JavaNioByteBuffer *)getWithByteArray:(IOSByteArray *)dest
                                withInt:(int)off
                                withInt:(int)len;
- (char)get;
- (char)getWithInt:(int)index;
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
- (BOOL)isDirect;
- (int)loadIntWithInt:(int)index;
- (long long int)loadLongWithInt:(int)index;
- (short int)loadShortWithInt:(int)index;
- (void)storeWithInt:(int)index
             withInt:(int)value;
- (void)storeWithInt:(int)index
         withLongInt:(long long int)value;
- (void)storeWithInt:(int)index
        withShortInt:(short int)value;
- (unichar)getChar;
- (unichar)getCharWithInt:(int)index;
- (JavaNioByteBuffer *)putCharWithUnichar:(unichar)value;
- (JavaNioByteBuffer *)putCharWithInt:(int)index
                          withUnichar:(unichar)value;
- (void)copyAllFieldsTo:(JavaNioHeapByteBuffer *)other;
@end

J2OBJC_FIELD_SETTER(JavaNioHeapByteBuffer, backingArray_, IOSByteArray *)

#endif // _JavaNioHeapByteBuffer_H_
