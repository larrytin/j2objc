//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSByteArray.h"
#include "IOSClass.h"
#include "java/io/FilterInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/PushbackInputStream.h"
#include "java/lang/ArrayIndexOutOfBoundsException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"

@implementation JavaIoPushbackInputStream

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  if (self = [super initWithJavaIoInputStream:inArg]) {
    JavaIoPushbackInputStream_set_buf_(self, (inArg == nil) ? nil : [IOSByteArray arrayWithLength:1]);
    pos_ = 1;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaIoInputStream:(JavaIoInputStream *)inArg
                        withInt:(int)size {
  if (self = [super initWithJavaIoInputStream:inArg]) {
    if (size <= 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"size must be > 0"] autorelease];
    }
    JavaIoPushbackInputStream_set_buf_(self, (inArg == nil) ? nil : [IOSByteArray arrayWithLength:size]);
    pos_ = size;
    JreMemDebugAdd(self);
  }
  return self;
}

- (int)available {
  if (buf_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  return (int) [((IOSByteArray *) nil_chk(buf_)) count] - pos_ + [((JavaIoInputStream *) nil_chk(in_)) available];
}

+ (IOSObjectArray *)__exceptions_available {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)close {
  if (in_ != nil) {
    [in_ close];
    JavaIoFilterInputStream_set_in_(self, nil);
    JavaIoPushbackInputStream_set_buf_(self, nil);
  }
}

+ (IOSObjectArray *)__exceptions_close {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (BOOL)markSupported {
  return NO;
}

- (int)read {
  if (buf_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  if (pos_ < (int) [((IOSByteArray *) nil_chk(buf_)) count]) {
    return (IOSByteArray_Get(buf_, pos_++) & (int) 0xFF);
  }
  return [((JavaIoInputStream *) nil_chk(in_)) read];
}

+ (IOSObjectArray *)__exceptions_read {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)readWithByteArray:(IOSByteArray *)buffer
                 withInt:(int)offset
                 withInt:(int)length {
  if (buf_ == nil) {
    @throw [[[JavaIoIOException alloc] initWithNSString:@"Stream is closed"] autorelease];
  }
  if (offset > (int) [((IOSByteArray *) nil_chk(buffer)) count] || offset < 0) {
    @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Offset out of bounds : %d", offset]] autorelease];
  }
  if (length < 0 || length > (int) [buffer count] - offset) {
    @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Length out of bounds : %d", length]] autorelease];
  }
  int copiedBytes = 0, copyLength = 0, newOffset = offset;
  if (pos_ < (int) [((IOSByteArray *) nil_chk(buf_)) count]) {
    copyLength = ((int) [buf_ count] - pos_ >= length) ? length : (int) [buf_ count] - pos_;
    [JavaLangSystem arraycopyWithId:buf_ withInt:pos_ withId:buffer withInt:newOffset withInt:copyLength];
    newOffset += copyLength;
    copiedBytes += copyLength;
    pos_ += copyLength;
  }
  if (copyLength == length) {
    return length;
  }
  int inCopied = [((JavaIoInputStream *) nil_chk(in_)) readWithByteArray:buffer withInt:newOffset withInt:length - copiedBytes];
  if (inCopied > 0) {
    return inCopied + copiedBytes;
  }
  if (copiedBytes == 0) {
    return inCopied;
  }
  return copiedBytes;
}

+ (IOSObjectArray *)__exceptions_readWithByteArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (long long int)skipWithLong:(long long int)count {
  if (in_ == nil) {
    @throw [[[JavaIoIOException alloc] initWithNSString:@"Stream is closed"] autorelease];
  }
  if (count <= 0) {
    return 0;
  }
  int numSkipped = 0;
  if (pos_ < (int) [((IOSByteArray *) nil_chk(buf_)) count]) {
    numSkipped += (count < (int) [buf_ count] - pos_) ? count : (int) [buf_ count] - pos_;
    pos_ += numSkipped;
  }
  if (numSkipped < count) {
    numSkipped += [((JavaIoInputStream *) nil_chk(in_)) skipWithLong:count - numSkipped];
  }
  return numSkipped;
}

+ (IOSObjectArray *)__exceptions_skipWithLong_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)unreadWithByteArray:(IOSByteArray *)buffer {
  [self unreadWithByteArray:buffer withInt:0 withInt:(int) [((IOSByteArray *) nil_chk(buffer)) count]];
}

+ (IOSObjectArray *)__exceptions_unreadWithByteArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)unreadWithByteArray:(IOSByteArray *)buffer
                    withInt:(int)offset
                    withInt:(int)length {
  if (length > pos_) {
    @throw [[[JavaIoIOException alloc] initWithNSString:@"Pushback buffer full"] autorelease];
  }
  if (offset > (int) [((IOSByteArray *) nil_chk(buffer)) count] || offset < 0) {
    @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Offset out of bounds: %d", offset]] autorelease];
  }
  if (length < 0 || length > (int) [buffer count] - offset) {
    @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Length out of bounds: %d", length]] autorelease];
  }
  if (buf_ == nil) {
    @throw [[[JavaIoIOException alloc] initWithNSString:@"Stream is closed"] autorelease];
  }
  [JavaLangSystem arraycopyWithId:buffer withInt:offset withId:buf_ withInt:pos_ - length withInt:length];
  pos_ = pos_ - length;
}

+ (IOSObjectArray *)__exceptions_unreadWithByteArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)unreadWithInt:(int)oneByte {
  if (buf_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  if (pos_ == 0) {
    @throw [[[JavaIoIOException alloc] initWithNSString:@"Pushback buffer full"] autorelease];
  }
  (*IOSByteArray_GetRef(nil_chk(buf_), --pos_)) = (char) oneByte;
}

+ (IOSObjectArray *)__exceptions_unreadWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)markWithInt:(int)readlimit {
  return;
}

- (void)reset {
  @throw [[[JavaIoIOException alloc] init] autorelease];
}

+ (IOSObjectArray *)__exceptions_reset {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaIoPushbackInputStream_set_buf_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaIoPushbackInputStream *)other {
  [super copyAllFieldsTo:other];
  JavaIoPushbackInputStream_set_buf_(other, buf_);
  other->pos_ = pos_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:buf_ name:@"buf"]];
  return result;
}

@end
