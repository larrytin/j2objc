//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/StringWriter.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaIoStringWriter_H_
#define _JavaIoStringWriter_H_

@class IOSCharArray;
@class JavaLangStringBuffer;
@protocol JavaLangCharSequence;

#import "JreEmulation.h"
#include "java/io/Writer.h"

@interface JavaIoStringWriter : JavaIoWriter {
 @public
  JavaLangStringBuffer *buf_;
}

- (id)init;
- (id)initWithInt:(int)initialSize;
- (void)close;
- (void)flush;
- (JavaLangStringBuffer *)getBuffer;
- (NSString *)description;
- (void)writeWithCharArray:(IOSCharArray *)cbuf
                   withInt:(int)offset
                   withInt:(int)count;
- (void)writeWithInt:(int)oneChar;
- (void)writeWithNSString:(NSString *)str;
- (void)writeWithNSString:(NSString *)str
                  withInt:(int)offset
                  withInt:(int)count;
- (JavaIoStringWriter *)appendWithUnichar:(unichar)c;
- (JavaIoStringWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq;
- (JavaIoStringWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                               withInt:(int)start
                                               withInt:(int)end;
- (void)copyAllFieldsTo:(JavaIoStringWriter *)other;
@end

J2OBJC_FIELD_SETTER(JavaIoStringWriter, buf_, JavaLangStringBuffer *)

#endif // _JavaIoStringWriter_H_
