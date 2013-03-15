//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/io/BufferedReader.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSCharArray.h"
#import "java/io/BufferedReader.h"
#import "java/io/IOException.h"
#import "java/io/Reader.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/StringBuilder.h"
#import "java/lang/System.h"

@implementation JavaIoBufferedReader

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaIoReader *)in {
  return [[in_ retain] autorelease];
}
- (void)setIn:(JavaIoReader *)in {
  JreOperatorRetainedAssign(&in_, in);
}
@synthesize in = in_;
- (IOSCharArray *)buf {
  return [[buf_ retain] autorelease];
}
- (void)setBuf:(IOSCharArray *)buf {
  JreOperatorRetainedAssign(&buf_, buf);
}
@synthesize buf = buf_;
@synthesize pos = pos_;
@synthesize end = end_;
@synthesize mark_ = mark__;
@synthesize markLimit = markLimit_;

- (id)initWithJavaIoReader:(JavaIoReader *)inArg {
  if ((self = [super initWithId:inArg])) {
    mark__ = -1;
    markLimit_ = -1;
    self.in = inArg;
    JreOperatorRetainedAssign(&buf_, [[[IOSCharArray alloc] initWithLength:8192] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaIoReader:(JavaIoReader *)inArg
                   withInt:(int)size {
  if ((self = [super initWithId:inArg])) {
    mark__ = -1;
    markLimit_ = -1;
    if (size <= 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"size must be > 0"] autorelease];
    }
    self.in = inArg;
    JreOperatorRetainedAssign(&buf_, [[[IOSCharArray alloc] initWithLength:size] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)close {
  @synchronized (lock_) {
    if (![self isClosed]) {
      [((JavaIoReader *) NIL_CHK(in_)) close];
      JreOperatorRetainedAssign(&buf_, nil);
    }
  }
}

- (int)fillBuf {
  if (mark__ == -1 || (pos_ - mark__ >= markLimit_)) {
    int result = [((JavaIoReader *) NIL_CHK(in_)) readWithJavaLangCharacterArray:buf_ withInt:0 withInt:(int) [((IOSCharArray *) NIL_CHK(buf_)) count]];
    if (result > 0) {
      mark__ = -1;
      pos_ = 0;
      end_ = result;
    }
    return result;
  }
  if (mark__ == 0 && markLimit_ > (int) [((IOSCharArray *) NIL_CHK(buf_)) count]) {
    int newLength = (int) [((IOSCharArray *) NIL_CHK(buf_)) count] * 2;
    if (newLength > markLimit_) {
      newLength = markLimit_;
    }
    IOSCharArray *newbuf = [[[IOSCharArray alloc] initWithLength:newLength] autorelease];
    [JavaLangSystem arraycopyWithId:buf_ withInt:0 withId:newbuf withInt:0 withInt:(int) [((IOSCharArray *) NIL_CHK(buf_)) count]];
    JreOperatorRetainedAssign(&buf_, newbuf);
  }
  else if (mark__ > 0) {
    [JavaLangSystem arraycopyWithId:buf_ withInt:mark__ withId:buf_ withInt:0 withInt:(int) [((IOSCharArray *) NIL_CHK(buf_)) count] - mark__];
    pos_ -= mark__;
    end_ -= mark__;
    mark__ = 0;
  }
  int count = [((JavaIoReader *) NIL_CHK(in_)) readWithJavaLangCharacterArray:buf_ withInt:pos_ withInt:(int) [((IOSCharArray *) NIL_CHK(buf_)) count] - pos_];
  if (count != -1) {
    end_ += count;
  }
  return count;
}

- (BOOL)isClosed {
  return buf_ == nil;
}

- (void)markWithInt:(int)markLimit {
  if (markLimit < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"BufferedReader is closed"] autorelease];
    }
    self.markLimit = markLimit;
    mark__ = pos_;
  }
}

- (BOOL)markSupported {
  return YES;
}

- (int)read {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"BufferedReader is closed"] autorelease];
    }
    if (pos_ < end_ || [self fillBuf] != -1) {
      return [((IOSCharArray *) NIL_CHK(buf_)) charAtIndex:pos_++];
    }
    return -1;
  }
}

- (int)readWithJavaLangCharacterArray:(IOSCharArray *)buffer
                              withInt:(int)offset
                              withInt:(int)length {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"BufferedReader is closed"] autorelease];
    }
    if (offset < 0 || offset > (int) [((IOSCharArray *) NIL_CHK(buffer)) count] - length || length < 0) {
      @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
    }
    int outstanding = length;
    while (outstanding > 0) {
      int available = end_ - pos_;
      if (available > 0) {
        int count = available >= outstanding ? outstanding : available;
        [JavaLangSystem arraycopyWithId:buf_ withInt:pos_ withId:buffer withInt:offset withInt:count];
        pos_ += count;
        offset += count;
        outstanding -= count;
      }
      if (outstanding == 0 || (outstanding < length && ![((JavaIoReader *) NIL_CHK(in_)) ready])) {
        break;
      }
      if ((mark__ == -1 || (pos_ - mark__ >= markLimit_)) && outstanding >= (int) [((IOSCharArray *) NIL_CHK(buf_)) count]) {
        int count = [((JavaIoReader *) NIL_CHK(in_)) readWithJavaLangCharacterArray:buffer withInt:offset withInt:outstanding];
        if (count > 0) {
          offset += count;
          outstanding -= count;
          mark__ = -1;
        }
        break;
      }
      if ([self fillBuf] == -1) {
        break;
      }
    }
    int count = length - outstanding;
    return (count > 0 || count == length) ? count : -1;
  }
}

- (void)chompNewline {
  if ((pos_ != end_ || [self fillBuf] != -1) && [((IOSCharArray *) NIL_CHK(buf_)) charAtIndex:pos_] == 0x000a) {
    pos_++;
  }
}

- (NSString *)readLine {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"BufferedReader is closed"] autorelease];
    }
    if (pos_ == end_ && [self fillBuf] == -1) {
      return nil;
    }
    for (int charPos = pos_; charPos < end_; charPos++) {
      unichar ch = [((IOSCharArray *) NIL_CHK(buf_)) charAtIndex:charPos];
      if (ch > 0x000d) {
        continue;
      }
      if (ch == 0x000a) {
        NSString *res = [NSString stringWithCharacters:buf_ offset:pos_ length:charPos - pos_];
        pos_ = charPos + 1;
        return res;
      }
      else if (ch == 0x000d) {
        NSString *res = [NSString stringWithCharacters:buf_ offset:pos_ length:charPos - pos_];
        pos_ = charPos + 1;
        if (((pos_ < end_) || ([self fillBuf] != -1)) && ([((IOSCharArray *) NIL_CHK(buf_)) charAtIndex:pos_] == 0x000a)) {
          pos_++;
        }
        return res;
      }
    }
    unichar eol = 0x0000;
    JavaLangStringBuilder *result = [[[JavaLangStringBuilder alloc] initWithInt:80] autorelease];
    [((JavaLangStringBuilder *) NIL_CHK(result)) appendWithJavaLangCharacterArray:buf_ withInt:pos_ withInt:end_ - pos_];
    while (YES) {
      pos_ = end_;
      if (eol == 0x000a) {
        return [((JavaLangStringBuilder *) NIL_CHK(result)) description];
      }
      if ([self fillBuf] == -1) {
        return [((JavaLangStringBuilder *) NIL_CHK(result)) sequenceLength] > 0 || eol != 0x0000 ? [((JavaLangStringBuilder *) NIL_CHK(result)) description] : nil;
      }
      for (int charPos = pos_; charPos < end_; charPos++) {
        unichar c = [((IOSCharArray *) NIL_CHK(buf_)) charAtIndex:charPos];
        if (eol == 0x0000) {
          if ((c == 0x000a || c == 0x000d)) {
            eol = c;
          }
        }
        else if (eol == 0x000d && c == 0x000a) {
          if (charPos > pos_) {
            [((JavaLangStringBuilder *) NIL_CHK(result)) appendWithJavaLangCharacterArray:buf_ withInt:pos_ withInt:charPos - pos_ - 1];
          }
          pos_ = charPos + 1;
          return [((JavaLangStringBuilder *) NIL_CHK(result)) description];
        }
        else {
          if (charPos > pos_) {
            [((JavaLangStringBuilder *) NIL_CHK(result)) appendWithJavaLangCharacterArray:buf_ withInt:pos_ withInt:charPos - pos_ - 1];
          }
          pos_ = charPos;
          return [((JavaLangStringBuilder *) NIL_CHK(result)) description];
        }
      }
      if (eol == 0x0000) {
        [((JavaLangStringBuilder *) NIL_CHK(result)) appendWithJavaLangCharacterArray:buf_ withInt:pos_ withInt:end_ - pos_];
      }
      else {
        [((JavaLangStringBuilder *) NIL_CHK(result)) appendWithJavaLangCharacterArray:buf_ withInt:pos_ withInt:end_ - pos_ - 1];
      }
    }
  }
}

- (BOOL)ready {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"BufferedReader is closed"] autorelease];
    }
    return ((end_ - pos_) > 0) || [((JavaIoReader *) NIL_CHK(in_)) ready];
  }
}

- (void)reset {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"BufferedReader is closed"] autorelease];
    }
    if (mark__ == -1) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"Invalid Mark."] autorelease];
    }
    pos_ = mark__;
  }
}

- (long long int)skipWithLongInt:(long long int)amount {
  if (amount < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"BufferedReader is closed"] autorelease];
    }
    if (amount < 1) {
      return 0;
    }
    if (end_ - pos_ >= amount) {
      pos_ += amount;
      return amount;
    }
    long long int read = end_ - pos_;
    pos_ = end_;
    while (read < amount) {
      if ([self fillBuf] == -1) {
        return read;
      }
      if (end_ - pos_ >= amount - read) {
        pos_ += amount - read;
        return amount;
      }
      read += (end_ - pos_);
      pos_ = end_;
    }
    return amount;
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&buf_, nil);
  JreOperatorRetainedAssign(&in_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaIoBufferedReader *typedCopy = (JavaIoBufferedReader *) copy;
  typedCopy.in = in_;
  typedCopy.buf = buf_;
  typedCopy.pos = pos_;
  typedCopy.end = end_;
  typedCopy.mark_ = mark__;
  typedCopy.markLimit = markLimit_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:in_ name:@"in"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:buf_ name:@"buf"]];
  return result;
}

@end
