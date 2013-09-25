//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadOnlyCharArrayBuffer.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSCharArray.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/nio/Buffer.h"
#include "java/nio/CharArrayBuffer.h"
#include "java/nio/CharBuffer.h"
#include "java/nio/ReadOnlyBufferException.h"
#include "java/nio/ReadOnlyCharArrayBuffer.h"

@implementation JavaNioReadOnlyCharArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioReadOnlyCharArrayBuffer *)copy__WithJavaNioCharArrayBuffer:(JavaNioCharArrayBuffer *)other
                                                             withInt:(int)markOfOther {
  JavaNioReadOnlyCharArrayBuffer *buf = [[[JavaNioReadOnlyCharArrayBuffer alloc] initWithInt:[((JavaNioCharArrayBuffer *) nil_chk(other)) capacity] withCharArray:other->backingArray_ withInt:other->offset_] autorelease];
  buf->limit__ = [other limit];
  buf->position__ = [other position];
  buf->mark__ = markOfOther;
  return buf;
}

- (id)initWithInt:(int)capacity
    withCharArray:(IOSCharArray *)backingArray
          withInt:(int)arrayOffset {
  return JreMemDebugAdd([super initWithInt:capacity withCharArray:backingArray withInt:arrayOffset]);
}

- (JavaNioCharBuffer *)asReadOnlyBuffer {
  return [self duplicate];
}

- (JavaNioCharBuffer *)compact {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioCharBuffer *)duplicate {
  return [JavaNioReadOnlyCharArrayBuffer copy__WithJavaNioCharArrayBuffer:self withInt:mark__];
}

- (BOOL)isReadOnly {
  return YES;
}

- (IOSCharArray *)protectedArray {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (int)protectedArrayOffset {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (BOOL)protectedHasArray {
  return NO;
}

- (JavaNioCharBuffer *)putWithChar:(unichar)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioCharBuffer *)putWithInt:(int)index
                         withChar:(unichar)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioCharBuffer *)putWithCharArray:(IOSCharArray *)src
                                withInt:(int)off
                                withInt:(int)len {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioCharBuffer *)putWithJavaNioCharBuffer:(JavaNioCharBuffer *)src {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioCharBuffer *)putWithNSString:(NSString *)src
                               withInt:(int)start
                               withInt:(int)end {
  if ((start < 0) || (end < 0) || (long long int) start + (long long int) end > [((NSString *) nil_chk(src)) length]) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioCharBuffer *)slice {
  return [[[JavaNioReadOnlyCharArrayBuffer alloc] initWithInt:[self remaining] withCharArray:backingArray_ withInt:offset_ + position__] autorelease];
}

@end
