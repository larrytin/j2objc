//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/StringWriter.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSCharArray.h"
#include "IOSClass.h"
#include "java/io/IOException.h"
#include "java/io/StringWriter.h"
#include "java/io/Writer.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/StringBuffer.h"

@implementation JavaIoStringWriter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  if (self = [super init]) {
    JavaIoStringWriter_set_buf_(self, [[[JavaLangStringBuffer alloc] initWithInt:16] autorelease]);
    JavaIoWriter_set_lock_(self, buf_);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)initialSize {
  if (self = [super init]) {
    if (initialSize < 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    }
    JavaIoStringWriter_set_buf_(self, [[[JavaLangStringBuffer alloc] initWithInt:initialSize] autorelease]);
    JavaIoWriter_set_lock_(self, buf_);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)close {
}

+ (IOSObjectArray *)__exceptions_close {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)flush {
}

- (JavaLangStringBuffer *)getBuffer {
  return buf_;
}

- (NSString *)description {
  return [((JavaLangStringBuffer *) nil_chk(buf_)) description];
}

- (void)writeWithCharArray:(IOSCharArray *)cbuf
                   withInt:(int)offset
                   withInt:(int)count {
  if (offset < 0 || offset > (int) [((IOSCharArray *) nil_chk(cbuf)) count] || count < 0 || count > (int) [cbuf count] - offset) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (count == 0) {
    return;
  }
  [((JavaLangStringBuffer *) nil_chk(buf_)) appendWithCharArray:cbuf withInt:offset withInt:count];
}

- (void)writeWithInt:(int)oneChar {
  [((JavaLangStringBuffer *) nil_chk(buf_)) appendWithChar:(unichar) oneChar];
}

- (void)writeWithNSString:(NSString *)str {
  [((JavaLangStringBuffer *) nil_chk(buf_)) appendWithNSString:str];
}

- (void)writeWithNSString:(NSString *)str
                  withInt:(int)offset
                  withInt:(int)count {
  NSString *sub = [((NSString *) nil_chk(str)) substring:offset endIndex:offset + count];
  [((JavaLangStringBuffer *) nil_chk(buf_)) appendWithNSString:sub];
}

- (JavaIoStringWriter *)appendWithChar:(unichar)c {
  [self writeWithInt:c];
  return self;
}

- (JavaIoStringWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq {
  if (nil == csq) {
    [self writeWithNSString:[JavaIoWriter TOKEN_NULL]];
  }
  else {
    [self writeWithNSString:[csq sequenceDescription]];
  }
  return self;
}

- (JavaIoStringWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                               withInt:(int)start
                                               withInt:(int)end {
  if (nil == csq) {
    csq = (id<JavaLangCharSequence>) check_protocol_cast([JavaIoWriter TOKEN_NULL], @protocol(JavaLangCharSequence));
  }
  NSString *output = [((id<JavaLangCharSequence>) nil_chk([((id<JavaLangCharSequence>) nil_chk(csq)) subSequenceFrom:start to:end])) sequenceDescription];
  [self writeWithNSString:output withInt:0 withInt:[((NSString *) nil_chk(output)) length]];
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaIoStringWriter_set_buf_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaIoStringWriter *)other {
  [super copyAllFieldsTo:other];
  JavaIoStringWriter_set_buf_(other, buf_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:buf_ name:@"buf"]];
  return result;
}

@end
