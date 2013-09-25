//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/io/Posix.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "java/io/FileDescriptor.h"
#include "libcore/io/ErrnoException.h"
#include "libcore/io/Posix.h"
#import "TempFailureRetry.h"
#import <fcntl.h>
#import <sys/stat.h>
#include <termios.h>

@implementation LibcoreIoPosix

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

static int LibcoreIoPosix_defaultEncoding_;

+ (int)defaultEncoding {
  return LibcoreIoPosix_defaultEncoding_;
}

+ (int *)defaultEncodingRef {
  return &LibcoreIoPosix_defaultEncoding_;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (void)nativeInit {
  LibcoreIoPosix_defaultEncoding_ = [NSString defaultCStringEncoding];
}

+ (void)throwErrnoExceptionWithNSString:(NSString *)message
                                withInt:(int)error {
  @throw [[[LibcoreIoErrnoException alloc] initWithNSString:message withInt:error] autorelease];
}

+ (IOSObjectArray *)__exceptions_throwErrnoExceptionWithNSString_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

+ (int)throwIfMinusOneWithNSString:(NSString *)name
                           withInt:(int)errorCode {
  if (errorCode == -1) {
    [LibcoreIoPosix throwErrnoExceptionWithNSString:name withInt:errorCode];
  }
  return errorCode;
}

+ (IOSObjectArray *)__exceptions_throwIfMinusOneWithNSString_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

- (BOOL)accessWithNSString:(NSString *)path
                   withInt:(int)mode {
  if (!path) {
    return NO;
  }
  const char* cpath = [path cStringUsingEncoding:LibcoreIoPosix_defaultEncoding_];
  int rc = TEMP_FAILURE_RETRY(access(cpath, mode));
  if (rc == -1) {
    [LibcoreIoPosix throwErrnoExceptionWithNSString:@"access" withInt:errno];
  }
  return (rc == 0);
}

+ (IOSObjectArray *)__exceptions_accessWithNSString_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)chmodWithNSString:(NSString *)path
                  withInt:(int)mode {
  if (path) {
    const char* cpath = [path cStringUsingEncoding:LibcoreIoPosix_defaultEncoding_];
    int rc = TEMP_FAILURE_RETRY(chmod(cpath, mode));
    [LibcoreIoPosix throwIfMinusOneWithNSString:@"chmod" withInt:rc];
  }
}

+ (IOSObjectArray *)__exceptions_chmodWithNSString_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)chownWithNSString:(NSString *)path
                  withInt:(int)uid
                  withInt:(int)gid {
  if (path) {
    const char* cpath = [path cStringUsingEncoding:LibcoreIoPosix_defaultEncoding_];
    int rc = TEMP_FAILURE_RETRY(chown(cpath, uid, gid));
    [LibcoreIoPosix throwIfMinusOneWithNSString:@"chown" withInt:rc];
  }
}

+ (IOSObjectArray *)__exceptions_chownWithNSString_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)closeWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)javaFd {
  // Get the FileDescriptor's 'fd' field and clear it.
  // We need to do this before we can throw an IOException.
  int fd = (int) javaFd->descriptor_;
  javaFd->descriptor_ = -1L;
  [LibcoreIoPosix throwIfMinusOneWithNSString:@"close" withInt:close(fd)];
}

+ (IOSObjectArray *)__exceptions_closeWithJavaIoFileDescriptor_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

- (JavaIoFileDescriptor *)dupWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)oldFd {
  int nativeFd = TEMP_FAILURE_RETRY(dup((int) oldFd->descriptor_));
  [LibcoreIoPosix throwIfMinusOneWithNSString:@"dup" withInt:nativeFd];
  JavaIoFileDescriptor *newFd = AUTORELEASE([[JavaIoFileDescriptor alloc] init]);
  newFd->descriptor_ = nativeFd;
  return newFd;
}

+ (IOSObjectArray *)__exceptions_dupWithJavaIoFileDescriptor_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

- (JavaIoFileDescriptor *)dup2WithJavaIoFileDescriptor:(JavaIoFileDescriptor *)oldFd
                                               withInt:(int)newNativeFd {
  int nativeFd = TEMP_FAILURE_RETRY(dup2((int) oldFd->descriptor_, newNativeFd));
  [LibcoreIoPosix throwIfMinusOneWithNSString:@"dup2" withInt:nativeFd];
  JavaIoFileDescriptor *newFd = AUTORELEASE([[JavaIoFileDescriptor alloc] init]);
  newFd->descriptor_ = nativeFd;
  return newFd;
}

+ (IOSObjectArray *)__exceptions_dup2WithJavaIoFileDescriptor_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)fchmodWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd
                               withInt:(int)mode {
  int rc = TEMP_FAILURE_RETRY(fchmod((int) fd->descriptor_, mode));
  [LibcoreIoPosix throwIfMinusOneWithNSString:@"fchmod" withInt:rc];
}

+ (IOSObjectArray *)__exceptions_fchmodWithJavaIoFileDescriptor_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)fchownWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd
                               withInt:(int)uid
                               withInt:(int)gid {
  int rc = TEMP_FAILURE_RETRY(fchown((int) fd->descriptor_, uid, gid));
  [LibcoreIoPosix throwIfMinusOneWithNSString:@"fchown" withInt:rc];
}

+ (IOSObjectArray *)__exceptions_fchownWithJavaIoFileDescriptor_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)fcntlVoidWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd
                                 withInt:(int)cmd {
  int rc = TEMP_FAILURE_RETRY(fcntl((int) fd->descriptor_, cmd));
  return [LibcoreIoPosix throwIfMinusOneWithNSString:@"fcntl" withInt:rc];
}

+ (IOSObjectArray *)__exceptions_fcntlVoidWithJavaIoFileDescriptor_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)fsyncWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd {
  int rc = TEMP_FAILURE_RETRY(fsync((int) fd->descriptor_));
  [LibcoreIoPosix throwIfMinusOneWithNSString:@"fsync" withInt:rc];
}

+ (IOSObjectArray *)__exceptions_fsyncWithJavaIoFileDescriptor_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)fcntlLongWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd
                                 withInt:(int)cmd
                                withLong:(long long int)arg {
  int rc = TEMP_FAILURE_RETRY(fcntl((int) fd->descriptor_, cmd, arg));
  return [LibcoreIoPosix throwIfMinusOneWithNSString:@"fcntl" withInt:rc];
}

+ (IOSObjectArray *)__exceptions_fcntlLongWithJavaIoFileDescriptor_withInt_withLong_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

- (BOOL)isattyWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd {
  return TEMP_FAILURE_RETRY(isatty((int) fd->descriptor_)) == 1;
}

- (JavaIoFileDescriptor *)openWithNSString:(NSString *)path
                                   withInt:(int)flags
                                   withInt:(int)mode {
  if (!path) {
    return nil;
  }
  const char* cpath = [path cStringUsingEncoding:LibcoreIoPosix_defaultEncoding_];
  int nativeFd = TEMP_FAILURE_RETRY(open(cpath, flags, mode));
  if (nativeFd == -1) {
    return nil;
  }
  JavaIoFileDescriptor *newFd = AUTORELEASE([[JavaIoFileDescriptor alloc] init]);
  newFd->descriptor_ = nativeFd;
  return newFd;
}

+ (IOSObjectArray *)__exceptions_openWithNSString_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

- (NSString *)strerrorWithInt:(int)errno_ {
  char buffer[BUFSIZ];
  int ret = strerror_r(errno_, buffer, BUFSIZ);
  if (ret != 0) {  // If not successful...
  snprintf(buffer, BUFSIZ, "errno %d", errno_);
}
return [NSString stringWithCString:buffer encoding:LibcoreIoPosix_defaultEncoding_];
}

- (void)tcdrainWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd {
  int rc = TEMP_FAILURE_RETRY(tcdrain((int) fd->descriptor_));
  [LibcoreIoPosix throwIfMinusOneWithNSString:@"fcntl" withInt:rc];
}

+ (IOSObjectArray *)__exceptions_tcdrainWithJavaIoFileDescriptor_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [LibcoreIoErrnoException getClass] } count:1 type:[IOSClass getClass]];
}

+ (void)initialize {
  if (self == [LibcoreIoPosix class]) {
    {
      [LibcoreIoPosix nativeInit];
    }
  }
}

@end
