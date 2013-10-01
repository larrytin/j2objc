//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSByteArray.h"
#include "IOSClass.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/StringBuilder.h"
#include "java/nio/Buffer.h"
#include "java/nio/BufferFactory.h"
#include "java/nio/BufferOverflowException.h"
#include "java/nio/BufferUnderflowException.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/ByteOrder.h"
#include "org/apache/harmony/luni/platform/Endianness.h"

@implementation JavaNioByteBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioByteBuffer *)allocateWithInt:(int)capacity {
  if (capacity < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  return [JavaNioBufferFactory newByteBufferWithInt:capacity];
}

+ (JavaNioByteBuffer *)allocateDirectWithInt:(int)capacity {
  if (capacity < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  return [JavaNioBufferFactory newDirectByteBufferWithInt:capacity];
}

+ (JavaNioByteBuffer *)wrapWithByteArray:(IOSByteArray *)array {
  return [JavaNioBufferFactory newByteBufferWithByteArray:array];
}

+ (JavaNioByteBuffer *)wrapWithByteArray:(IOSByteArray *)array
                                 withInt:(int)start
                                 withInt:(int)len {
  int length = (int) [((IOSByteArray *) nil_chk(array)) count];
  if ((start < 0) || (len < 0) || ((long long int) start + (long long int) len > length)) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  JavaNioByteBuffer *buf = [JavaNioBufferFactory newByteBufferWithByteArray:array];
  ((JavaNioByteBuffer *) nil_chk(buf))->position__ = start;
  buf->limit__ = start + len;
  return buf;
}

- (id)initWithInt:(int)capacity {
  if (self = [super initWithInt:capacity]) {
    JavaNioByteBuffer_set_order__(self, [OrgApacheHarmonyLuniPlatformEndianness getBIG_ENDIAN]);
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
  int compareRemaining = ([self remaining] < [((JavaNioByteBuffer *) nil_chk(otherBuffer)) remaining]) ? [self remaining] : [otherBuffer remaining];
  int thisPos = position__;
  int otherPos = otherBuffer->position__;
  char thisByte, otherByte;
  while (compareRemaining > 0) {
    thisByte = [self getWithInt:thisPos];
    otherByte = [otherBuffer getWithInt:otherPos];
    if (thisByte != otherByte) {
      return thisByte < otherByte ? -1 : 1;
    }
    thisPos++;
    otherPos++;
    compareRemaining--;
  }
  return [self remaining] - [otherBuffer remaining];
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
  JavaNioByteBuffer *otherBuffer = (JavaNioByteBuffer *) check_class_cast(other, [JavaNioByteBuffer class]);
  if ([self remaining] != [((JavaNioByteBuffer *) nil_chk(otherBuffer)) remaining]) {
    return NO;
  }
  int myPosition = position__;
  int otherPosition = otherBuffer->position__;
  BOOL equalSoFar = YES;
  while (equalSoFar && (myPosition < limit__)) {
    equalSoFar = [self getWithInt:myPosition++] == [otherBuffer getWithInt:otherPosition++];
  }
  return equalSoFar;
}

- (char)get {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)getWithByteArray:(IOSByteArray *)dest {
  return [self getWithByteArray:dest withInt:0 withInt:(int) [((IOSByteArray *) nil_chk(dest)) count]];
}

- (JavaNioByteBuffer *)getWithByteArray:(IOSByteArray *)dest
                                withInt:(int)off
                                withInt:(int)len {
  int length = (int) [((IOSByteArray *) nil_chk(dest)) count];
  if ((off < 0) || (len < 0) || ((long long int) off + (long long int) len > length)) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  for (int i = off; i < off + len; i++) {
    (*IOSByteArray_GetRef(dest, i)) = [self get];
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
  JavaNioByteBuffer_set_order__(self, byteOrder == [JavaNioByteOrder getBIG_ENDIAN] ? [OrgApacheHarmonyLuniPlatformEndianness getBIG_ENDIAN] : [OrgApacheHarmonyLuniPlatformEndianness getLITTLE_ENDIAN]);
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

- (JavaNioByteBuffer *)putWithByte:(char)b {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putWithByteArray:(IOSByteArray *)src {
  return [self putWithByteArray:src withInt:0 withInt:(int) [((IOSByteArray *) nil_chk(src)) count]];
}

- (JavaNioByteBuffer *)putWithByteArray:(IOSByteArray *)src
                                withInt:(int)off
                                withInt:(int)len {
  int length = (int) [((IOSByteArray *) nil_chk(src)) count];
  if ((off < 0) || (len < 0) || ((long long int) off + (long long int) len > length)) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  for (int i = off; i < off + len; i++) {
    [self putWithByte:IOSByteArray_Get(src, i)];
  }
  return self;
}

- (JavaNioByteBuffer *)putWithJavaNioByteBuffer:(JavaNioByteBuffer *)src {
  if (src == self) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  if ([((JavaNioByteBuffer *) nil_chk(src)) remaining] > [self remaining]) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  IOSByteArray *contents = [IOSByteArray arrayWithLength:[src remaining]];
  [src getWithByteArray:contents];
  [self putWithByteArray:contents];
  return self;
}

- (JavaNioByteBuffer *)putWithInt:(int)index
                         withByte:(char)b {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putCharWithChar:(unichar)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putCharWithInt:(int)index
                             withChar:(unichar)value {
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

- (JavaNioByteBuffer *)putLongWithLong:(long long int)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putLongWithInt:(int)index
                             withLong:(long long int)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putShortWithShort:(short int)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteBuffer *)putShortWithInt:(int)index
                             withShort:(short int)value {
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
  [buf appendWithNSString:[[self getClass] getName]];
  [buf appendWithNSString:@", status: capacity="];
  [buf appendWithInt:[self capacity]];
  [buf appendWithNSString:@" position="];
  [buf appendWithInt:[self position]];
  [buf appendWithNSString:@" limit="];
  [buf appendWithInt:[self limit]];
  return [buf description];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaNioByteBuffer_set_order__(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaNioByteBuffer *)other {
  [super copyAllFieldsTo:other];
  JavaNioByteBuffer_set_order__(other, order__);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:order__ name:@"order_"]];
  return result;
}

@end
