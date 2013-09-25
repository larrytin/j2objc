//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ShortArrayBuffer.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSShortArray.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/System.h"
#include "java/nio/Buffer.h"
#include "java/nio/BufferUnderflowException.h"
#include "java/nio/ByteOrder.h"
#include "java/nio/ShortArrayBuffer.h"
#include "java/nio/ShortBuffer.h"

@implementation JavaNioShortArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithShortArray:(IOSShortArray *)array {
  return JreMemDebugAdd([self initJavaNioShortArrayBufferWithInt:(int) [((IOSShortArray *) nil_chk(array)) count] withShortArray:array withInt:0]);
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([self initJavaNioShortArrayBufferWithInt:capacity withShortArray:[IOSShortArray arrayWithLength:capacity] withInt:0]);
}

- (id)initJavaNioShortArrayBufferWithInt:(int)capacity
                          withShortArray:(IOSShortArray *)backingArray
                                 withInt:(int)offset {
  if (self = [super initWithInt:capacity]) {
    JavaNioShortArrayBuffer_set_backingArray_(self, backingArray);
    self->offset_ = offset;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)capacity
   withShortArray:(IOSShortArray *)backingArray
          withInt:(int)offset {
  return [self initJavaNioShortArrayBufferWithInt:capacity withShortArray:backingArray withInt:offset];
}

- (short int)get {
  if (position__ == limit__) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  return IOSShortArray_Get(nil_chk(backingArray_), offset_ + position__++);
}

- (short int)getWithInt:(int)index {
  if (index < 0 || index >= limit__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  return IOSShortArray_Get(nil_chk(backingArray_), offset_ + index);
}

- (JavaNioShortBuffer *)getWithShortArray:(IOSShortArray *)dest
                                  withInt:(int)off
                                  withInt:(int)len {
  int length = (int) [((IOSShortArray *) nil_chk(dest)) count];
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
  JavaNioShortArrayBuffer_set_backingArray_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaNioShortArrayBuffer *)other {
  [super copyAllFieldsTo:other];
  JavaNioShortArrayBuffer_set_backingArray_(other, backingArray_);
  other->offset_ = offset_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:backingArray_ name:@"backingArray"]];
  return result;
}

@end
