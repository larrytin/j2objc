//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadWriteDoubleArrayBuffer.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSDoubleArray.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/System.h"
#import "java/nio/Buffer.h"
#import "java/nio/BufferOverflowException.h"
#import "java/nio/DoubleArrayBuffer.h"
#import "java/nio/DoubleBuffer.h"
#import "java/nio/ReadOnlyDoubleArrayBuffer.h"
#import "java/nio/ReadWriteDoubleArrayBuffer.h"

@implementation JavaNioReadWriteDoubleArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioReadWriteDoubleArrayBuffer *)copy__WithJavaNioDoubleArrayBuffer:(JavaNioDoubleArrayBuffer *)other
                                                                  withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE {
  JavaNioReadWriteDoubleArrayBuffer *buf = [[[JavaNioReadWriteDoubleArrayBuffer alloc] initWithInt:[((JavaNioDoubleArrayBuffer *) NIL_CHK(other)) capacity] withJavaLangDoubleArray:((JavaNioDoubleArrayBuffer *) NIL_CHK(other)).backingArray withInt:((JavaNioDoubleArrayBuffer *) NIL_CHK(other)).offset] autorelease];
  ((JavaNioReadWriteDoubleArrayBuffer *) NIL_CHK(buf)).limit_ = [((JavaNioDoubleArrayBuffer *) NIL_CHK(other)) limit];
  ((JavaNioReadWriteDoubleArrayBuffer *) NIL_CHK(buf)).position_ = [((JavaNioDoubleArrayBuffer *) NIL_CHK(other)) position];
  ((JavaNioReadWriteDoubleArrayBuffer *) NIL_CHK(buf)).mark_ = markOfOther;
  return buf;
}

- (id)initWithJavaLangDoubleArray:(IOSDoubleArray *)array {
  return JreMemDebugAdd([super initWithJavaLangDoubleArray:array]);
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([super initWithInt:capacity]);
}

- (id)initWithInt:(int)capacity
withJavaLangDoubleArray:(IOSDoubleArray *)backingArray
          withInt:(int)arrayOffset {
  return JreMemDebugAdd([super initWithInt:capacity withJavaLangDoubleArray:backingArray withInt:arrayOffset]);
}

- (JavaNioDoubleBuffer *)asReadOnlyBuffer {
  return [JavaNioReadOnlyDoubleArrayBuffer copy__WithJavaNioDoubleArrayBuffer:self withInt:mark__];
}

- (JavaNioDoubleBuffer *)compact {
  [JavaLangSystem arraycopyWithId:backingArray_ withInt:position__ + offset_ withId:backingArray_ withInt:offset_ withInt:[self remaining]];
  position__ = limit__ - position__;
  limit__ = capacity__;
  mark__ = JavaNioBuffer_UNSET_MARK;
  return self;
}

- (JavaNioDoubleBuffer *)duplicate {
  return [JavaNioReadWriteDoubleArrayBuffer copy__WithJavaNioDoubleArrayBuffer:self withInt:mark__];
}

- (BOOL)isReadOnly {
  return NO;
}

- (IOSDoubleArray *)protectedArray {
  return backingArray_;
}

- (int)protectedArrayOffset {
  return offset_;
}

- (BOOL)protectedHasArray {
  return YES;
}

- (JavaNioDoubleBuffer *)putWithDouble:(double)c {
  if (position__ == limit__) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  [((IOSDoubleArray *) NIL_CHK(backingArray_)) replaceDoubleAtIndex:offset_ + position__++ withDouble:c];
  return self;
}

- (JavaNioDoubleBuffer *)putWithInt:(int)index
                         withDouble:(double)c {
  if (index < 0 || index >= limit__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  [((IOSDoubleArray *) NIL_CHK(backingArray_)) replaceDoubleAtIndex:offset_ + index withDouble:c];
  return self;
}

- (JavaNioDoubleBuffer *)putWithJavaLangDoubleArray:(IOSDoubleArray *)src
                                            withInt:(int)off
                                            withInt:(int)len {
  int length = (int) [((IOSDoubleArray *) NIL_CHK(src)) count];
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

- (JavaNioDoubleBuffer *)slice {
  return [[[JavaNioReadWriteDoubleArrayBuffer alloc] initWithInt:[self remaining] withJavaLangDoubleArray:backingArray_ withInt:offset_ + position__] autorelease];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
