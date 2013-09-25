//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadWriteIntArrayBuffer.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSIntArray.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/System.h"
#include "java/nio/Buffer.h"
#include "java/nio/BufferOverflowException.h"
#include "java/nio/IntArrayBuffer.h"
#include "java/nio/IntBuffer.h"
#include "java/nio/ReadOnlyIntArrayBuffer.h"
#include "java/nio/ReadWriteIntArrayBuffer.h"

@implementation JavaNioReadWriteIntArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioReadWriteIntArrayBuffer *)copy__WithJavaNioIntArrayBuffer:(JavaNioIntArrayBuffer *)other
                                                            withInt:(int)markOfOther {
  JavaNioReadWriteIntArrayBuffer *buf = [[[JavaNioReadWriteIntArrayBuffer alloc] initWithInt:[((JavaNioIntArrayBuffer *) nil_chk(other)) capacity] withIntArray:other->backingArray_ withInt:other->offset_] autorelease];
  buf->limit__ = [other limit];
  buf->position__ = [other position];
  buf->mark__ = markOfOther;
  return buf;
}

- (id)initWithIntArray:(IOSIntArray *)array {
  return JreMemDebugAdd([super initWithIntArray:array]);
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([super initWithInt:capacity]);
}

- (id)initWithInt:(int)capacity
     withIntArray:(IOSIntArray *)backingArray
          withInt:(int)arrayOffset {
  return JreMemDebugAdd([super initWithInt:capacity withIntArray:backingArray withInt:arrayOffset]);
}

- (JavaNioIntBuffer *)asReadOnlyBuffer {
  return [JavaNioReadOnlyIntArrayBuffer copy__WithJavaNioIntArrayBuffer:self withInt:mark__];
}

- (JavaNioIntBuffer *)compact {
  [JavaLangSystem arraycopyWithId:backingArray_ withInt:position__ + offset_ withId:backingArray_ withInt:offset_ withInt:[self remaining]];
  position__ = limit__ - position__;
  limit__ = capacity__;
  mark__ = JavaNioBuffer_UNSET_MARK;
  return self;
}

- (JavaNioIntBuffer *)duplicate {
  return [JavaNioReadWriteIntArrayBuffer copy__WithJavaNioIntArrayBuffer:self withInt:mark__];
}

- (BOOL)isReadOnly {
  return NO;
}

- (IOSIntArray *)protectedArray {
  return backingArray_;
}

- (int)protectedArrayOffset {
  return offset_;
}

- (BOOL)protectedHasArray {
  return YES;
}

- (JavaNioIntBuffer *)putWithInt:(int)c {
  if (position__ == limit__) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  (*IOSIntArray_GetRef(nil_chk(backingArray_), offset_ + position__++)) = c;
  return self;
}

- (JavaNioIntBuffer *)putWithInt:(int)index
                         withInt:(int)c {
  if (index < 0 || index >= limit__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  (*IOSIntArray_GetRef(nil_chk(backingArray_), offset_ + index)) = c;
  return self;
}

- (JavaNioIntBuffer *)putWithIntArray:(IOSIntArray *)src
                              withInt:(int)off
                              withInt:(int)len {
  int length = (int) [((IOSIntArray *) nil_chk(src)) count];
  if (off < 0 || len < 0 || (long long int) off + (long long int) len > length) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  [JavaLangSystem arraycopyWithId:src withInt:off withId:backingArray_ withInt:offset_ + position__ withInt:len];
  position__ += len;
  return self;
}

- (JavaNioIntBuffer *)slice {
  return [[[JavaNioReadWriteIntArrayBuffer alloc] initWithInt:[self remaining] withIntArray:backingArray_ withInt:offset_ + position__] autorelease];
}

@end
