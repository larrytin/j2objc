//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/io/Os.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _LibcoreIoOs_H_
#define _LibcoreIoOs_H_

@class JavaIoFileDescriptor;

#import "JreEmulation.h"

@protocol LibcoreIoOs < NSObject, JavaObject >
- (BOOL)accessWithNSString:(NSString *)path
                   withInt:(int)mode;
- (void)chmodWithNSString:(NSString *)path
                  withInt:(int)mode;
- (void)chownWithNSString:(NSString *)path
                  withInt:(int)uid
                  withInt:(int)gid;
- (void)closeWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd;
- (JavaIoFileDescriptor *)dupWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)oldFd;
- (JavaIoFileDescriptor *)dup2WithJavaIoFileDescriptor:(JavaIoFileDescriptor *)oldFd
                                               withInt:(int)newFd;
- (void)fchmodWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd
                               withInt:(int)mode;
- (void)fchownWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd
                               withInt:(int)uid
                               withInt:(int)gid;
- (int)fcntlVoidWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd
                                 withInt:(int)cmd;
- (int)fcntlLongWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd
                                 withInt:(int)cmd
                             withLongInt:(long long int)arg;
- (void)fsyncWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd;
- (BOOL)isattyWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd;
- (JavaIoFileDescriptor *)openWithNSString:(NSString *)path
                                   withInt:(int)flags
                                   withInt:(int)mode;
- (NSString *)strerrorWithInt:(int)errno_;
- (void)tcdrainWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd;
@end

#endif // _LibcoreIoOs_H_
