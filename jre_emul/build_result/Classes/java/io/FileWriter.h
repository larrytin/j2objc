//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/FileWriter.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaIoFileWriter_H_
#define _JavaIoFileWriter_H_

@class JavaIoFile;
@class JavaIoFileDescriptor;

#import "JreEmulation.h"
#include "java/io/OutputStreamWriter.h"

@interface JavaIoFileWriter : JavaIoOutputStreamWriter {
}

- (id)initWithJavaIoFile:(JavaIoFile *)file;
- (id)initWithJavaIoFile:(JavaIoFile *)file
                withBOOL:(BOOL)append;
- (id)initWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd;
- (id)initWithNSString:(NSString *)filename;
- (id)initWithNSString:(NSString *)filename
              withBOOL:(BOOL)append;
@end

#endif // _JavaIoFileWriter_H_
