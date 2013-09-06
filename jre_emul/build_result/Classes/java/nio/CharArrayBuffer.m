//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/CharArrayBuffer.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSCharArray.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/System.h"
#include "java/nio/Buffer.h"
#include "java/nio/BufferUnderflowException.h"
#include "java/nio/ByteOrder.h"
#include "java/nio/CharArrayBuffer.h"
#include "java/nio/CharBuffer.h"

@implementation JavaNioCharArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithCharArray:(IOSCharArray *)array {
  return JreMemDebugAdd([self initJavaNioCharArrayBufferWithInt:(int) [((IOSCharArray *) nil_chk(array)) count] withCharArray:array withInt:0]);
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([self initJavaNioCharArrayBufferWithInt:capacity withCharArray:[IOSCharArray arrayWithLength:capacity] withInt:0]);
}

- (id)initJavaNioCharArrayBufferWithInt:(int)capacity
                          withCharArray:(IOSCharArray *)backingArray
                                withInt:(int)offset {
  if ((self = [super initWithInt:capacity])) {
    JavaNioCharArrayBuffer_set_backingArray_(self, backingArray);
    self->offset_ = offset;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)capacity
    withCharArray:(IOSCharArray *)backingArray
          withInt:(int)offset {
  return [self initJavaNioCharArrayBufferWithInt:capacity withCharArray:backingArray withInt:offset];
}

- (unichar)get {
  if (position__ == limit__) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  return [((IOSCharArray *) nil_chk(backingArray_)) charAtIndex:offset_ + position__++];
}

- (unichar)getWithInt:(int)index {
  if (index < 0 || index >= limit__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  return [((IOSCharArray *) nil_chk(backingArray_)) charAtIndex:offset_ + index];
}

- (JavaNioCharBuffer *)getWithCharArray:(IOSCharArray *)dest
                                withInt:(int)off
                                withInt:(int)len {
  int length = (int) [((IOSCharArray *) nil_chk(dest)) count];
  if ((off < 0) || (len < 0) || (long long int) off + (long long int) len > length) {
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

- (id<JavaLangCharSequence>)subSequenceFrom:(int)start to:(int)end {
  if (start < 0 || end < start || end > [self remaining]) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  JavaNioCharBuffer *result = [self duplicate];
  [((JavaNioCharBuffer *) nil_chk(result)) limitWithInt:position__ + end];
  [result positionWithInt:position__ + start];
  return result;
}

- (NSString *)sequenceDescription {
  return [NSString valueOfChars:backingArray_ offset:offset_ + position__ count:[self remaining]];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaNioCharArrayBuffer_set_backingArray_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaNioCharArrayBuffer *)other {
  [super copyAllFieldsTo:other];
  JavaNioCharArrayBuffer_set_backingArray_(other, backingArray_);
  other->offset_ = offset_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:backingArray_ name:@"backingArray"]];
  return result;
}

@end
