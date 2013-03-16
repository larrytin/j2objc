//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ShortBuffer.java
//
//  Created by retechretech on 13-3-15.
//

@class IOSShortArray;
@class JavaNioByteOrder;

#import "JreEmulation.h"
#import "java/lang/Comparable.h"
#import "java/nio/Buffer.h"

@interface JavaNioShortBuffer : JavaNioBuffer < JavaLangComparable > {
}

+ (JavaNioShortBuffer *)allocateWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioShortBuffer *)wrapWithJavaLangShortArray:(IOSShortArray *)array;
+ (JavaNioShortBuffer *)wrapWithJavaLangShortArray:(IOSShortArray *)array
                                           withInt:(int)start
                                           withInt:(int)len;
- (id)initWithInt:(int)capacity;
- (IOSShortArray *)array;
- (int)arrayOffset;
- (JavaNioShortBuffer *)asReadOnlyBuffer;
- (JavaNioShortBuffer *)compact;
- (int)compareToWithId:(JavaNioShortBuffer *)otherBuffer;
- (JavaNioShortBuffer *)duplicate;
- (BOOL)isEqual:(id)other;
- (short int)get;
- (JavaNioShortBuffer *)getWithJavaLangShortArray:(IOSShortArray *)dest;
- (JavaNioShortBuffer *)getWithJavaLangShortArray:(IOSShortArray *)dest
                                          withInt:(int)off
                                          withInt:(int)len;
- (short int)getWithInt:(int)index;
- (BOOL)hasArray;
- (NSUInteger)hash;
- (BOOL)isDirect;
- (JavaNioByteOrder *)order;
- (IOSShortArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioShortBuffer *)putWithShortInt:(short int)s;
- (JavaNioShortBuffer *)putWithJavaLangShortArray:(IOSShortArray *)src;
- (JavaNioShortBuffer *)putWithJavaLangShortArray:(IOSShortArray *)src
                                          withInt:(int)off
                                          withInt:(int)len;
- (JavaNioShortBuffer *)putWithJavaNioShortBuffer:(JavaNioShortBuffer *)src;
- (JavaNioShortBuffer *)putWithInt:(int)index
                      withShortInt:(short int)s;
- (JavaNioShortBuffer *)slice;
- (NSString *)description;
@end