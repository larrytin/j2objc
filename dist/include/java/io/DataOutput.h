//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/DataOutput.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaIoDataOutput_H_
#define _JavaIoDataOutput_H_

@class IOSByteArray;

#import "JreEmulation.h"

@protocol JavaIoDataOutput < NSObject, JavaObject >
- (void)writeWithByteArray:(IOSByteArray *)buffer;
- (void)writeWithByteArray:(IOSByteArray *)buffer
                   withInt:(int)offset
                   withInt:(int)count;
- (void)writeWithInt:(int)oneByte;
- (void)writeBooleanWithBoolean:(BOOL)val;
- (void)writeByteWithInt:(int)val;
- (void)writeBytesWithNSString:(NSString *)str;
- (void)writeCharWithInt:(int)val;
- (void)writeCharsWithNSString:(NSString *)str;
- (void)writeDoubleWithDouble:(double)val;
- (void)writeFloatWithFloat:(float)val;
- (void)writeIntWithInt:(int)val;
- (void)writeLongWithLong:(long long int)val;
- (void)writeShortWithInt:(int)val;
- (void)writeUTFWithNSString:(NSString *)str;
@end

#endif // _JavaIoDataOutput_H_
