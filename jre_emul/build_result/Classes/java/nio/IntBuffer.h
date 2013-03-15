//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/IntBuffer.java
//
//  Created by retechretech on 13-3-15.
//

@class IOSIntArray;
@class JavaNioByteOrder;

#import "JreEmulation.h"
#import "java/lang/Comparable.h"
#import "java/nio/Buffer.h"

@interface JavaNioIntBuffer : JavaNioBuffer < JavaLangComparable > {
}

+ (JavaNioIntBuffer *)allocateWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioIntBuffer *)wrapWithJavaLangIntegerArray:(IOSIntArray *)array;
+ (JavaNioIntBuffer *)wrapWithJavaLangIntegerArray:(IOSIntArray *)array
                                           withInt:(int)start
                                           withInt:(int)len;
- (id)initWithInt:(int)capacity;
- (IOSIntArray *)array;
- (int)arrayOffset;
- (JavaNioIntBuffer *)asReadOnlyBuffer;
- (JavaNioIntBuffer *)compact;
- (int)compareToWithId:(JavaNioIntBuffer *)otherBuffer;
- (JavaNioIntBuffer *)duplicate;
- (BOOL)isEqual:(id)other;
- (int)get;
- (JavaNioIntBuffer *)getWithJavaLangIntegerArray:(IOSIntArray *)dest;
- (JavaNioIntBuffer *)getWithJavaLangIntegerArray:(IOSIntArray *)dest
                                          withInt:(int)off
                                          withInt:(int)len;
- (int)getWithInt:(int)index;
- (BOOL)hasArray;
- (NSUInteger)hash;
- (BOOL)isDirect;
- (JavaNioByteOrder *)order;
- (IOSIntArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioIntBuffer *)putWithInt:(int)i;
- (JavaNioIntBuffer *)putWithJavaLangIntegerArray:(IOSIntArray *)src;
- (JavaNioIntBuffer *)putWithJavaLangIntegerArray:(IOSIntArray *)src
                                          withInt:(int)off
                                          withInt:(int)len;
- (JavaNioIntBuffer *)putWithJavaNioIntBuffer:(JavaNioIntBuffer *)src;
- (JavaNioIntBuffer *)putWithInt:(int)index
                         withInt:(int)i;
- (JavaNioIntBuffer *)slice;
- (NSString *)description;
@end
