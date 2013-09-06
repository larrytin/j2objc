//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadOnlyIntArrayBuffer.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaNioReadOnlyIntArrayBuffer_H_
#define _JavaNioReadOnlyIntArrayBuffer_H_

@class IOSIntArray;
@class JavaNioIntBuffer;

#import "JreEmulation.h"
#include "java/nio/IntArrayBuffer.h"

@interface JavaNioReadOnlyIntArrayBuffer : JavaNioIntArrayBuffer {
}

+ (JavaNioReadOnlyIntArrayBuffer *)copy__WithJavaNioIntArrayBuffer:(JavaNioIntArrayBuffer *)other
                                                           withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE;
- (id)initWithInt:(int)capacity
     withIntArray:(IOSIntArray *)backingArray
          withInt:(int)arrayOffset;
- (JavaNioIntBuffer *)asReadOnlyBuffer;
- (JavaNioIntBuffer *)compact;
- (JavaNioIntBuffer *)duplicate;
- (BOOL)isReadOnly;
- (IOSIntArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioIntBuffer *)putWithInt:(int)c;
- (JavaNioIntBuffer *)putWithInt:(int)index
                         withInt:(int)c;
- (JavaNioIntBuffer *)putWithJavaNioIntBuffer:(JavaNioIntBuffer *)buf;
- (JavaNioIntBuffer *)putWithIntArray:(IOSIntArray *)src
                              withInt:(int)off
                              withInt:(int)len;
- (JavaNioIntBuffer *)slice;
@end

#endif // _JavaNioReadOnlyIntArrayBuffer_H_
