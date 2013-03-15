//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadOnlyLongArrayBuffer.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSLongArray.h"
#import "java/nio/Buffer.h"
#import "java/nio/LongArrayBuffer.h"
#import "java/nio/LongBuffer.h"
#import "java/nio/ReadOnlyBufferException.h"
#import "java/nio/ReadOnlyLongArrayBuffer.h"

@implementation JavaNioReadOnlyLongArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioReadOnlyLongArrayBuffer *)copy__WithJavaNioLongArrayBuffer:(JavaNioLongArrayBuffer *)other
                                                             withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE {
  JavaNioReadOnlyLongArrayBuffer *buf = [[[JavaNioReadOnlyLongArrayBuffer alloc] initWithInt:[((JavaNioLongArrayBuffer *) NIL_CHK(other)) capacity] withJavaLangLongArray:((JavaNioLongArrayBuffer *) NIL_CHK(other)).backingArray withInt:((JavaNioLongArrayBuffer *) NIL_CHK(other)).offset] autorelease];
  ((JavaNioReadOnlyLongArrayBuffer *) NIL_CHK(buf)).limit_ = [((JavaNioLongArrayBuffer *) NIL_CHK(other)) limit];
  ((JavaNioReadOnlyLongArrayBuffer *) NIL_CHK(buf)).position_ = [((JavaNioLongArrayBuffer *) NIL_CHK(other)) position];
  ((JavaNioReadOnlyLongArrayBuffer *) NIL_CHK(buf)).mark_ = markOfOther;
  return buf;
}

- (id)initWithInt:(int)capacity
withJavaLangLongArray:(IOSLongArray *)backingArray
          withInt:(int)arrayOffset {
  return JreMemDebugAdd([super initWithInt:capacity withJavaLangLongArray:backingArray withInt:arrayOffset]);
}

- (JavaNioLongBuffer *)asReadOnlyBuffer {
  return [self duplicate];
}

- (JavaNioLongBuffer *)compact {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioLongBuffer *)duplicate {
  return [JavaNioReadOnlyLongArrayBuffer copy__WithJavaNioLongArrayBuffer:self withInt:mark__];
}

- (BOOL)isReadOnly {
  return YES;
}

- (IOSLongArray *)protectedArray {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (int)protectedArrayOffset {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (BOOL)protectedHasArray {
  return NO;
}

- (JavaNioLongBuffer *)putWithLongInt:(long long int)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioLongBuffer *)putWithInt:(int)index
                      withLongInt:(long long int)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioLongBuffer *)putWithJavaNioLongBuffer:(JavaNioLongBuffer *)buf {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioLongBuffer *)putWithJavaLangLongArray:(IOSLongArray *)src
                                        withInt:(int)off
                                        withInt:(int)len {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioLongBuffer *)slice {
  return [[[JavaNioReadOnlyLongArrayBuffer alloc] initWithInt:[self remaining] withJavaLangLongArray:backingArray_ withInt:offset_ + position__] autorelease];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
