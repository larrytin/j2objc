//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaNioLongBuffer_H_
#define _JavaNioLongBuffer_H_

@class IOSLongArray;
@class JavaNioByteOrder;

#import "JreEmulation.h"
#include "java/lang/Comparable.h"
#include "java/nio/Buffer.h"

@interface JavaNioLongBuffer : JavaNioBuffer < JavaLangComparable > {
}

+ (JavaNioLongBuffer *)allocateWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioLongBuffer *)wrapWithLongArray:(IOSLongArray *)array;
+ (JavaNioLongBuffer *)wrapWithLongArray:(IOSLongArray *)array
                                 withInt:(int)start
                                 withInt:(int)len;
- (id)initWithInt:(int)capacity;
- (IOSLongArray *)array;
- (int)arrayOffset;
- (JavaNioLongBuffer *)asReadOnlyBuffer;
- (JavaNioLongBuffer *)compact;
- (int)compareToWithId:(JavaNioLongBuffer *)otherBuffer;
- (JavaNioLongBuffer *)duplicate;
- (BOOL)isEqual:(id)other;
- (long long int)get;
- (JavaNioLongBuffer *)getWithLongArray:(IOSLongArray *)dest;
- (JavaNioLongBuffer *)getWithLongArray:(IOSLongArray *)dest
                                withInt:(int)off
                                withInt:(int)len;
- (long long int)getWithInt:(int)index;
- (BOOL)hasArray;
- (NSUInteger)hash;
- (BOOL)isDirect;
- (JavaNioByteOrder *)order;
- (IOSLongArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioLongBuffer *)putWithLong:(long long int)l;
- (JavaNioLongBuffer *)putWithLongArray:(IOSLongArray *)src;
- (JavaNioLongBuffer *)putWithLongArray:(IOSLongArray *)src
                                withInt:(int)off
                                withInt:(int)len;
- (JavaNioLongBuffer *)putWithJavaNioLongBuffer:(JavaNioLongBuffer *)src;
- (JavaNioLongBuffer *)putWithInt:(int)index
                         withLong:(long long int)l;
- (JavaNioLongBuffer *)slice;
- (NSString *)description;
@end

#endif // _JavaNioLongBuffer_H_
