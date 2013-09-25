//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/IntArrayBuffer.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaNioIntArrayBuffer_H_
#define _JavaNioIntArrayBuffer_H_

@class IOSIntArray;
@class JavaNioByteOrder;

#import "JreEmulation.h"
#include "java/nio/IntBuffer.h"

@interface JavaNioIntArrayBuffer : JavaNioIntBuffer {
 @public
  IOSIntArray *backingArray_;
  int offset_;
}

- (id)initWithIntArray:(IOSIntArray *)array;
- (id)initWithInt:(int)capacity;
- (id)initWithInt:(int)capacity
     withIntArray:(IOSIntArray *)backingArray
          withInt:(int)offset;
- (int)get;
- (int)getWithInt:(int)index;
- (JavaNioIntBuffer *)getWithIntArray:(IOSIntArray *)dest
                              withInt:(int)off
                              withInt:(int)len;
- (BOOL)isDirect;
- (JavaNioByteOrder *)order;
- (void)copyAllFieldsTo:(JavaNioIntArrayBuffer *)other;
@end

J2OBJC_FIELD_SETTER(JavaNioIntArrayBuffer, backingArray_, IOSIntArray *)

#endif // _JavaNioIntArrayBuffer_H_
