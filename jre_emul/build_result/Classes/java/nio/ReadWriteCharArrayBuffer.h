//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadWriteCharArrayBuffer.java
//
//  Created by retechretech on 13-4-19.
//

@class IOSCharArray;
@class JavaNioCharBuffer;

#import "JreEmulation.h"
#import "java/nio/CharArrayBuffer.h"

@interface JavaNioReadWriteCharArrayBuffer : JavaNioCharArrayBuffer {
}

+ (JavaNioReadWriteCharArrayBuffer *)copy__WithJavaNioCharArrayBuffer:(JavaNioCharArrayBuffer *)other
                                                              withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE;
- (id)initWithJavaLangCharacterArray:(IOSCharArray *)array;
- (id)initWithInt:(int)capacity;
- (id)initWithInt:(int)capacity
withJavaLangCharacterArray:(IOSCharArray *)backingArray
          withInt:(int)arrayOffset;
- (JavaNioCharBuffer *)asReadOnlyBuffer;
- (JavaNioCharBuffer *)compact;
- (JavaNioCharBuffer *)duplicate;
- (BOOL)isReadOnly;
- (IOSCharArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioCharBuffer *)putWithUnichar:(unichar)c;
- (JavaNioCharBuffer *)putWithInt:(int)index
                      withUnichar:(unichar)c;
- (JavaNioCharBuffer *)putWithJavaLangCharacterArray:(IOSCharArray *)src
                                             withInt:(int)off
                                             withInt:(int)len;
- (JavaNioCharBuffer *)slice;
@end
