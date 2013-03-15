//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/io/BufferedInputStream.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSByteArray.h"
#import "java/io/BufferedInputStream.h"
#import "java/io/IOException.h"
#import "java/io/InputStream.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/System.h"

@implementation JavaIoBufferedInputStream

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (IOSByteArray *)buf {
  return [[buf_ retain] autorelease];
}
- (void)setBuf:(IOSByteArray *)buf {
  JreOperatorRetainedAssign(&buf_, buf);
}
@synthesize buf = buf_;
@synthesize count = count_;
@synthesize marklimit = marklimit_;
@synthesize markpos = markpos_;
@synthesize pos = pos_;

- (id)initWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  if ((self = [super initWithJavaIoInputStream:inArg])) {
    markpos_ = -1;
    JreOperatorRetainedAssign(&buf_, [[[IOSByteArray alloc] initWithLength:8192] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaIoInputStream:(JavaIoInputStream *)inArg
                        withInt:(int)size {
  if ((self = [super initWithJavaIoInputStream:inArg])) {
    markpos_ = -1;
    if (size <= 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"size must be > 0"] autorelease];
    }
    JreOperatorRetainedAssign(&buf_, [[[IOSByteArray alloc] initWithLength:size] autorelease]);
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
      return count_ - pos_ + [((JavaIoInputStream *) NIL_CHK(localIn)) available];
    }
  }
}

- (void)close {
  JreOperatorRetainedAssign(&buf_, nil);
  JavaIoInputStream *localIn = in_;
  JreOperatorRetainedAssign(&in_, nil);
  if (localIn != nil) {
    [localIn close];
  }
}

- (int)fillbufWithJavaIoInputStream:(JavaIoInputStream *)localIn
              withJavaLangByteArray:(IOSByteArray *)localBuf {
  if (markpos_ == -1 || (pos_ - markpos_ >= marklimit_)) {
    int result = [((JavaIoInputStream *) NIL_CHK(localIn)) readWithJavaLangByteArray:localBuf];
    if (result > 0) {
      markpos_ = -1;
      pos_ = 0;
      count_ = result == -1 ? 0 : result;
    }
    return result;
  }
  if (markpos_ == 0 && marklimit_ > (int) [((IOSByteArray *) NIL_CHK(localBuf)) count]) {
    int newLength = (int) [((IOSByteArray *) NIL_CHK(localBuf)) count] * 2;
    if (newLength > marklimit_) {
      newLength = marklimit_;
    }
    IOSByteArray *newbuf = [[[IOSByteArray alloc] initWithLength:newLength] autorelease];
    [JavaLangSystem arraycopyWithId:localBuf withInt:0 withId:newbuf withInt:0 withInt:(int) [((IOSByteArray *) NIL_CHK(localBuf)) count]];
    localBuf = JreOperatorRetainedAssign(&buf_, newbuf);
  }
  else if (markpos_ > 0) {
    [JavaLangSystem arraycopyWithId:localBuf withInt:markpos_ withId:localBuf withInt:0 withInt:(int) [((IOSByteArray *) NIL_CHK(localBuf)) count] - markpos_];
  }
  pos_ -= markpos_;
  count_ = markpos_ = 0;
  int bytesread = [((JavaIoInputStream *) NIL_CHK(localIn)) readWithJavaLangByteArray:localBuf withInt:pos_ withInt:(int) [((IOSByteArray *) NIL_CHK(localBuf)) count] - pos_];
  count_ = bytesread <= 0 ? pos_ : pos_ + bytesread;
  return bytesread;
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
      if (pos_ >= count_ && [self fillbufWithJavaIoInputStream:localIn withJavaLangByteArray:localBuf] == -1) {
        return -1;
      }
      if (localBuf != buf_) {
        localBuf = buf_;
        if (localBuf == nil) {
          @throw [[[JavaIoIOException alloc] initWithNSString:@"Stream is closed"] autorelease];
        }
      }
      if (count_ - pos_ > 0) {
        return [((IOSByteArray *) NIL_CHK(localBuf)) byteAtIndex:pos_++] & (int) 0xFF;
      }
      return -1;
    }
  }
}

- (int)readWithJavaLangByteArray:(IOSByteArray *)buffer
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
      if (offset > (int) [((IOSByteArray *) NIL_CHK(buffer)) count] - length || offset < 0 || length < 0) {
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
        if (copylength == length || [((JavaIoInputStream *) NIL_CHK(localIn)) available] == 0) {
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
        if (markpos_ == -1 && required >= (int) [((IOSByteArray *) NIL_CHK(localBuf)) count]) {
          read = [((JavaIoInputStream *) NIL_CHK(localIn)) readWithJavaLangByteArray:buffer withInt:offset withInt:required];
          if (read == -1) {
            return required == length ? -1 : length - required;
          }
        }
        else {
          if ([self fillbufWithJavaIoInputStream:localIn withJavaLangByteArray:localBuf] == -1) {
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
        if ([((JavaIoInputStream *) NIL_CHK(localIn)) available] == 0) {
          return length - required;
        }
        offset += read;
      }
    }
  }
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

- (long long int)skipWithLongInt:(long long int)amount {
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
          if ([self fillbufWithJavaIoInputStream:localIn withJavaLangByteArray:localBuf] == -1) {
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
      return read + [((JavaIoInputStream *) NIL_CHK(localIn)) skipWithLongInt:amount - read];
    }
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&buf_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaIoBufferedInputStream *typedCopy = (JavaIoBufferedInputStream *) copy;
  typedCopy.buf = buf_;
  typedCopy.count = count_;
  typedCopy.marklimit = marklimit_;
  typedCopy.markpos = markpos_;
  typedCopy.pos = pos_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:buf_ name:@"buf"]];
  return result;
}

@end
