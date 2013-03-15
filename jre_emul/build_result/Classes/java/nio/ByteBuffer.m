//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ByteBuffer.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSByteArray.h"
#import "IOSClass.h"
#import "java/lang/ClassCastException.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/StringBuilder.h"
#import "java/nio/Buffer.h"
#import "java/nio/BufferFactory.h"
#import "java/nio/BufferOverflowException.h"
#import "java/nio/BufferUnderflowException.h"
#import "java/nio/ByteBuffer.h"
#import "java/nio/ByteOrder.h"
#import "org/apache/harmony/luni/platform/Endianness.h"

@implementation JavaNioByteBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (OrgApacheHarmonyLuniPlatformEndianness *)order_ {
  return [[order__ retain] autorelease];
}
- (void)setOrder_:(OrgApacheHarmonyLuniPlatformEndianness *)order_ {
  JreOperatorRetainedAssign(&order__, order_);
}
@synthesize order_ = order__;

+ (JavaNioByteBuffer *)allocateWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  if (capacity < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  return [JavaNioBufferFactory newByteBufferWithInt:capacity];
}

+ (JavaNioByteBuffer *)allocateDirectWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  if (capacity < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  return [JavaNioBufferFactory newDirectByteBufferWithInt:capacity];
}

+ (JavaNioByteBuffer *)wrapWithJavaLangByteArray:(IOSByteArray *)array {
  return [JavaNioBufferFactory newByteBufferWithJavaLangByteArray:array];
}

+ (JavaNioByteBuffer *)wrapWithJavaLangByteArray:(IOSByteArray *)array
                                         withInt:(int)start
                                         withInt:(int)len {
  int length = (int) [((IOSByteArray *) NIL_CHK(array)) count];
  if ((start < 0) || (len < 0) || ((long long int) start + (long long int) len > length)) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  JavaNioByteBuffer *buf = [JavaNioBufferFactory newByteBufferWithJavaLangByteArray:array];
  ((JavaNioByteBuffer *) NIL_CHK(buf)).position_ = start;
  ((JavaNioByteBuffer *) NIL_CHK(buf)).limit_ = start + len;
  return buf;
}

- (id)initWithInt:(int)capacity {
  if ((self = [super initWithInt:capacity])) {
    JreOperatorRetainedAssign(&order__, [OrgApacheHarmonyLuniPlatformEndianness getBIG_ENDIAN]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (IOSByteArray *)array {
  return [self protectedArray];
}

- (int)arrayOffset {
  return [self protectedArrayOffset];
}

- (JavaNioByteBuffer *)asReadOnlyBuffer {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)compact {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)compareToWithId:(JavaNioByteBuffer *)otherBuffer {
  if (otherBuffer != nil && ![otherBuffer isKindOfClass:[JavaNioByteBuffer class]]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  int compareRemaining = ([self remaining] < [((JavaNioByteBuffer *) NIL_CHK(otherBuffer)) remaining]) ? [self remaining] : [((JavaNioByteBuffer *) NIL_CHK(otherBuffer)) remaining];
  int thisPos = position__;
  int otherPos = ((JavaNioByteBuffer *) NIL_CHK(otherBuffer)).position_;
  char thisByte, otherByte;
  while (compareRemaining > 0) {
    thisByte = [self getWithInt:thisPos];
    otherByte = [((JavaNioByteBuffer *) NIL_CHK(otherBuffer)) getWithInt:otherPos];
    if (thisByte != otherByte) {
      return thisByte < otherByte ? -1 : 1;
    }
    thisPos++;
    otherPos++;
    compareRemaining--;
  }
  return [self remaining] - [((JavaNioByteBuffer *) NIL_CHK(otherBuffer)) remaining];
}

- (JavaNioByteBuffer *)duplicate {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)isEqual:(id)other {
  if (!([other isKindOfClass:[JavaNioByteBuffer class]])) {
    return NO;
  }
  JavaNioByteBuffer *otherBuffer = (JavaNioByteBuffer *) other;
  if ([self remaining] != [((JavaNioByteBuffer *) NIL_CHK(otherBuffer)) remaining]) {
    return NO;
  }
  int myPosition = position__;
  int otherPosition = ((JavaNioByteBuffer *) NIL_CHK(otherBuffer)).position_;
  BOOL equalSoFar = YES;
  while (equalSoFar && (myPosition < limit__)) {
    equalSoFar = [self getWithInt:myPosition++] == [((JavaNioByteBuffer *) NIL_CHK(otherBuffer)) getWithInt:otherPosition++];
  }
  return equalSoFar;
}

- (char)get {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)getWithJavaLangByteArray:(IOSByteArray *)dest {
  return [self getWithJavaLangByteArray:dest withInt:0 withInt:(int) [((IOSByteArray *) NIL_CHK(dest)) count]];
}

- (JavaNioByteBuffer *)getWithJavaLangByteArray:(IOSByteArray *)dest
                                        withInt:(int)off
                                        withInt:(int)len {
  int length = (int) [((IOSByteArray *) NIL_CHK(dest)) count];
  if ((off < 0) || (len < 0) || ((long long int) off + (long long int) len > length)) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  for (int i = off; i < off + len; i++) {
    [((IOSByteArray *) NIL_CHK(dest)) replaceByteAtIndex:i withByte:[self get]];
  }
  return self;
}

- (char)getWithInt:(int)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (unichar)getChar {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (unichar)getCharWithInt:(int)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)getDouble {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)getDoubleWithInt:(int)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)getFloat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)getFloatWithInt:(int)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)getInt {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)getIntWithInt:(int)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (long long int)getLong {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (long long int)getLongWithInt:(int)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (short int)getShort {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (short int)getShortWithInt:(int)index {
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
  return order__ == [OrgApacheHarmonyLuniPlatformEndianness getBIG_ENDIAN] ? [JavaNioByteOrder getBIG_ENDIAN] : [JavaNioByteOrder getLITTLE_ENDIAN];
}

- (JavaNioByteBuffer *)orderWithJavaNioByteOrder:(JavaNioByteOrder *)byteOrder {
  return [self orderImplWithJavaNioByteOrder:byteOrder];
}

- (JavaNioByteBuffer *)orderImplWithJavaNioByteOrder:(JavaNioByteOrder *)byteOrder {
  JreOperatorRetainedAssign(&order__, byteOrder == [JavaNioByteOrder getBIG_ENDIAN] ? [OrgApacheHarmonyLuniPlatformEndianness getBIG_ENDIAN] : [OrgApacheHarmonyLuniPlatformEndianness getLITTLE_ENDIAN]);
  return self;
}

- (IOSByteArray *)protectedArray {
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

- (JavaNioByteBuffer *)putWithChar:(char)b {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putWithJavaLangByteArray:(IOSByteArray *)src {
  return [self putWithJavaLangByteArray:src withInt:0 withInt:(int) [((IOSByteArray *) NIL_CHK(src)) count]];
}

- (JavaNioByteBuffer *)putWithJavaLangByteArray:(IOSByteArray *)src
                                        withInt:(int)off
                                        withInt:(int)len {
  int length = (int) [((IOSByteArray *) NIL_CHK(src)) count];
  if ((off < 0) || (len < 0) || ((long long int) off + (long long int) len > length)) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  for (int i = off; i < off + len; i++) {
    [self putWithChar:[((IOSByteArray *) NIL_CHK(src)) byteAtIndex:i]];
  }
  return self;
}

- (JavaNioByteBuffer *)putWithJavaNioByteBuffer:(JavaNioByteBuffer *)src {
  if (src == self) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  if ([((JavaNioByteBuffer *) NIL_CHK(src)) remaining] > [self remaining]) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  IOSByteArray *contents = [[[IOSByteArray alloc] initWithLength:[((JavaNioByteBuffer *) NIL_CHK(src)) remaining]] autorelease];
  [((JavaNioByteBuffer *) NIL_CHK(src)) getWithJavaLangByteArray:contents];
  [self putWithJavaLangByteArray:contents];
  return self;
}

- (JavaNioByteBuffer *)putWithInt:(int)index
                         withChar:(char)b {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putCharWithUnichar:(unichar)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putCharWithInt:(int)index
                          withUnichar:(unichar)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putDoubleWithDouble:(double)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putDoubleWithInt:(int)index
                             withDouble:(double)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putFloatWithFloat:(float)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putFloatWithInt:(int)index
                             withFloat:(float)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putIntWithInt:(int)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putIntWithInt:(int)index
                             withInt:(int)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putLongWithLongInt:(long long int)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putLongWithInt:(int)index
                          withLongInt:(long long int)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putShortWithShortInt:(short int)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putShortWithInt:(int)index
                          withShortInt:(short int)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)slice {
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
  JreOperatorRetainedAssign(&order__, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaNioByteBuffer *typedCopy = (JavaNioByteBuffer *) copy;
  typedCopy.order_ = order__;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:order__ name:@"order_"]];
  return result;
}

@end
