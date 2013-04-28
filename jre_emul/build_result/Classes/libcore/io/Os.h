//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/io/Os.java
//
//  Created by retechretech on 13-4-26.
//

@class JavaIoFileDescriptor;

#import "JreEmulation.h"

@protocol LibcoreIoOs < NSObject >
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
- (int)fcntlVoidWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd
                                 withInt:(int)cmd;
- (int)fcntlLongWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd
                                 withInt:(int)cmd
                             withLongInt:(long long int)arg;
- (JavaIoFileDescriptor *)openWithNSString:(NSString *)path
                                   withInt:(int)flags
                                   withInt:(int)mode;
- (NSString *)strerrorWithInt:(int)errno_;
@end
