//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/CharArrayBuffer.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSCharArray.h"
#import "java/lang/CharSequence.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/System.h"
#import "java/nio/Buffer.h"
#import "java/nio/BufferUnderflowException.h"
#import "java/nio/ByteOrder.h"
#import "java/nio/CharArrayBuffer.h"
#import "java/nio/CharBuffer.h"

@implementation JavaNioCharArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (IOSCharArray *)backingArray {
  return backingArray_;
}
- (void)setBackingArray:(IOSCharArray *)backingArray {
  JreOperatorRetainedAssign(&backingArray_, backingArray);
}
@synthesize backingArray = backingArray_;
@synthesize offset = offset_;

- (id)initWithJavaLangCharacterArray:(IOSCharArray *)array {
  return JreMemDebugAdd([self initJavaNioCharArrayBufferWithInt:(int) [((IOSCharArray *) NIL_CHK(array)) count] withJavaLangCharacterArray:array withInt:0]);
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([self initJavaNioCharArrayBufferWithInt:capacity withJavaLangCharacterArray:[[[IOSCharArray alloc] initWithLength:capacity] autorelease] withInt:0]);
}

- (id)initJavaNioCharArrayBufferWithInt:(int)capacity
             withJavaLangCharacterArray:(IOSCharArray *)backingArray
                                withInt:(int)offset {
  if ((self = [super initWithInt:capacity])) {
    self.backingArray = backingArray;
    self.offset = offset;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)capacity
withJavaLangCharacterArray:(IOSCharArray *)backingArray
          withInt:(int)offset {
  return [self initJavaNioCharArrayBufferWithInt:capacity withJavaLangCharacterArray:backingArray withInt:offset];
}

- (unichar)get {
  if (position__ == limit__) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  return [((IOSCharArray *) NIL_CHK(backingArray_)) charAtIndex:offset_ + position__++];
}

- (unichar)getWithInt:(int)index {
  if (index < 0 || index >= limit__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  return [((IOSCharArray *) NIL_CHK(backingArray_)) charAtIndex:offset_ + index];
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
  [((JavaNioCharBuffer *) NIL_CHK(result)) limitWithInt:position__ + end];
  [((JavaNioCharBuffer *) NIL_CHK(result)) positionWithInt:position__ + start];
  return result;
}

- (NSString *)sequenceDescription {
  return [NSString valueOfChars:backingArray_ offset:offset_ + position__ count:[self remaining]];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&backingArray_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaNioCharArrayBuffer *typedCopy = (JavaNioCharArrayBuffer *) copy;
  typedCopy.backingArray = backingArray_;
  typedCopy.offset = offset_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:backingArray_ name:@"backingArray"]];
  return result;
}

@end
