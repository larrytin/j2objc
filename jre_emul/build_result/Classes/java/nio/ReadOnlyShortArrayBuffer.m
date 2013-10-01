//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSShortArray.h"
#include "java/nio/Buffer.h"
#include "java/nio/ReadOnlyBufferException.h"
#include "java/nio/ReadOnlyShortArrayBuffer.h"
#include "java/nio/ShortArrayBuffer.h"
#include "java/nio/ShortBuffer.h"

@implementation JavaNioReadOnlyShortArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioReadOnlyShortArrayBuffer *)copy__WithJavaNioShortArrayBuffer:(JavaNioShortArrayBuffer *)other
                                                               withInt:(int)markOfOther {
  JavaNioReadOnlyShortArrayBuffer *buf = [[[JavaNioReadOnlyShortArrayBuffer alloc] initWithInt:[((JavaNioShortArrayBuffer *) nil_chk(other)) capacity] withShortArray:other->backingArray_ withInt:other->offset_] autorelease];
  buf->limit__ = [other limit];
  buf->position__ = [other position];
  buf->mark__ = markOfOther;
  return buf;
}

- (id)initWithInt:(int)capacity
   withShortArray:(IOSShortArray *)backingArray
          withInt:(int)arrayOffset {
  return JreMemDebugAdd([super initWithInt:capacity withShortArray:backingArray withInt:arrayOffset]);
}

- (JavaNioShortBuffer *)asReadOnlyBuffer {
  return [self duplicate];
}

- (JavaNioShortBuffer *)compact {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioShortBuffer *)duplicate {
  return [JavaNioReadOnlyShortArrayBuffer copy__WithJavaNioShortArrayBuffer:self withInt:mark__];
}

- (BOOL)isReadOnly {
  return YES;
}

- (IOSShortArray *)protectedArray {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (int)protectedArrayOffset {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (BOOL)protectedHasArray {
  return NO;
}

- (JavaNioShortBuffer *)putWithJavaNioShortBuffer:(JavaNioShortBuffer *)buf {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioShortBuffer *)putWithShort:(short int)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioShortBuffer *)putWithInt:(int)index
                         withShort:(short int)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioShortBuffer *)putWithShortArray:(IOSShortArray *)src
                                  withInt:(int)off
                                  withInt:(int)len {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioShortBuffer *)slice {
  return [[[JavaNioReadOnlyShortArrayBuffer alloc] initWithInt:[self remaining] withShortArray:backingArray_ withInt:offset_ + position__] autorelease];
}

@end
