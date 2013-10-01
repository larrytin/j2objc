//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaNioReadOnlyFloatArrayBuffer_H_
#define _JavaNioReadOnlyFloatArrayBuffer_H_

@class IOSFloatArray;
@class JavaNioFloatBuffer;

#import "JreEmulation.h"
#include "java/nio/FloatArrayBuffer.h"

@interface JavaNioReadOnlyFloatArrayBuffer : JavaNioFloatArrayBuffer {
}

+ (JavaNioReadOnlyFloatArrayBuffer *)copy__WithJavaNioFloatArrayBuffer:(JavaNioFloatArrayBuffer *)other
                                                               withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE;
- (id)initWithInt:(int)capacity
   withFloatArray:(IOSFloatArray *)backingArray
          withInt:(int)arrayOffset;
- (JavaNioFloatBuffer *)asReadOnlyBuffer;
- (JavaNioFloatBuffer *)compact;
- (JavaNioFloatBuffer *)duplicate;
- (BOOL)isReadOnly;
- (IOSFloatArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioFloatBuffer *)putWithFloat:(float)c;
- (JavaNioFloatBuffer *)putWithInt:(int)index
                         withFloat:(float)c;
- (JavaNioFloatBuffer *)putWithJavaNioFloatBuffer:(JavaNioFloatBuffer *)buf;
- (JavaNioFloatBuffer *)putWithFloatArray:(IOSFloatArray *)src
                                  withInt:(int)off
                                  withInt:(int)len;
- (JavaNioFloatBuffer *)slice;
@end

#endif // _JavaNioReadOnlyFloatArrayBuffer_H_
