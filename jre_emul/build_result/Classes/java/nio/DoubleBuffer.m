//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/DoubleBuffer.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSClass.h"
#import "IOSDoubleArray.h"
#import "java/lang/ClassCastException.h"
#import "java/lang/Double.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/StringBuilder.h"
#import "java/nio/Buffer.h"
#import "java/nio/BufferFactory.h"
#import "java/nio/BufferOverflowException.h"
#import "java/nio/BufferUnderflowException.h"
#import "java/nio/ByteOrder.h"
#import "java/nio/DoubleBuffer.h"

@implementation JavaNioDoubleBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioDoubleBuffer *)allocateWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  if (capacity < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  return [JavaNioBufferFactory newDoubleBufferWithInt:capacity];
}

+ (JavaNioDoubleBuffer *)wrapWithJavaLangDoubleArray:(IOSDoubleArray *)array {
  return [JavaNioDoubleBuffer wrapWithJavaLangDoubleArray:array withInt:0 withInt:(int) [((IOSDoubleArray *) NIL_CHK(array)) count]];
}

+ (JavaNioDoubleBuffer *)wrapWithJavaLangDoubleArray:(IOSDoubleArray *)array
                                             withInt:(int)start
                                             withInt:(int)len {
  int length = (int) [((IOSDoubleArray *) NIL_CHK(array)) count];
  if (start < 0 || len < 0 || (long long int) start + (long long int) len > length) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  JavaNioDoubleBuffer *buf = [JavaNioBufferFactory newDoubleBufferWithJavaLangDoubleArray:array];
  ((JavaNioDoubleBuffer *) NIL_CHK(buf)).position_ = start;
  ((JavaNioDoubleBuffer *) NIL_CHK(buf)).limit_ = start + len;
  return buf;
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([super initWithInt:capacity]);
}

- (IOSDoubleArray *)array {
  return [self protectedArray];
}

- (int)arrayOffset {
  return [self protectedArrayOffset];
}

- (JavaNioDoubleBuffer *)asReadOnlyBuffer {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioDoubleBuffer *)compact {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)compareToWithId:(JavaNioDoubleBuffer *)otherBuffer {
  if (otherBuffer != nil && ![otherBuffer isKindOfClass:[JavaNioDoubleBuffer class]]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  int compareRemaining = ([self remaining] < [((JavaNioDoubleBuffer *) NIL_CHK(otherBuffer)) remaining]) ? [self remaining] : [((JavaNioDoubleBuffer *) NIL_CHK(otherBuffer)) remaining];
  int thisPos = position__;
  int otherPos = ((JavaNioDoubleBuffer *) NIL_CHK(otherBuffer)).position_;
  double thisDouble, otherDouble;
  while (compareRemaining > 0) {
    thisDouble = [self getWithInt:thisPos];
    otherDouble = [((JavaNioDoubleBuffer *) NIL_CHK(otherBuffer)) getWithInt:otherPos];
    if ((thisDouble != otherDouble) && ((thisDouble == thisDouble) || (otherDouble == otherDouble))) {
      return thisDouble < otherDouble ? -1 : 1;
    }
    thisPos++;
    otherPos++;
    compareRemaining--;
  }
  return [self remaining] - [((JavaNioDoubleBuffer *) NIL_CHK(otherBuffer)) remaining];
}

- (JavaNioDoubleBuffer *)duplicate {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)isEqual:(id)other {
  if (!([other isKindOfClass:[JavaNioDoubleBuffer class]])) {
    return NO;
  }
  JavaNioDoubleBuffer *otherBuffer = (JavaNioDoubleBuffer *) other;
  if ([self remaining] != [((JavaNioDoubleBuffer *) NIL_CHK(otherBuffer)) remaining]) {
    return NO;
  }
  int myPosition = position__;
  int otherPosition = ((JavaNioDoubleBuffer *) NIL_CHK(otherBuffer)).position_;
  BOOL equalSoFar = YES;
  while (equalSoFar && (myPosition < limit__)) {
    double a = [self getWithInt:myPosition++];
    double b = [((JavaNioDoubleBuffer *) NIL_CHK(otherBuffer)) getWithInt:otherPosition++];
    equalSoFar = a == b || (a != a && b != b);
  }
  return equalSoFar;
}

- (double)get {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioDoubleBuffer *)getWithJavaLangDoubleArray:(IOSDoubleArray *)dest {
  return [self getWithJavaLangDoubleArray:dest withInt:0 withInt:(int) [((IOSDoubleArray *) NIL_CHK(dest)) count]];
}

- (JavaNioDoubleBuffer *)getWithJavaLangDoubleArray:(IOSDoubleArray *)dest
                                            withInt:(int)off
                                            withInt:(int)len {
  int length = (int) [((IOSDoubleArray *) NIL_CHK(dest)) count];
  if (off < 0 || len < 0 || (long long int) off + (long long int) len > length) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  for (int i = off; i < off + len; i++) {
    [((IOSDoubleArray *) NIL_CHK(dest)) replaceDoubleAtIndex:i withDouble:[self get]];
  }
  return self;
}

- (double)getWithInt:(int)index {
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
  long long int l;
  while (myPosition < limit__) {
    l = [JavaLangDouble doubleToLongBitsWithDouble:[self getWithInt:myPosition++]];
    hash_ = hash_ + ((int) l) ^ ((int) (l >> 32));
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

- (IOSDoubleArray *)protectedArray {
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

- (JavaNioDoubleBuffer *)putWithDouble:(double)d {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioDoubleBuffer *)putWithJavaLangDoubleArray:(IOSDoubleArray *)src {
  return [self putWithJavaLangDoubleArray:src withInt:0 withInt:(int) [((IOSDoubleArray *) NIL_CHK(src)) count]];
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
  for (int i = off; i < off + len; i++) {
    [self putWithDouble:[((IOSDoubleArray *) NIL_CHK(src)) doubleAtIndex:i]];
  }
  return self;
}

- (JavaNioDoubleBuffer *)putWithJavaNioDoubleBuffer:(JavaNioDoubleBuffer *)src {
  if (src == self) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  if ([((JavaNioDoubleBuffer *) NIL_CHK(src)) remaining] > [self remaining]) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  IOSDoubleArray *doubles = [[[IOSDoubleArray alloc] initWithLength:[((JavaNioDoubleBuffer *) NIL_CHK(src)) remaining]] autorelease];
  [((JavaNioDoubleBuffer *) NIL_CHK(src)) getWithJavaLangDoubleArray:doubles];
  [self putWithJavaLangDoubleArray:doubles];
  return self;
}

- (JavaNioDoubleBuffer *)putWithInt:(int)index
                         withDouble:(double)d {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioDoubleBuffer *)slice {
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
