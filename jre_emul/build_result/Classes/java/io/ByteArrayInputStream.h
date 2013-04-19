//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/ByteArrayInputStream.java
//
//  Created by retechretech on 13-4-19.
//

@class IOSByteArray;

#import "JreEmulation.h"
#import "java/io/InputStream.h"

@interface JavaIoByteArrayInputStream : JavaIoInputStream {
 @public
  IOSByteArray *buf_;
  int pos_;
  int mark__;
  int count_;
}

@property (nonatomic, retain) IOSByteArray *buf;
@property (nonatomic, assign) int pos;
@property (nonatomic, assign) int mark_;
@property (nonatomic, assign) int count;

- (id)initWithJavaLangByteArray:(IOSByteArray *)buf;
- (id)initWithJavaLangByteArray:(IOSByteArray *)buf
                        withInt:(int)offset
                        withInt:(int)length;
- (int)available;
- (void)close;
- (void)markWithInt:(int)readlimit;
- (BOOL)markSupported;
- (int)read;
- (int)readWithJavaLangByteArray:(IOSByteArray *)b
                         withInt:(int)offset
                         withInt:(int)length;
- (void)reset;
- (long long int)skipWithLongInt:(long long int)n;
@end
