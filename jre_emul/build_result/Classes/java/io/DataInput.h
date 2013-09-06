//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/DataInput.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaIoDataInput_H_
#define _JavaIoDataInput_H_

@class IOSByteArray;

#import "JreEmulation.h"

@protocol JavaIoDataInput < NSObject, JavaObject >
- (BOOL)readBoolean;
- (char)readByte;
- (unichar)readChar;
- (double)readDouble;
- (float)readFloat;
- (void)readFullyWithByteArray:(IOSByteArray *)buffer;
- (void)readFullyWithByteArray:(IOSByteArray *)buffer
                       withInt:(int)offset
                       withInt:(int)count;
- (int)readInt;
- (NSString *)readLine;
- (long long int)readLong;
- (short int)readShort;
- (int)readUnsignedByte;
- (int)readUnsignedShort;
- (NSString *)readUTF;
- (int)skipBytesWithInt:(int)count;
@end

#endif // _JavaIoDataInput_H_
