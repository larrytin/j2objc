//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/BufferedInputStream.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSByteArray.h"
#include "IOSClass.h"
#include "java/io/BufferedInputStream.h"
#include "java/io/FilterInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/System.h"

@implementation JavaIoBufferedInputStream

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  if (self = [super initWithJavaIoInputStream:inArg]) {
    markpos_ = -1;
    JavaIoBufferedInputStream_set_buf_(self, [IOSByteArray arrayWithLength:8192]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaIoInputStream:(JavaIoInputStream *)inArg
                        withInt:(int)size {
  if (self = [super initWithJavaIoInputStream:inArg]) {
    markpos_ = -1;
    if (size <= 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"size must be > 0"] autorelease];
    }
    JavaIoBufferedInputStream_set_buf_(self, [IOSByteArray arrayWithLength:size]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (int)available {
  @synchronized(self) {
    {
      JavaIoInputStream *localIn = in_;
      if (buf_ == nil || localIn == nil) {
        @throw [[[JavaIoIOException alloc] initWithNSString:@"Stream is closed"] autorelease];
      }
      return count_ - pos_ + [((JavaIoInputStream *) nil_chk(localIn)) available];
    }
  }
}

+ (IOSObjectArray *)__exceptions_available {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)close {
  JavaIoBufferedInputStream_set_buf_(self, nil);
  JavaIoInputStream *localIn = in_;
  JavaIoFilterInputStream_set_in_(self, nil);
  if (localIn != nil) {
    [localIn close];
  }
}

+ (IOSObjectArray *)__exceptions_close {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)fillbufWithJavaIoInputStream:(JavaIoInputStream *)localIn
                      withByteArray:(IOSByteArray *)localBuf {
  if (markpos_ == -1 || (pos_ - markpos_ >= marklimit_)) {
    int result = [((JavaIoInputStream *) nil_chk(localIn)) readWithByteArray:localBuf];
    if (result > 0) {
      markpos_ = -1;
      pos_ = 0;
      count_ = result == -1 ? 0 : result;
    }
    return result;
  }
  if (markpos_ == 0 && marklimit_ > (int) [((IOSByteArray *) nil_chk(localBuf)) count]) {
    int newLength = (int) [localBuf count] * 2;
    if (newLength > marklimit_) {
      newLength = marklimit_;
    }
    IOSByteArray *newbuf = [IOSByteArray arrayWithLength:newLength];
    [JavaLangSystem arraycopyWithId:localBuf withInt:0 withId:newbuf withInt:0 withInt:(int) [localBuf count]];
    localBuf = JavaIoBufferedInputStream_set_buf_(self, newbuf);
  }
  else if (markpos_ > 0) {
    [JavaLangSystem arraycopyWithId:localBuf withInt:markpos_ withId:localBuf withInt:0 withInt:(int) [((IOSByteArray *) nil_chk(localBuf)) count] - markpos_];
  }
  pos_ -= markpos_;
  count_ = markpos_ = 0;
  int bytesread = [((JavaIoInputStream *) nil_chk(localIn)) readWithByteArray:localBuf withInt:pos_ withInt:(int) [((IOSByteArray *) nil_chk(localBuf)) count] - pos_];
  count_ = bytesread <= 0 ? pos_ : pos_ + bytesread;
  return bytesread;
}

+ (IOSObjectArray *)__exceptions_fillbufWithJavaIoInputStream_withByteArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)markWithInt:(int)readlimit {
  @synchronized(self) {
    {
      marklimit_ = readlimit;
      markpos_ = pos_;
    }
  }
}

- (BOOL)markSupported {
  return YES;
}

- (int)read {
  @synchronized(self) {
    {
      IOSByteArray *localBuf = buf_;
      JavaIoInputStream *localIn = in_;
      if (localBuf == nil || localIn == nil) {
        @throw [[[JavaIoIOException alloc] initWithNSString:@"Stream is closed"] autorelease];
      }
      if (pos_ >= count_ && [self fillbufWithJavaIoInputStream:localIn withByteArray:localBuf] == -1) {
        return -1;
      }
      if (localBuf != buf_) {
        localBuf = buf_;
        if (localBuf == nil) {
          @throw [[[JavaIoIOException alloc] initWithNSString:@"Stream is closed"] autorelease];
        }
      }
      if (count_ - pos_ > 0) {
        return IOSByteArray_Get(nil_chk(localBuf), pos_++) & (int) 0xFF;
      }
      return -1;
    }
  }
}

+ (IOSObjectArray *)__exceptions_read {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)readWithByteArray:(IOSByteArray *)buffer
                 withInt:(int)offset
                 withInt:(int)length {
  @synchronized(self) {
    {
      IOSByteArray *localBuf = buf_;
      if (localBuf == nil) {
        @throw [[[JavaIoIOException alloc] initWithNSString:@"Stream is closed"] autorelease];
      }
      if (buffer == nil) {
        @throw [[[JavaLangNullPointerException alloc] init] autorelease];
      }
      if (offset > (int) [((IOSByteArray *) nil_chk(buffer)) count] - length || offset < 0 || length < 0) {
        @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
      }
      if (length == 0) {
        return 0;
      }
      JavaIoInputStream *localIn = in_;
      if (localIn == nil) {
        @throw [[[JavaIoIOException alloc] initWithNSString:@"Stream is closed"] autorelease];
      }
      int required;
      if (pos_ < count_) {
        int copylength = count_ - pos_ >= length ? length : count_ - pos_;
        [JavaLangSystem arraycopyWithId:localBuf withInt:pos_ withId:buffer withInt:offset withInt:copylength];
        pos_ += copylength;
        if (copylength == length || [((JavaIoInputStream *) nil_chk(localIn)) available] == 0) {
          return copylength;
        }
        offset += copylength;
        required = length - copylength;
      }
      else {
        required = length;
      }
      while (YES) {
        int read;
        if (markpos_ == -1 && required >= (int) [((IOSByteArray *) nil_chk(localBuf)) count]) {
          read = [((JavaIoInputStream *) nil_chk(localIn)) readWithByteArray:buffer withInt:offset withInt:required];
          if (read == -1) {
            return required == length ? -1 : length - required;
          }
        }
        else {
          if ([self fillbufWithJavaIoInputStream:localIn withByteArray:localBuf] == -1) {
            return required == length ? -1 : length - required;
          }
          if (localBuf != buf_) {
            localBuf = buf_;
            if (localBuf == nil) {
              @throw [[[JavaIoIOException alloc] initWithNSString:@"Stream is closed"] autorelease];
            }
          }
          read = count_ - pos_ >= required ? required : count_ - pos_;
          [JavaLangSystem arraycopyWithId:localBuf withInt:pos_ withId:buffer withInt:offset withInt:read];
          pos_ += read;
        }
        required -= read;
        if (required == 0) {
          return length;
        }
        if ([((JavaIoInputStream *) nil_chk(localIn)) available] == 0) {
          return length - required;
        }
        offset += read;
      }
    }
  }
}

+ (IOSObjectArray *)__exceptions_readWithByteArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)reset {
  @synchronized(self) {
    {
      if (buf_ == nil) {
        @throw [[[JavaIoIOException alloc] initWithNSString:@"Stream is closed"] autorelease];
      }
      if (-1 == markpos_) {
        @throw [[[JavaIoIOException alloc] initWithNSString:@"Mark has been invalidated."] autorelease];
      }
      pos_ = markpos_;
    }
  }
}

+ (IOSObjectArray *)__exceptions_reset {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (long long int)skipWithLong:(long long int)amount {
  @synchronized(self) {
    {
      IOSByteArray *localBuf = buf_;
      JavaIoInputStream *localIn = in_;
      if (localBuf == nil) {
        @throw [[[JavaIoIOException alloc] initWithNSString:@"Stream is closed"] autorelease];
      }
      if (amount < 1) {
        return 0;
      }
      if (localIn == nil) {
        @throw [[[JavaIoIOException alloc] initWithNSString:@"Stream is closed"] autorelease];
      }
      if (count_ - pos_ >= amount) {
        pos_ += amount;
        return amount;
      }
      long long int read = count_ - pos_;
      pos_ = count_;
      if (markpos_ != -1) {
        if (amount <= marklimit_) {
          if ([self fillbufWithJavaIoInputStream:localIn withByteArray:localBuf] == -1) {
            return read;
          }
          if (count_ - pos_ >= amount - read) {
            pos_ += amount - read;
            return amount;
          }
          read += (count_ - pos_);
          pos_ = count_;
          return read;
        }
      }
      return read + [((JavaIoInputStream *) nil_chk(localIn)) skipWithLong:amount - read];
    }
  }
}

+ (IOSObjectArray *)__exceptions_skipWithLong_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaIoBufferedInputStream_set_buf_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaIoBufferedInputStream *)other {
  [super copyAllFieldsTo:other];
  JavaIoBufferedInputStream_set_buf_(other, buf_);
  other->count_ = count_;
  other->marklimit_ = marklimit_;
  other->markpos_ = markpos_;
  other->pos_ = pos_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:buf_ name:@"buf"]];
  return result;
}

@end
