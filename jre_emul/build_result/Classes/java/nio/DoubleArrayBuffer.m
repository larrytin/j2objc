//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/DoubleArrayBuffer.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSDoubleArray.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/System.h"
#include "java/nio/Buffer.h"
#include "java/nio/BufferUnderflowException.h"
#include "java/nio/ByteOrder.h"
#include "java/nio/DoubleArrayBuffer.h"
#include "java/nio/DoubleBuffer.h"

@implementation JavaNioDoubleArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithDoubleArray:(IOSDoubleArray *)array {
  return JreMemDebugAdd([self initJavaNioDoubleArrayBufferWithInt:(int) [((IOSDoubleArray *) nil_chk(array)) count] withDoubleArray:array withInt:0]);
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([self initJavaNioDoubleArrayBufferWithInt:capacity withDoubleArray:[IOSDoubleArray arrayWithLength:capacity] withInt:0]);
}

- (id)initJavaNioDoubleArrayBufferWithInt:(int)capacity
                          withDoubleArray:(IOSDoubleArray *)backingArray
                                  withInt:(int)offset {
  if ((self = [super initWithInt:capacity])) {
    JavaNioDoubleArrayBuffer_set_backingArray_(self, backingArray);
    self->offset_ = offset;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)capacity
  withDoubleArray:(IOSDoubleArray *)backingArray
          withInt:(int)offset {
  return [self initJavaNioDoubleArrayBufferWithInt:capacity withDoubleArray:backingArray withInt:offset];
}

- (double)get {
  if (position__ == limit__) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  return [((IOSDoubleArray *) nil_chk(backingArray_)) doubleAtIndex:offset_ + position__++];
}

- (double)getWithInt:(int)index {
  if (index < 0 || index >= limit__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  return [((IOSDoubleArray *) nil_chk(backingArray_)) doubleAtIndex:offset_ + index];
}

- (JavaNioDoubleBuffer *)getWithDoubleArray:(IOSDoubleArray *)dest
                                    withInt:(int)off
                                    withInt:(int)len {
  int length = (int) [((IOSDoubleArray *) nil_chk(dest)) count];
  if (off < 0 || len < 0 || (long long int) off + (long long int) len > length) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  [JavaLangSystem arraycopyWithId:backingArray_ withInt:offset_ + position__ withId:dest withInt:off withInt:len];
  position__ += len;
  return self;
}

- (BOOL)isDirect {
  return NO;
}

- (JavaNioByteOrder *)order {
  return [JavaNioByteOrder nativeOrder];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaNioDoubleArrayBuffer_set_backingArray_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaNioDoubleArrayBuffer *)other {
  [super copyAllFieldsTo:other];
  JavaNioDoubleArrayBuffer_set_backingArray_(other, backingArray_);
  other->offset_ = offset_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:backingArray_ name:@"backingArray"]];
  return result;
}

@end
