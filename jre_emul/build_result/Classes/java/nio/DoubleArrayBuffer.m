//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/DoubleArrayBuffer.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSDoubleArray.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/System.h"
#import "java/nio/Buffer.h"
#import "java/nio/BufferUnderflowException.h"
#import "java/nio/ByteOrder.h"
#import "java/nio/DoubleArrayBuffer.h"
#import "java/nio/DoubleBuffer.h"

@implementation JavaNioDoubleArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (IOSDoubleArray *)backingArray {
  return [[backingArray_ retain] autorelease];
}
- (void)setBackingArray:(IOSDoubleArray *)backingArray {
  JreOperatorRetainedAssign(&backingArray_, backingArray);
}
@synthesize backingArray = backingArray_;
@synthesize offset = offset_;

- (id)initWithJavaLangDoubleArray:(IOSDoubleArray *)array {
  return JreMemDebugAdd([self initJavaNioDoubleArrayBufferWithInt:(int) [((IOSDoubleArray *) NIL_CHK(array)) count] withJavaLangDoubleArray:array withInt:0]);
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([self initJavaNioDoubleArrayBufferWithInt:capacity withJavaLangDoubleArray:[[[IOSDoubleArray alloc] initWithLength:capacity] autorelease] withInt:0]);
}

- (id)initJavaNioDoubleArrayBufferWithInt:(int)capacity
                  withJavaLangDoubleArray:(IOSDoubleArray *)backingArray
                                  withInt:(int)offset {
  if ((self = [super initWithInt:capacity])) {
    self.backingArray = backingArray;
    self.offset = offset;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)capacity
withJavaLangDoubleArray:(IOSDoubleArray *)backingArray
          withInt:(int)offset {
  return [self initJavaNioDoubleArrayBufferWithInt:capacity withJavaLangDoubleArray:backingArray withInt:offset];
}

- (double)get {
  if (position__ == limit__) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  return [((IOSDoubleArray *) NIL_CHK(backingArray_)) doubleAtIndex:offset_ + position__++];
}

- (double)getWithInt:(int)index {
  if (index < 0 || index >= limit__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  return [((IOSDoubleArray *) NIL_CHK(backingArray_)) doubleAtIndex:offset_ + index];
}

- (JavaNioDoubleBuffer *)getWithJavaLangDoubleArray:(IOSDoubleArray *)dest
                                            withInt:(int)off
                                            withInt:(int)len {
  int length = (int) [((IOSDoubleArray *) NIL_CHK(dest)) count];
  if (off < 0 || len < 0 || (long long int) off + (long long int) len > length) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  [JavaLangSystem arraycopyWithId:backingArray_ withInt:offset_ + position__ withId:dest withInt:off withInt:len];
  position__ += len;
  return self;
}

- (BOOL)isDirect {
  return NO;
}

- (JavaNioByteOrder *)order {
  return [JavaNioByteOrder nativeOrder];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&backingArray_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaNioDoubleArrayBuffer *typedCopy = (JavaNioDoubleArrayBuffer *) copy;
  typedCopy.backingArray = backingArray_;
  typedCopy.offset = offset_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:backingArray_ name:@"backingArray"]];
  return result;
}

@end
