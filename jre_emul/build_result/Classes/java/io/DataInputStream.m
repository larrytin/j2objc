//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/DataInputStream.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSByteArray.h"
#include "IOSCharArray.h"
#include "IOSClass.h"
#include "java/io/DataInput.h"
#include "java/io/DataInputStream.h"
#include "java/io/EOFException.h"
#include "java/io/FilterInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/PushbackInputStream.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/harmony/luni/util/Util.h"

@implementation JavaIoDataInputStream

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  if (self = [super initWithJavaIoInputStream:inArg]) {
    JavaIoDataInputStream_set_buff_(self, [IOSByteArray arrayWithLength:8]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (int)readWithByteArray:(IOSByteArray *)buffer {
  return [((JavaIoInputStream *) nil_chk(in_)) readWithByteArray:buffer withInt:0 withInt:(int) [((IOSByteArray *) nil_chk(buffer)) count]];
}

+ (IOSObjectArray *)__exceptions_readWithByteArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)readWithByteArray:(IOSByteArray *)buffer
                 withInt:(int)offset
                 withInt:(int)length {
  return [((JavaIoInputStream *) nil_chk(in_)) readWithByteArray:buffer withInt:offset withInt:length];
}

+ (IOSObjectArray *)__exceptions_readWithByteArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (BOOL)readBoolean {
  int temp = [((JavaIoInputStream *) nil_chk(in_)) read];
  if (temp < 0) {
    @throw [[[JavaIoEOFException alloc] init] autorelease];
  }
  return temp != 0;
}

+ (IOSObjectArray *)__exceptions_readBoolean {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (char)readByte {
  int temp = [((JavaIoInputStream *) nil_chk(in_)) read];
  if (temp < 0) {
    @throw [[[JavaIoEOFException alloc] init] autorelease];
  }
  return (char) temp;
}

+ (IOSObjectArray *)__exceptions_readByte {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)readToBuffWithInt:(int)count {
  int offset = 0;
  while (offset < count) {
    int bytesRead = [((JavaIoInputStream *) nil_chk(in_)) readWithByteArray:buff_ withInt:offset withInt:count - offset];
    if (bytesRead == -1) return bytesRead;
    offset += bytesRead;
  }
  return offset;
}

+ (IOSObjectArray *)__exceptions_readToBuffWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (unichar)readChar {
  if ([self readToBuffWithInt:2] < 0) {
    @throw [[[JavaIoEOFException alloc] init] autorelease];
  }
  return (unichar) (((IOSByteArray_Get(nil_chk(buff_), 0) & (int) 0xff) << 8) | (IOSByteArray_Get(buff_, 1) & (int) 0xff));
}

+ (IOSObjectArray *)__exceptions_readChar {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (double)readDouble {
  return [JavaLangDouble longBitsToDoubleWithLong:[self readLong]];
}

+ (IOSObjectArray *)__exceptions_readDouble {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (float)readFloat {
  return [JavaLangFloat intBitsToFloatWithInt:[self readInt]];
}

+ (IOSObjectArray *)__exceptions_readFloat {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)readFullyWithByteArray:(IOSByteArray *)buffer {
  [self readFullyWithByteArray:buffer withInt:0 withInt:(int) [((IOSByteArray *) nil_chk(buffer)) count]];
}

+ (IOSObjectArray *)__exceptions_readFullyWithByteArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)readFullyWithByteArray:(IOSByteArray *)buffer
                       withInt:(int)offset
                       withInt:(int)length {
  if (length < 0) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (length == 0) {
    return;
  }
  if (in_ == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"InputStream is null"] autorelease];
  }
  if (buffer == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"buffer is null"] autorelease];
  }
  if (offset < 0 || offset > (int) [((IOSByteArray *) nil_chk(buffer)) count] - length) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  while (length > 0) {
    int result = [((JavaIoInputStream *) nil_chk(in_)) readWithByteArray:buffer withInt:offset withInt:length];
    if (result < 0) {
      @throw [[[JavaIoEOFException alloc] init] autorelease];
    }
    offset += result;
    length -= result;
  }
}

+ (IOSObjectArray *)__exceptions_readFullyWithByteArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)readInt {
  if ([self readToBuffWithInt:4] < 0) {
    @throw [[[JavaIoEOFException alloc] init] autorelease];
  }
  return ((IOSByteArray_Get(nil_chk(buff_), 0) & (int) 0xff) << 24) | ((IOSByteArray_Get(buff_, 1) & (int) 0xff) << 16) | ((IOSByteArray_Get(buff_, 2) & (int) 0xff) << 8) | (IOSByteArray_Get(buff_, 3) & (int) 0xff);
}

+ (IOSObjectArray *)__exceptions_readInt {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (NSString *)readLine {
  JavaLangStringBuilder *line = [[[JavaLangStringBuilder alloc] initWithInt:80] autorelease];
  BOOL foundTerminator = NO;
  while (YES) {
    int nextByte = [((JavaIoInputStream *) nil_chk(in_)) read];
    switch (nextByte) {
      case -1:
      if ([line sequenceLength] == 0 && !foundTerminator) {
        return nil;
      }
      return [line description];
      case (char) 0x000d:
      if (foundTerminator) {
        [((JavaIoPushbackInputStream *) check_class_cast(in_, [JavaIoPushbackInputStream class])) unreadWithInt:nextByte];
        return [line description];
      }
      foundTerminator = YES;
      if (!([in_ getClass] == [IOSClass classWithClass:[JavaIoPushbackInputStream class]])) {
        JavaIoFilterInputStream_set_in_(self, [[[JavaIoPushbackInputStream alloc] initWithJavaIoInputStream:in_] autorelease]);
      }
      break;
      case (char) 0x000a:
      return [line description];
      default:
      if (foundTerminator) {
        [((JavaIoPushbackInputStream *) check_class_cast(in_, [JavaIoPushbackInputStream class])) unreadWithInt:nextByte];
        return [line description];
      }
      [line appendWithChar:(unichar) nextByte];
    }
  }
}

+ (IOSObjectArray *)__exceptions_readLine {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (long long int)readLong {
  if ([self readToBuffWithInt:8] < 0) {
    @throw [[[JavaIoEOFException alloc] init] autorelease];
  }
  int i1 = ((IOSByteArray_Get(nil_chk(buff_), 0) & (int) 0xff) << 24) | ((IOSByteArray_Get(buff_, 1) & (int) 0xff) << 16) | ((IOSByteArray_Get(buff_, 2) & (int) 0xff) << 8) | (IOSByteArray_Get(buff_, 3) & (int) 0xff);
  int i2 = ((IOSByteArray_Get(buff_, 4) & (int) 0xff) << 24) | ((IOSByteArray_Get(buff_, 5) & (int) 0xff) << 16) | ((IOSByteArray_Get(buff_, 6) & (int) 0xff) << 8) | (IOSByteArray_Get(buff_, 7) & (int) 0xff);
  return ((i1 & (long long) 0xffffffffLL) << 32) | (i2 & (long long) 0xffffffffLL);
}

+ (IOSObjectArray *)__exceptions_readLong {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (short int)readShort {
  if ([self readToBuffWithInt:2] < 0) {
    @throw [[[JavaIoEOFException alloc] init] autorelease];
  }
  return (short int) (((IOSByteArray_Get(nil_chk(buff_), 0) & (int) 0xff) << 8) | (IOSByteArray_Get(buff_, 1) & (int) 0xff));
}

+ (IOSObjectArray *)__exceptions_readShort {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)readUnsignedByte {
  int temp = [((JavaIoInputStream *) nil_chk(in_)) read];
  if (temp < 0) {
    @throw [[[JavaIoEOFException alloc] init] autorelease];
  }
  return temp;
}

+ (IOSObjectArray *)__exceptions_readUnsignedByte {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)readUnsignedShort {
  if ([self readToBuffWithInt:2] < 0) {
    @throw [[[JavaIoEOFException alloc] init] autorelease];
  }
  return (unichar) (((IOSByteArray_Get(nil_chk(buff_), 0) & (int) 0xff) << 8) | (IOSByteArray_Get(buff_, 1) & (int) 0xff));
}

+ (IOSObjectArray *)__exceptions_readUnsignedShort {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (NSString *)readUTF {
  return [self decodeUTFWithInt:[self readUnsignedShort]];
}

+ (IOSObjectArray *)__exceptions_readUTF {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (NSString *)decodeUTFWithInt:(int)utfSize {
  return [JavaIoDataInputStream decodeUTFWithInt:utfSize withJavaIoDataInput:self];
}

+ (IOSObjectArray *)__exceptions_decodeUTFWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

+ (NSString *)decodeUTFWithInt:(int)utfSize
           withJavaIoDataInput:(id<JavaIoDataInput>)inArg {
  IOSByteArray *buf = [IOSByteArray arrayWithLength:utfSize];
  IOSCharArray *out = [IOSCharArray arrayWithLength:utfSize];
  [((id<JavaIoDataInput>) nil_chk(inArg)) readFullyWithByteArray:buf withInt:0 withInt:utfSize];
  return [OrgApacheHarmonyLuniUtilUtil convertUTF8WithBufWithByteArray:buf withCharArray:out withInt:0 withInt:utfSize];
}

+ (IOSObjectArray *)__exceptions_decodeUTFWithInt_withJavaIoDataInput_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

+ (NSString *)readUTFWithJavaIoDataInput:(id<JavaIoDataInput>)inArg {
  return [JavaIoDataInputStream decodeUTFWithInt:[((id<JavaIoDataInput>) nil_chk(inArg)) readUnsignedShort] withJavaIoDataInput:inArg];
}

+ (IOSObjectArray *)__exceptions_readUTFWithJavaIoDataInput_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)skipBytesWithInt:(int)count {
  int skipped = 0;
  long long int skip;
  while (skipped < count && (skip = [((JavaIoInputStream *) nil_chk(in_)) skipWithLong:count - skipped]) != 0) {
    skipped += skip;
  }
  if (skipped < 0) {
    @throw [[[JavaIoEOFException alloc] init] autorelease];
  }
  return skipped;
}

+ (IOSObjectArray *)__exceptions_skipBytesWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaIoDataInputStream_set_buff_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaIoDataInputStream *)other {
  [super copyAllFieldsTo:other];
  JavaIoDataInputStream_set_buff_(other, buff_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:buff_ name:@"buff"]];
  return result;
}

@end
