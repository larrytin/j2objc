//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadOnlyDoubleArrayBuffer.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaNioReadOnlyDoubleArrayBuffer_H_
#define _JavaNioReadOnlyDoubleArrayBuffer_H_

@class IOSDoubleArray;
@class JavaNioDoubleBuffer;

#import "JreEmulation.h"
#include "java/nio/DoubleArrayBuffer.h"

@interface JavaNioReadOnlyDoubleArrayBuffer : JavaNioDoubleArrayBuffer {
}

+ (JavaNioReadOnlyDoubleArrayBuffer *)copy__WithJavaNioDoubleArrayBuffer:(JavaNioDoubleArrayBuffer *)other
                                                                 withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE;
- (id)initWithInt:(int)capacity
  withDoubleArray:(IOSDoubleArray *)backingArray
          withInt:(int)arrayOffset;
- (JavaNioDoubleBuffer *)asReadOnlyBuffer;
- (JavaNioDoubleBuffer *)compact;
- (JavaNioDoubleBuffer *)duplicate;
- (BOOL)isReadOnly;
- (IOSDoubleArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioDoubleBuffer *)putWithDouble:(double)c;
- (JavaNioDoubleBuffer *)putWithInt:(int)index
                         withDouble:(double)c;
- (JavaNioDoubleBuffer *)putWithDoubleArray:(IOSDoubleArray *)src
                                    withInt:(int)off
                                    withInt:(int)len;
- (JavaNioDoubleBuffer *)putWithJavaNioDoubleBuffer:(JavaNioDoubleBuffer *)buf;
- (JavaNioDoubleBuffer *)slice;
@end

#endif // _JavaNioReadOnlyDoubleArrayBuffer_H_
