//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/FileWriter.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "java/io/File.h"
#include "java/io/FileDescriptor.h"
#include "java/io/FileOutputStream.h"
#include "java/io/FileWriter.h"
#include "java/io/IOException.h"

@implementation JavaIoFileWriter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaIoFile:(JavaIoFile *)file {
  return JreMemDebugAdd([super initWithJavaIoOutputStream:[[[JavaIoFileOutputStream alloc] initWithJavaIoFile:file] autorelease]]);
}

+ (IOSObjectArray *)__exceptions_JavaIoFileWriterWithJavaIoFile_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (id)initWithJavaIoFile:(JavaIoFile *)file
             withBoolean:(BOOL)append {
  return JreMemDebugAdd([super initWithJavaIoOutputStream:[[[JavaIoFileOutputStream alloc] initWithJavaIoFile:file withBoolean:append] autorelease]]);
}

+ (IOSObjectArray *)__exceptions_JavaIoFileWriterWithJavaIoFile_withBoolean_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (id)initWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd {
  return JreMemDebugAdd([super initWithJavaIoOutputStream:[[[JavaIoFileOutputStream alloc] initWithJavaIoFileDescriptor:fd] autorelease]]);
}

- (id)initWithNSString:(NSString *)filename {
  return JreMemDebugAdd([super initWithJavaIoOutputStream:[[[JavaIoFileOutputStream alloc] initWithJavaIoFile:[[[JavaIoFile alloc] initWithNSString:filename] autorelease]] autorelease]]);
}

+ (IOSObjectArray *)__exceptions_JavaIoFileWriterWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (id)initWithNSString:(NSString *)filename
           withBoolean:(BOOL)append {
  return JreMemDebugAdd([super initWithJavaIoOutputStream:[[[JavaIoFileOutputStream alloc] initWithNSString:filename withBoolean:append] autorelease]]);
}

+ (IOSObjectArray *)__exceptions_JavaIoFileWriterWithNSString_withBoolean_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

@end
