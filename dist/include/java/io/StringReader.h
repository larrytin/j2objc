//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/StringReader.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaIoStringReader_H_
#define _JavaIoStringReader_H_

@class IOSCharArray;

#import "JreEmulation.h"
#include "java/io/Reader.h"

@interface JavaIoStringReader : JavaIoReader {
 @public
  NSString *str_;
  int markpos_;
  int pos_;
  int count_;
}

- (id)initWithNSString:(NSString *)str;
- (void)close;
- (BOOL)isClosed;
- (void)markWithInt:(int)readLimit;
- (BOOL)markSupported;
- (int)read;
- (int)readWithCharArray:(IOSCharArray *)buf
                 withInt:(int)offset
                 withInt:(int)len;
- (BOOL)ready;
- (void)reset;
- (long long int)skipWithLong:(long long int)ns;
- (void)copyAllFieldsTo:(JavaIoStringReader *)other;
@end

J2OBJC_FIELD_SETTER(JavaIoStringReader, str_, NSString *)

#endif // _JavaIoStringReader_H_
