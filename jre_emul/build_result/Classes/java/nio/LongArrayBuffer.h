//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/LongArrayBuffer.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaNioLongArrayBuffer_H_
#define _JavaNioLongArrayBuffer_H_

@class IOSLongArray;
@class JavaNioByteOrder;

#import "JreEmulation.h"
#include "java/nio/LongBuffer.h"

@interface JavaNioLongArrayBuffer : JavaNioLongBuffer {
 @public
  IOSLongArray *backingArray_;
  int offset_;
}

- (id)initWithLongArray:(IOSLongArray *)array;
- (id)initWithInt:(int)capacity;
- (id)initWithInt:(int)capacity
    withLongArray:(IOSLongArray *)backingArray
          withInt:(int)offset;
- (long long int)get;
- (long long int)getWithInt:(int)index;
- (JavaNioLongBuffer *)getWithLongArray:(IOSLongArray *)dest
                                withInt:(int)off
                                withInt:(int)len;
- (BOOL)isDirect;
- (JavaNioByteOrder *)order;
- (void)copyAllFieldsTo:(JavaNioLongArrayBuffer *)other;
@end

J2OBJC_FIELD_SETTER(JavaNioLongArrayBuffer, backingArray_, IOSLongArray *)

#endif // _JavaNioLongArrayBuffer_H_
