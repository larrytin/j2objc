//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/StringReader.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSCharArray.h"
#include "IOSClass.h"
#include "java/io/IOException.h"
#include "java/io/StringReader.h"
#include "java/lang/ArrayIndexOutOfBoundsException.h"
#include "java/lang/IllegalArgumentException.h"

@implementation JavaIoStringReader

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithNSString:(NSString *)str {
  if (self = [super init]) {
    markpos_ = -1;
    JavaIoStringReader_set_str_(self, str);
    self->count_ = [((NSString *) nil_chk(str)) length];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)close {
  JavaIoStringReader_set_str_(self, nil);
}

- (BOOL)isClosed {
  return str_ == nil;
}

- (void)markWithInt:(int)readLimit {
  if (readLimit < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"StringReader is closed."] autorelease];
    }
    markpos_ = pos_;
  }
}

+ (IOSObjectArray *)__exceptions_markWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (BOOL)markSupported {
  return YES;
}

- (int)read {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"StringReader is closed."] autorelease];
    }
    if (pos_ != count_) {
      return [((NSString *) nil_chk(str_)) charAtWithInt:pos_++];
    }
    return -1;
  }
}

+ (IOSObjectArray *)__exceptions_read {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)readWithCharArray:(IOSCharArray *)buf
                 withInt:(int)offset
                 withInt:(int)len {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"StringReader is closed."] autorelease];
    }
    if (offset < 0 || offset > (int) [((IOSCharArray *) nil_chk(buf)) count]) {
      @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Offset out of bounds: %d", offset]] autorelease];
    }
    if (len < 0 || len > (int) [((IOSCharArray *) nil_chk(buf)) count] - offset) {
      @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Length out of bounds: %d", len]] autorelease];
    }
    if (len == 0) {
      return 0;
    }
    if (pos_ == self->count_) {
      return -1;
    }
    int end = pos_ + len > self->count_ ? self->count_ : pos_ + len;
    [((NSString *) nil_chk(str_)) getChars:pos_ sourceEnd:end destination:buf destinationBegin:offset];
    int read = end - pos_;
    pos_ = end;
    return read;
  }
}

+ (IOSObjectArray *)__exceptions_readWithCharArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (BOOL)ready {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"StringReader is closed."] autorelease];
    }
    return YES;
  }
}

+ (IOSObjectArray *)__exceptions_ready {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)reset {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"StringReader is closed."] autorelease];
    }
    pos_ = markpos_ != -1 ? markpos_ : 0;
  }
}

+ (IOSObjectArray *)__exceptions_reset {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (long long int)skipWithLong:(long long int)ns {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"StringReader is closed."] autorelease];
    }
    int minSkip = -pos_;
    int maxSkip = count_ - pos_;
    if (maxSkip == 0 || ns > maxSkip) {
      ns = maxSkip;
    }
    else if (ns < minSkip) {
      ns = minSkip;
    }
    pos_ += ns;
    return ns;
  }
}

+ (IOSObjectArray *)__exceptions_skipWithLong_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaIoStringReader_set_str_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaIoStringReader *)other {
  [super copyAllFieldsTo:other];
  other->count_ = count_;
  other->markpos_ = markpos_;
  other->pos_ = pos_;
  JavaIoStringReader_set_str_(other, str_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:str_ name:@"str"]];
  return result;
}

@end
