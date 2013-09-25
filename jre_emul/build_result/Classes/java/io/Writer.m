//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/Writer.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSCharArray.h"
#include "IOSClass.h"
#include "java/io/IOException.h"
#include "java/io/Writer.h"
#include "java/lang/CharSequence.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringIndexOutOfBoundsException.h"

@implementation JavaIoWriter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaIoWriter_TOKEN_NULL_ name:@"JavaIoWriter_TOKEN_NULL_"]];
  return result;
}

static NSString * JavaIoWriter_TOKEN_NULL_ = @"null";

+ (NSString *)TOKEN_NULL {
  return JavaIoWriter_TOKEN_NULL_;
}

- (id)init {
  if (self = [super init]) {
    JavaIoWriter_set_lock_(self, [[[NSObject alloc] init] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithId:(id)lock {
  if (self = [super init]) {
    if (lock == nil) {
      @throw [[[JavaLangNullPointerException alloc] init] autorelease];
    }
    JavaIoWriter_set_lock_(self, lock);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)close {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (IOSObjectArray *)__exceptions_close {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)flush {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (IOSObjectArray *)__exceptions_flush {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)writeWithCharArray:(IOSCharArray *)buf {
  [self writeWithCharArray:buf withInt:0 withInt:(int) [((IOSCharArray *) nil_chk(buf)) count]];
}

+ (IOSObjectArray *)__exceptions_writeWithCharArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)writeWithCharArray:(IOSCharArray *)buf
                   withInt:(int)offset
                   withInt:(int)count {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (IOSObjectArray *)__exceptions_writeWithCharArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)writeWithInt:(int)oneChar {
  @synchronized (lock_) {
    IOSCharArray *oneCharArray = [IOSCharArray arrayWithLength:1];
    (*IOSCharArray_GetRef(oneCharArray, 0)) = (unichar) oneChar;
    [self writeWithCharArray:oneCharArray];
  }
}

+ (IOSObjectArray *)__exceptions_writeWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)writeWithNSString:(NSString *)str {
  [self writeWithNSString:str withInt:0 withInt:[((NSString *) nil_chk(str)) length]];
}

+ (IOSObjectArray *)__exceptions_writeWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)writeWithNSString:(NSString *)str
                  withInt:(int)offset
                  withInt:(int)count {
  if (count < 0) {
    @throw [[[JavaLangStringIndexOutOfBoundsException alloc] init] autorelease];
  }
  IOSCharArray *buf = [IOSCharArray arrayWithLength:count];
  [((NSString *) nil_chk(str)) getChars:offset sourceEnd:offset + count destination:buf destinationBegin:0];
  @synchronized (lock_) {
    [self writeWithCharArray:buf withInt:0 withInt:(int) [buf count]];
  }
}

+ (IOSObjectArray *)__exceptions_writeWithNSString_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (JavaIoWriter *)appendWithChar:(unichar)c {
  [self writeWithInt:c];
  return self;
}

+ (IOSObjectArray *)__exceptions_appendWithChar_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (JavaIoWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq {
  if (nil == csq) {
    [self writeWithNSString:JavaIoWriter_TOKEN_NULL_];
  }
  else {
    [self writeWithNSString:[csq sequenceDescription]];
  }
  return self;
}

+ (IOSObjectArray *)__exceptions_appendWithJavaLangCharSequence_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (JavaIoWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                         withInt:(int)start
                                         withInt:(int)end {
  if (nil == csq) {
    [self writeWithNSString:[((NSString *) nil_chk(JavaIoWriter_TOKEN_NULL_)) substring:start endIndex:end]];
  }
  else {
    [self writeWithNSString:[((id<JavaLangCharSequence>) nil_chk([csq subSequenceFrom:start to:end])) sequenceDescription]];
  }
  return self;
}

+ (IOSObjectArray *)__exceptions_appendWithJavaLangCharSequence_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (BOOL)checkError {
  return NO;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaIoWriter_set_lock_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaIoWriter *)other {
  [super copyAllFieldsTo:other];
  JavaIoWriter_set_lock_(other, lock_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:lock_ name:@"lock"]];
  return result;
}

@end
