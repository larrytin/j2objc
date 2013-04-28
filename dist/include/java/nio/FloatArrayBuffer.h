//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/FloatArrayBuffer.java
//
//  Created by retechretech on 13-4-26.
//

@class IOSFloatArray;
@class JavaNioByteOrder;

#import "JreEmulation.h"
#import "java/nio/FloatBuffer.h"

@interface JavaNioFloatArrayBuffer : JavaNioFloatBuffer {
 @public
  IOSFloatArray *backingArray_;
  int offset_;
}

@property (nonatomic, retain) IOSFloatArray *backingArray;
@property (nonatomic, assign) int offset;

- (id)initWithJavaLangFloatArray:(IOSFloatArray *)array;
- (id)initWithInt:(int)capacity;
- (id)initWithInt:(int)capacity
withJavaLangFloatArray:(IOSFloatArray *)backingArray
          withInt:(int)offset;
- (float)get;
- (float)getWithInt:(int)index;
- (JavaNioFloatBuffer *)getWithJavaLangFloatArray:(IOSFloatArray *)dest
                                          withInt:(int)off
                                          withInt:(int)len;
- (BOOL)isDirect;
- (JavaNioByteOrder *)order;
@end
