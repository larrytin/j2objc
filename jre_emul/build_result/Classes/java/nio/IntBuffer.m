//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/IntBuffer.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSClass.h"
#import "IOSIntArray.h"
#import "java/lang/ClassCastException.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/StringBuilder.h"
#import "java/nio/Buffer.h"
#import "java/nio/BufferFactory.h"
#import "java/nio/BufferOverflowException.h"
#import "java/nio/BufferUnderflowException.h"
#import "java/nio/ByteOrder.h"
#import "java/nio/IntBuffer.h"

@implementation JavaNioIntBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioIntBuffer *)allocateWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  if (capacity < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  return [JavaNioBufferFactory newIntBufferWithInt:capacity];
}

+ (JavaNioIntBuffer *)wrapWithJavaLangIntegerArray:(IOSIntArray *)array {
  return [JavaNioIntBuffer wrapWithJavaLangIntegerArray:array withInt:0 withInt:(int) [((IOSIntArray *) NIL_CHK(array)) count]];
}

+ (JavaNioIntBuffer *)wrapWithJavaLangIntegerArray:(IOSIntArray *)array
                                           withInt:(int)start
                                           withInt:(int)len {
  if (array == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if (start < 0 || len < 0 || (long long int) len + (long long int) start > (int) [((IOSIntArray *) NIL_CHK(array)) count]) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  JavaNioIntBuffer *buf = [JavaNioBufferFactory newIntBufferWithJavaLangIntegerArray:array];
  ((JavaNioIntBuffer *) NIL_CHK(buf)).position_ = start;
  ((JavaNioIntBuffer *) NIL_CHK(buf)).limit_ = start + len;
  return buf;
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([super initWithInt:capacity]);
}

- (IOSIntArray *)array {
  return [self protectedArray];
}

- (int)arrayOffset {
  return [self protectedArrayOffset];
}

- (JavaNioIntBuffer *)asReadOnlyBuffer {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioIntBuffer *)compact {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)compareToWithId:(JavaNioIntBuffer *)otherBuffer {
  if (otherBuffer != nil && ![otherBuffer isKindOfClass:[JavaNioIntBuffer class]]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  int compareRemaining = ([self remaining] < [((JavaNioIntBuffer *) NIL_CHK(otherBuffer)) remaining]) ? [self remaining] : [((JavaNioIntBuffer *) NIL_CHK(otherBuffer)) remaining];
  int thisPos = position__;
  int otherPos = ((JavaNioIntBuffer *) NIL_CHK(otherBuffer)).position_;
  int thisByte, otherByte;
  while (compareRemaining > 0) {
    thisByte = [self getWithInt:thisPos];
    otherByte = [((JavaNioIntBuffer *) NIL_CHK(otherBuffer)) getWithInt:otherPos];
    if (thisByte != otherByte) {
      return thisByte < otherByte ? -1 : 1;
    }
    thisPos++;
    otherPos++;
    compareRemaining--;
  }
  return [self remaining] - [((JavaNioIntBuffer *) NIL_CHK(otherBuffer)) remaining];
}

- (JavaNioIntBuffer *)duplicate {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)isEqual:(id)other {
  if (!([other isKindOfClass:[JavaNioIntBuffer class]])) {
    return NO;
  }
  JavaNioIntBuffer *otherBuffer = (JavaNioIntBuffer *) other;
  if ([self remaining] != [((JavaNioIntBuffer *) NIL_CHK(otherBuffer)) remaining]) {
    return NO;
  }
  int myPosition = position__;
  int otherPosition = ((JavaNioIntBuffer *) NIL_CHK(otherBuffer)).position_;
  BOOL equalSoFar = YES;
  while (equalSoFar && (myPosition < limit__)) {
    equalSoFar = [self getWithInt:myPosition++] == [((JavaNioIntBuffer *) NIL_CHK(otherBuffer)) getWithInt:otherPosition++];
  }
  return equalSoFar;
}

- (int)get {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioIntBuffer *)getWithJavaLangIntegerArray:(IOSIntArray *)dest {
  return [self getWithJavaLangIntegerArray:dest withInt:0 withInt:(int) [((IOSIntArray *) NIL_CHK(dest)) count]];
}

- (JavaNioIntBuffer *)getWithJavaLangIntegerArray:(IOSIntArray *)dest
                                          withInt:(int)off
                                          withInt:(int)len {
  int length = (int) [((IOSIntArray *) NIL_CHK(dest)) count];
  if (off < 0 || len < 0 || (long long int) len + (long long int) off > length) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  for (int i = off; i < off + len; i++) {
    [((IOSIntArray *) NIL_CHK(dest)) replaceIntAtIndex:i withInt:[self get]];
  }
  return self;
}

- (int)getWithInt:(int)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)hasArray {
  return [self protectedHasArray];
}

- (NSUInteger)hash {
  int myPosition = position__;
  int hash_ = 0;
  while (myPosition < limit__) {
    hash_ = hash_ + [self getWithInt:myPosition++];
  }
  return hash_;
}

- (BOOL)isDirect {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteOrder *)order {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (IOSIntArray *)protectedArray {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)protectedArrayOffset {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)protectedHasArray {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioIntBuffer *)putWithInt:(int)i {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioIntBuffer *)putWithJavaLangIntegerArray:(IOSIntArray *)src {
  return [self putWithJavaLangIntegerArray:src withInt:0 withInt:(int) [((IOSIntArray *) NIL_CHK(src)) count]];
}

- (JavaNioIntBuffer *)putWithJavaLangIntegerArray:(IOSIntArray *)src
                                          withInt:(int)off
                                          withInt:(int)len {
  int length = (int) [((IOSIntArray *) NIL_CHK(src)) count];
  if (off < 0 || len < 0 || (long long int) len + (long long int) off > length) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  for (int i = off; i < off + len; i++) {
    [self putWithInt:[((IOSIntArray *) NIL_CHK(src)) intAtIndex:i]];
  }
  return self;
}

- (JavaNioIntBuffer *)putWithJavaNioIntBuffer:(JavaNioIntBuffer *)src {
  if (src == self) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  if ([((JavaNioIntBuffer *) NIL_CHK(src)) remaining] > [self remaining]) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  IOSIntArray *contents = [[[IOSIntArray alloc] initWithLength:[((JavaNioIntBuffer *) NIL_CHK(src)) remaining]] autorelease];
  [((JavaNioIntBuffer *) NIL_CHK(src)) getWithJavaLangIntegerArray:contents];
  [self putWithJavaLangIntegerArray:contents];
  return self;
}

- (JavaNioIntBuffer *)putWithInt:(int)index
                         withInt:(int)i {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioIntBuffer *)slice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = [[[JavaLangStringBuilder alloc] init] autorelease];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithNSString:[[self getClass] getName]];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithNSString:@", status: capacity="];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithInt:[self capacity]];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithNSString:@" position="];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithInt:[self position]];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithNSString:@" limit="];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithInt:[self limit]];
  return [((JavaLangStringBuilder *) NIL_CHK(buf)) description];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
