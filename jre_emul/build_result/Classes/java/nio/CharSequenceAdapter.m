//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/CharSequenceAdapter.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSCharArray.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/nio/Buffer.h"
#include "java/nio/BufferOverflowException.h"
#include "java/nio/BufferUnderflowException.h"
#include "java/nio/ByteOrder.h"
#include "java/nio/CharBuffer.h"
#include "java/nio/CharSequenceAdapter.h"
#include "java/nio/ReadOnlyBufferException.h"

@implementation JavaNioCharSequenceAdapter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioCharSequenceAdapter *)copy__WithJavaNioCharSequenceAdapter:(JavaNioCharSequenceAdapter *)other {
  JavaNioCharSequenceAdapter *buf = [[[JavaNioCharSequenceAdapter alloc] initWithJavaLangCharSequence:((JavaNioCharSequenceAdapter *) nil_chk(other))->sequence_] autorelease];
  buf->limit__ = other->limit__;
  buf->position__ = other->position__;
  buf->mark__ = other->mark__;
  return buf;
}

- (id)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)chseq {
  if (self = [super initWithInt:[((id<JavaLangCharSequence>) nil_chk(chseq)) sequenceLength]]) {
    JavaNioCharSequenceAdapter_set_sequence_(self, chseq);
    JreMemDebugAdd(self);
  }
  return self;
}

- (JavaNioCharBuffer *)asReadOnlyBuffer {
  return [self duplicate];
}

- (JavaNioCharBuffer *)compact {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioCharBuffer *)duplicate {
  return [JavaNioCharSequenceAdapter copy__WithJavaNioCharSequenceAdapter:self];
}

- (unichar)get {
  if (position__ == limit__) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  return [((id<JavaLangCharSequence>) nil_chk(sequence_)) charAtWithInt:position__++];
}

- (unichar)getWithInt:(int)index {
  if (index < 0 || index >= limit__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  return [((id<JavaLangCharSequence>) nil_chk(sequence_)) charAtWithInt:index];
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
  int newPosition = position__ + len;
  [((NSString *) nil_chk([((id<JavaLangCharSequence>) nil_chk(sequence_)) sequenceDescription])) getChars:position__ sourceEnd:newPosition destination:dest destinationBegin:off];
  position__ = newPosition;
  return self;
}

- (BOOL)isDirect {
  return NO;
}

- (BOOL)isReadOnly {
  return YES;
}

- (JavaNioByteOrder *)order {
  return [JavaNioByteOrder nativeOrder];
}

- (IOSCharArray *)protectedArray {
  @throw [[[JavaLangUnsupportedOperationException alloc] init] autorelease];
}

- (int)protectedArrayOffset {
  @throw [[[JavaLangUnsupportedOperationException alloc] init] autorelease];
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
  if ((off < 0) || (len < 0) || (long long int) off + (long long int) len > (int) [((IOSCharArray *) nil_chk(src)) count]) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
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
  return [[[JavaNioCharSequenceAdapter alloc] initWithJavaLangCharSequence:[((id<JavaLangCharSequence>) nil_chk(sequence_)) subSequenceFrom:position__ to:limit__]] autorelease];
}

- (id<JavaLangCharSequence>)subSequenceFrom:(int)start to:(int)end {
  if (end < start || start < 0 || end > [self remaining]) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  JavaNioCharSequenceAdapter *result = [JavaNioCharSequenceAdapter copy__WithJavaNioCharSequenceAdapter:self];
  ((JavaNioCharSequenceAdapter *) nil_chk(result))->position__ = position__ + start;
  result->limit__ = position__ + end;
  return result;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaNioCharSequenceAdapter_set_sequence_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaNioCharSequenceAdapter *)other {
  [super copyAllFieldsTo:other];
  JavaNioCharSequenceAdapter_set_sequence_(other, sequence_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:sequence_ name:@"sequence"]];
  return result;
}

@end
