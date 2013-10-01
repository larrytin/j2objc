//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaNioReadOnlyCharArrayBuffer_H_
#define _JavaNioReadOnlyCharArrayBuffer_H_

@class IOSCharArray;
@class JavaNioCharBuffer;

#import "JreEmulation.h"
#include "java/nio/CharArrayBuffer.h"

@interface JavaNioReadOnlyCharArrayBuffer : JavaNioCharArrayBuffer {
}

+ (JavaNioReadOnlyCharArrayBuffer *)copy__WithJavaNioCharArrayBuffer:(JavaNioCharArrayBuffer *)other
                                                             withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE;
- (id)initWithInt:(int)capacity
    withCharArray:(IOSCharArray *)backingArray
          withInt:(int)arrayOffset;
- (JavaNioCharBuffer *)asReadOnlyBuffer;
- (JavaNioCharBuffer *)compact;
- (JavaNioCharBuffer *)duplicate;
- (BOOL)isReadOnly;
- (IOSCharArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioCharBuffer *)putWithChar:(unichar)c;
- (JavaNioCharBuffer *)putWithInt:(int)index
                         withChar:(unichar)c;
- (JavaNioCharBuffer *)putWithCharArray:(IOSCharArray *)src
                                withInt:(int)off
                                withInt:(int)len;
- (JavaNioCharBuffer *)putWithJavaNioCharBuffer:(JavaNioCharBuffer *)src;
- (JavaNioCharBuffer *)putWithNSString:(NSString *)src
                               withInt:(int)start
                               withInt:(int)end;
- (JavaNioCharBuffer *)slice;
@end

#endif // _JavaNioReadOnlyCharArrayBuffer_H_
