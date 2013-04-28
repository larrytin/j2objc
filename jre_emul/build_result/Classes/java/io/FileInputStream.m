//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/FileInputStream.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSByteArray.h"
#import "java/io/File.h"
#import "java/io/FileDescriptor.h"
#import "java/io/FileInputStream.h"
#import "java/io/FileNotFoundException.h"
#import "java/io/IOException.h"
#import "java/lang/AssertionError.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/NullPointerException.h"

@implementation JavaIoFileInputStream

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaIoFileDescriptor *)fd {
  return fd_;
}
- (void)setFd:(JavaIoFileDescriptor *)fd {
  JreOperatorRetainedAssign(&fd_, fd);
}
@synthesize fd = fd_;
@synthesize stream = stream_;
- (id)repositioningLock {
  return repositioningLock_;
}
- (void)setRepositioningLock:(id)repositioningLock {
  JreOperatorRetainedAssign(&repositioningLock_, repositioningLock);
}
@synthesize repositioningLock = repositioningLock_;

- (id)initJavaIoFileInputStreamWithJavaIoFile:(JavaIoFile *)file {
  if ((self = [super init])) {
    stream_ = JavaIoFileInputStream_INVALID_STREAM;
    JreOperatorRetainedAssign(&repositioningLock_, [[[NSObject alloc] init] autorelease]);
    if (file == nil) {
      @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"Argument must not be null"] autorelease];
    }
    if (![((JavaIoFile *) NIL_CHK(file)) exists]) {
      @throw [[[JavaIoFileNotFoundException alloc] initWithNSString:[((JavaIoFile *) NIL_CHK(file)) getPath]] autorelease];
    }
    JreOperatorRetainedAssign(&fd_, [[[JavaIoFileDescriptor alloc] init] autorelease]);
    ((JavaIoFileDescriptor *) NIL_CHK(fd_)).readOnly = YES;
    ((JavaIoFileDescriptor *) NIL_CHK(fd_)).descriptor = [self openWithNSString:[((JavaIoFile *) NIL_CHK(file)) getAbsolutePath]];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaIoFile:(JavaIoFile *)file {
  return [self initJavaIoFileInputStreamWithJavaIoFile:file];
}

- (long long int)openWithNSString:(NSString *)path   {
    return (long long) open([path UTF8String], O_RDONLY);
  }

- (id)initWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd {
  if ((self = [super init])) {
    stream_ = JavaIoFileInputStream_INVALID_STREAM;
    JreOperatorRetainedAssign(&repositioningLock_, [[[NSObject alloc] init] autorelease]);
    if (fd == nil) {
      @throw [[[JavaLangNullPointerException alloc] init] autorelease];
    }
    if (fd == [JavaIoFileDescriptor in]) {
      @throw [[[JavaLangAssertionError alloc] initWithId:@"stdin not implemented"] autorelease];
    }
    self.fd = fd;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)fileName {
  return JreMemDebugAdd([self initJavaIoFileInputStreamWithJavaIoFile:nil == fileName ? (JavaIoFile *) nil : [[[JavaIoFile alloc] initWithNSString:fileName] autorelease]]);
}

- (int)available {
  [self openCheck];
  @synchronized (repositioningLock_) {
    return [self nativeAvailableWithLongInt:((JavaIoFileDescriptor *) NIL_CHK(fd_)).descriptor];
  }
}

- (int)nativeAvailableWithLongInt:(long long int)descriptor   {
    long long currentPosition = lseek(descriptor, 0L, SEEK_CUR);
    long long endPosition = lseek(descriptor, 0L, SEEK_END);
    lseek(descriptor, currentPosition, SEEK_SET);
    return (int) (endPosition - currentPosition);
  }

- (void)close {
  if (fd_ == nil) {
    return;
  }
  @synchronized (self) {
    if (((JavaIoFileDescriptor *) NIL_CHK(fd_)).descriptor >= 0) {
      [self nativeClose];
      ((JavaIoFileDescriptor *) NIL_CHK(fd_)).descriptor = -1;
      stream_ = JavaIoFileInputStream_INVALID_STREAM;
    }
  }
}

- (void)nativeClose   {
    close(fd_->descriptor_);
  }

- (void)dealloc {
  JreMemDebugRemove(self);
  [self close];
  JreOperatorRetainedAssign(&repositioningLock_, nil);
  JreOperatorRetainedAssign(&fd_, nil);
  [super dealloc];
}

- (JavaIoFileDescriptor *)getFD {
  return fd_;
}

- (int)read {
  IOSByteArray *readed = [[[IOSByteArray alloc] initWithLength:1] autorelease];
  int result = [self readWithJavaLangByteArray:readed withInt:0 withInt:1];
  return result == -1 ? -1 : [((IOSByteArray *) NIL_CHK(readed)) byteAtIndex:0] & (int) 0xff;
}

- (int)readWithJavaLangByteArray:(IOSByteArray *)buffer {
  return [self readWithJavaLangByteArray:buffer withInt:0 withInt:(int) [((IOSByteArray *) NIL_CHK(buffer)) count]];
}

- (int)readWithJavaLangByteArray:(IOSByteArray *)buffer
                         withInt:(int)offset
                         withInt:(int)count {
  if (buffer == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if (count > (int) [((IOSByteArray *) NIL_CHK(buffer)) count] - offset || count < 0 || offset < 0) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (0 == count) {
    return 0;
  }
  [self openCheck];
  @synchronized (repositioningLock_) {
    return [self nativeReadWithJavaLangByteArray:buffer withInt:offset withInt:count];
  }
}

- (int)nativeReadWithJavaLangByteArray:(IOSByteArray *)buffer
                               withInt:(int)offset
                               withInt:(int)count   {
    char *buf = malloc(count);
    @try {
      int n = read(fd_->descriptor_, buf, count);
      if (n == 0) {
        return -1;  // EOF reached
      }
      if (n == -1) {
        JavaIoIOException *e = [[JavaIoIOException alloc] init];
        #if ! __has_feature(objc_arc)
        [e autorelease];
        #endif
        @throw e;
      }
      [buffer replaceBytes:buf length:n offset:offset];
      return n;
    }
    @finally {
      free(buf);
    }
  }

- (long long int)skipWithLongInt:(long long int)count {
  [self openCheck];
  if (count == 0) {
    return 0;
  }
  if (count < 0) {
    @throw [[[JavaIoIOException alloc] initWithNSString:@"Number of bytes to skip cannot be negative"] autorelease];
  }
  @synchronized (repositioningLock_) {
    return [self seekWithLongInt:count];
  }
}

- (long long int)seekWithLongInt:(long long int)count   {
    long currentPosition = lseek(fd_->descriptor_, 0L, SEEK_CUR);
    long newPosition = lseek(fd_->descriptor_, count, SEEK_CUR);
    return newPosition - currentPosition;
  }

- (void)openCheck {
  @synchronized(self) {
    {
      if (((JavaIoFileDescriptor *) NIL_CHK(fd_)).descriptor < 0) {
        @throw [[[JavaIoIOException alloc] init] autorelease];
      }
    }
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaIoFileInputStream *typedCopy = (JavaIoFileInputStream *) copy;
  typedCopy.fd = fd_;
  typedCopy.stream = stream_;
  typedCopy.repositioningLock = repositioningLock_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:fd_ name:@"fd"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:repositioningLock_ name:@"repositioningLock"]];
  return result;
}

@end
