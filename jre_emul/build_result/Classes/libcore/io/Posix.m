//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/io/Posix.java
//
//  Created by retechretech on 13-4-26.
//

#import "java/io/FileDescriptor.h"
#import "libcore/io/ErrnoException.h"
#import "libcore/io/Posix.h"
#import "TempFailureRetry.h"
#import <sys/stat.h>

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

+ (void)nativeInit   {
    LibcoreIoPosix_defaultEncoding_ = [NSString defaultCStringEncoding];
  }

+ (void)throwErrnoExceptionWithNSString:(NSString *)message
                                withInt:(int)error {
  @throw [[[LibcoreIoErrnoException alloc] initWithNSString:message withInt:error] autorelease];
}

+ (int)throwIfMinusOneWithNSString:(NSString *)name
                           withInt:(int)errorCode {
  if (errorCode == -1) {
    [LibcoreIoPosix throwErrnoExceptionWithNSString:name withInt:errorCode];
  }
  return errorCode;
}

- (BOOL)accessWithNSString:(NSString *)path
                   withInt:(int)mode   {
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

- (void)chmodWithNSString:(NSString *)path
                  withInt:(int)mode   {
    if (path) {
      const char* cpath = [path cStringUsingEncoding:LibcoreIoPosix_defaultEncoding_];
      int rc = TEMP_FAILURE_RETRY(chmod(cpath, mode));
      [LibcoreIoPosix throwIfMinusOneWithNSString:@"chmod" withInt:rc];
    }
  }

- (void)chownWithNSString:(NSString *)path
                  withInt:(int)uid
                  withInt:(int)gid   {
    if (path) {
      const char* cpath = [path cStringUsingEncoding:LibcoreIoPosix_defaultEncoding_];
      int rc = TEMP_FAILURE_RETRY(chown(cpath, uid, gid));
      [LibcoreIoPosix throwIfMinusOneWithNSString:@"chown" withInt:rc];
    }
  }

- (void)closeWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)javaFd   {
    // Get the FileDescriptor's 'fd' field and clear it.
    // We need to do this before we can throw an IOException.
    int fd = (int) javaFd->descriptor_;
    javaFd->descriptor_ = -1L;
    [LibcoreIoPosix throwIfMinusOneWithNSString:@"close" withInt:close(fd)];
  }

- (JavaIoFileDescriptor *)dupWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)oldFd   {
    int nativeFd = TEMP_FAILURE_RETRY(dup((int) oldFd->descriptor_));
    [LibcoreIoPosix throwIfMinusOneWithNSString:@"dup" withInt:nativeFd];
    JavaIoFileDescriptor *newFd = AUTORELEASE([[JavaIoFileDescriptor alloc] init]);
    newFd->descriptor_ = nativeFd;
    return newFd;
  }

- (JavaIoFileDescriptor *)dup2WithJavaIoFileDescriptor:(JavaIoFileDescriptor *)oldFd
                                               withInt:(int)newNativeFd   {
    int nativeFd = TEMP_FAILURE_RETRY(dup2((int) oldFd->descriptor_, newNativeFd));
    [LibcoreIoPosix throwIfMinusOneWithNSString:@"dup2" withInt:nativeFd];
    JavaIoFileDescriptor *newFd = AUTORELEASE([[JavaIoFileDescriptor alloc] init]);
    newFd->descriptor_ = nativeFd;
    return newFd;
  }

- (int)fcntlVoidWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd
                                 withInt:(int)cmd   {
    int rc = TEMP_FAILURE_RETRY(fcntl((int) fd->descriptor_, cmd));
    return [LibcoreIoPosix throwIfMinusOneWithNSString:@"fcntl" withInt:rc];
  }

- (int)fcntlLongWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd
                                 withInt:(int)cmd
                             withLongInt:(long long int)arg   {
    int rc = TEMP_FAILURE_RETRY(fcntl((int) fd->descriptor_, cmd, arg));
    return [LibcoreIoPosix throwIfMinusOneWithNSString:@"fcntl" withInt:rc];
  }

- (JavaIoFileDescriptor *)openWithNSString:(NSString *)path
                                   withInt:(int)flags
                                   withInt:(int)mode   {
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

- (NSString *)strerrorWithInt:(int)errno_   {
    char buffer[BUFSIZ];
    int ret = strerror_r(errno_, buffer, BUFSIZ);
    if (ret != 0) {  // If not successful...
    snprintf(buffer, BUFSIZ, "errno %d", errno_);
  }
  return [NSString stringWithCString:buffer encoding:LibcoreIoPosix_defaultEncoding_];
}

+ (void)initialize {
  if (self == [LibcoreIoPosix class]) {
    {
      [LibcoreIoPosix nativeInit];
    }
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
