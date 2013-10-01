//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSCharArray.h"
#include "IOSClass.h"
#include "java/io/FilterWriter.h"
#include "java/io/IOException.h"
#include "java/io/Writer.h"

@implementation JavaIoFilterWriter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaIoWriter:(JavaIoWriter *)outArg {
  if (self = [super initWithId:outArg]) {
    JavaIoFilterWriter_set_out_(self, outArg);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)close {
  @synchronized (lock_) {
    [((JavaIoWriter *) nil_chk(out_)) close];
  }
}

+ (IOSObjectArray *)__exceptions_close {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)flush {
  @synchronized (lock_) {
    [((JavaIoWriter *) nil_chk(out_)) flush];
  }
}

+ (IOSObjectArray *)__exceptions_flush {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)writeWithCharArray:(IOSCharArray *)buffer
                   withInt:(int)offset
                   withInt:(int)count {
  @synchronized (lock_) {
    [((JavaIoWriter *) nil_chk(out_)) writeWithCharArray:buffer withInt:offset withInt:count];
  }
}

+ (IOSObjectArray *)__exceptions_writeWithCharArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)writeWithInt:(int)oneChar {
  @synchronized (lock_) {
    [((JavaIoWriter *) nil_chk(out_)) writeWithInt:oneChar];
  }
}

+ (IOSObjectArray *)__exceptions_writeWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)writeWithNSString:(NSString *)str
                  withInt:(int)offset
                  withInt:(int)count {
  @synchronized (lock_) {
    [((JavaIoWriter *) nil_chk(out_)) writeWithNSString:str withInt:offset withInt:count];
  }
}

+ (IOSObjectArray *)__exceptions_writeWithNSString_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaIoFilterWriter_set_out_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaIoFilterWriter *)other {
  [super copyAllFieldsTo:other];
  JavaIoFilterWriter_set_out_(other, out_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:out_ name:@"out"]];
  return result;
}

@end
