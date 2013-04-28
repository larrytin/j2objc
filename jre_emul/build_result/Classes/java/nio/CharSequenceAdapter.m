//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/CharSequenceAdapter.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSCharArray.h"
#import "java/lang/CharSequence.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/UnsupportedOperationException.h"
#import "java/nio/Buffer.h"
#import "java/nio/BufferOverflowException.h"
#import "java/nio/BufferUnderflowException.h"
#import "java/nio/ByteOrder.h"
#import "java/nio/CharBuffer.h"
#import "java/nio/CharSequenceAdapter.h"
#import "java/nio/ReadOnlyBufferException.h"

@implementation JavaNioCharSequenceAdapter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id<JavaLangCharSequence>)sequence {
  return sequence_;
}
- (void)setSequence:(id<JavaLangCharSequence>)sequence {
  JreOperatorRetainedAssign(&sequence_, sequence);
}
@synthesize sequence = sequence_;

+ (JavaNioCharSequenceAdapter *)copy__WithJavaNioCharSequenceAdapter:(JavaNioCharSequenceAdapter *)other OBJC_METHOD_FAMILY_NONE {
  JavaNioCharSequenceAdapter *buf = [[[JavaNioCharSequenceAdapter alloc] initWithJavaLangCharSequence:((JavaNioCharSequenceAdapter *) NIL_CHK(other)).sequence] autorelease];
  ((JavaNioCharSequenceAdapter *) NIL_CHK(buf)).limit_ = ((JavaNioCharSequenceAdapter *) NIL_CHK(other)).limit_;
  ((JavaNioCharSequenceAdapter *) NIL_CHK(buf)).position_ = ((JavaNioCharSequenceAdapter *) NIL_CHK(other)).position_;
  ((JavaNioCharSequenceAdapter *) NIL_CHK(buf)).mark_ = ((JavaNioCharSequenceAdapter *) NIL_CHK(other)).mark_;
  return buf;
}

- (id)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)chseq {
  if ((self = [super initWithInt:[((id<JavaLangCharSequence>) NIL_CHK(chseq)) sequenceLength]])) {
    JreOperatorRetainedAssign(&sequence_, chseq);
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
  return [((id<JavaLangCharSequence>) NIL_CHK(sequence_)) charAtWithInt:position__++];
}

- (unichar)getWithInt:(int)index {
  if (index < 0 || index >= limit__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  return [((id<JavaLangCharSequence>) NIL_CHK(sequence_)) charAtWithInt:index];
}

- (JavaNioCharBuffer *)getWithJavaLangCharacterArray:(IOSCharArray *)dest
                                             withInt:(int)off
                                             withInt:(int)len {
  int length = (int) [((IOSCharArray *) NIL_CHK(dest)) count];
  if ((off < 0) || (len < 0) || (long long int) off + (long long int) len > length) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  int newPosition = position__ + len;
  [[((id<JavaLangCharSequence>) NIL_CHK(sequence_)) sequenceDescription] getChars:position__ sourceEnd:newPosition destination:dest destinationBegin:off];
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

- (JavaNioCharBuffer *)putWithUnichar:(unichar)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioCharBuffer *)putWithInt:(int)index
                      withUnichar:(unichar)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioCharBuffer *)putWithJavaLangCharacterArray:(IOSCharArray *)src
                                             withInt:(int)off
                                             withInt:(int)len {
  if ((off < 0) || (len < 0) || (long long int) off + (long long int) len > (int) [((IOSCharArray *) NIL_CHK(src)) count]) {
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
  if ((start < 0) || (end < 0) || (long long int) start + (long long int) end > [NIL_CHK(src) length]) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioCharBuffer *)slice {
  return [[[JavaNioCharSequenceAdapter alloc] initWithJavaLangCharSequence:[((id<JavaLangCharSequence>) NIL_CHK(sequence_)) subSequenceFrom:position__ to:limit__]] autorelease];
}

- (id<JavaLangCharSequence>)subSequenceFrom:(int)start to:(int)end {
  if (end < start || start < 0 || end > [self remaining]) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  JavaNioCharSequenceAdapter *result = [JavaNioCharSequenceAdapter copy__WithJavaNioCharSequenceAdapter:self];
  ((JavaNioCharSequenceAdapter *) NIL_CHK(result)).position_ = position__ + start;
  ((JavaNioCharSequenceAdapter *) NIL_CHK(result)).limit_ = position__ + end;
  return result;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&sequence_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaNioCharSequenceAdapter *typedCopy = (JavaNioCharSequenceAdapter *) copy;
  typedCopy.sequence = sequence_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:sequence_ name:@"sequence"]];
  return result;
}

@end
