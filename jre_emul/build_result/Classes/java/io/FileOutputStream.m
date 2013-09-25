//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/FileOutputStream.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSByteArray.h"
#include "IOSClass.h"
#include "java/io/File.h"
#include "java/io/FileDescriptor.h"
#include "java/io/FileNotFoundException.h"
#include "java/io/FileOutputStream.h"
#include "java/io/IOException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/NullPointerException.h"
#import <fcntl.h>
#import <sys/ioctl.h>

@implementation JavaIoFileOutputStream

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaIoFile:(JavaIoFile *)file {
  return JreMemDebugAdd([self initJavaIoFileOutputStreamWithJavaIoFile:file withBoolean:NO]);
}

+ (IOSObjectArray *)__exceptions_JavaIoFileOutputStreamWithJavaIoFile_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoFileNotFoundException getClass] } count:1 type:[IOSClass getClass]];
}

- (id)initJavaIoFileOutputStreamWithJavaIoFile:(JavaIoFile *)file
                                   withBoolean:(BOOL)append {
  if (self = [super init]) {
    if ([((NSString *) nil_chk([((JavaIoFile *) nil_chk(file)) getPath])) isEmpty] || [file isDirectory]) {
      @throw [[[JavaIoFileNotFoundException alloc] initWithNSString:[file getAbsolutePath]] autorelease];
    }
    JavaIoFileOutputStream_set_fd_(self, [[[JavaIoFileDescriptor alloc] init] autorelease]);
    fd_->readOnly_ = NO;
    fd_->descriptor_ = [self openWithNSString:[file getAbsolutePath] withBoolean:append];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaIoFile:(JavaIoFile *)file
             withBoolean:(BOOL)append {
  return [self initJavaIoFileOutputStreamWithJavaIoFile:file withBoolean:append];
}

- (long long int)openWithNSString:(NSString *)path
                      withBoolean:(BOOL)append {
  int flags = O_WRONLY | O_CREAT | (append ? O_APPEND : O_TRUNC);
  return (long long) open([path UTF8String], flags, 0644);
}

+ (IOSObjectArray *)__exceptions_openWithNSString_withBoolean_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoFileNotFoundException getClass] } count:1 type:[IOSClass getClass]];
}

- (id)initWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd {
  if (self = [super init]) {
    if (fd == nil) {
      @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"FileDescriptor is null"] autorelease];
    }
    JavaIoFileOutputStream_set_fd_(self, fd);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)filename {
  return JreMemDebugAdd([self initJavaIoFileOutputStreamWithNSString:filename withBoolean:NO]);
}

+ (IOSObjectArray *)__exceptions_JavaIoFileOutputStreamWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoFileNotFoundException getClass] } count:1 type:[IOSClass getClass]];
}

- (id)initJavaIoFileOutputStreamWithNSString:(NSString *)filename
                                 withBoolean:(BOOL)append {
  return JreMemDebugAdd([self initJavaIoFileOutputStreamWithJavaIoFile:[[[JavaIoFile alloc] initWithNSString:filename] autorelease] withBoolean:append]);
}

- (id)initWithNSString:(NSString *)filename
           withBoolean:(BOOL)append {
  return [self initJavaIoFileOutputStreamWithNSString:filename withBoolean:append];
}

- (void)close {
  if (fd_ == nil) {
    return;
  }
  @synchronized (self) {
    if (((JavaIoFileDescriptor *) nil_chk(fd_))->descriptor_ >= 0) {
      [self closeWithLong:fd_->descriptor_];
      fd_->descriptor_ = -1;
    }
  }
}

+ (IOSObjectArray *)__exceptions_close {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)closeWithLong:(long long int)descriptor {
  close((int) descriptor);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [self close];
  JavaIoFileOutputStream_set_fd_(self, nil);
  [super dealloc];
}

+ (IOSObjectArray *)__exceptions_dealloc {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (JavaIoFileDescriptor *)getFD {
  return fd_;
}

+ (IOSObjectArray *)__exceptions_getFD {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)writeWithByteArray:(IOSByteArray *)buffer {
  [self writeWithByteArray:buffer withInt:0 withInt:(int) [((IOSByteArray *) nil_chk(buffer)) count]];
}

+ (IOSObjectArray *)__exceptions_writeWithByteArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)writeWithByteArray:(IOSByteArray *)buffer
                   withInt:(int)offset
                   withInt:(int)count {
  if (buffer == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if (count < 0 || offset < 0 || offset > (int) [((IOSByteArray *) nil_chk(buffer)) count] || count > (int) [buffer count] - offset) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (count == 0) {
    return;
  }
  [self openCheck];
  [self nativeWriteWithByteArray:buffer withInt:offset withInt:count];
}

+ (IOSObjectArray *)__exceptions_writeWithByteArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)nativeWriteWithByteArray:(IOSByteArray *)buffer
                        withInt:(int)offset
                        withInt:(int)count {
  char *buf = malloc(count);
  @try {
    [buffer getBytes:buf offset:offset length:count];
    int n = write(fd_->descriptor_, buf, count);
    if (n < count) {
      JavaIoIOException *e = [[JavaIoIOException alloc] init];
      #if ! __has_feature(objc_arc)
      [e autorelease];
      #endif
      @throw e;
    }
    return n;
  }
  @finally {
    free(buf);
  }
}

- (void)writeWithInt:(int)oneByte {
  [self openCheck];
  IOSByteArray *byteArray = [IOSByteArray arrayWithLength:1];
  (*IOSByteArray_GetRef(byteArray, 0)) = (char) oneByte;
  [self nativeWriteWithByteArray:byteArray withInt:0 withInt:1];
}

+ (IOSObjectArray *)__exceptions_writeWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)openCheck {
  @synchronized(self) {
    {
      if (((JavaIoFileDescriptor *) nil_chk(fd_))->descriptor_ < 0) {
        @throw [[[JavaIoIOException alloc] init] autorelease];
      }
    }
  }
}

+ (IOSObjectArray *)__exceptions_openCheck {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)copyAllFieldsTo:(JavaIoFileOutputStream *)other {
  [super copyAllFieldsTo:other];
  JavaIoFileOutputStream_set_fd_(other, fd_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:fd_ name:@"fd"]];
  return result;
}

@end
