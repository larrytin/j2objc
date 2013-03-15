//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/BufferFactory.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSByteArray.h"
#import "IOSCharArray.h"
#import "IOSDoubleArray.h"
#import "IOSFloatArray.h"
#import "IOSIntArray.h"
#import "IOSLongArray.h"
#import "IOSShortArray.h"
#import "java/lang/CharSequence.h"
#import "java/lang/RuntimeException.h"
#import "java/nio/BufferFactory.h"
#import "java/nio/ByteBuffer.h"
#import "java/nio/CharBuffer.h"
#import "java/nio/CharSequenceAdapter.h"
#import "java/nio/DoubleBuffer.h"
#import "java/nio/FloatBuffer.h"
#import "java/nio/IntBuffer.h"
#import "java/nio/LongBuffer.h"
#import "java/nio/ReadWriteCharArrayBuffer.h"
#import "java/nio/ReadWriteDoubleArrayBuffer.h"
#import "java/nio/ReadWriteFloatArrayBuffer.h"
#import "java/nio/ReadWriteHeapByteBuffer.h"
#import "java/nio/ReadWriteIntArrayBuffer.h"
#import "java/nio/ReadWriteLongArrayBuffer.h"
#import "java/nio/ReadWriteShortArrayBuffer.h"
#import "java/nio/ShortBuffer.h"

@implementation JavaNioBufferFactory

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioByteBuffer *)newByteBufferWithJavaLangByteArray:(IOSByteArray *)array OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteHeapByteBuffer alloc] initWithJavaLangByteArray:array] autorelease];
}

+ (JavaNioByteBuffer *)newByteBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteHeapByteBuffer alloc] initWithInt:capacity] autorelease];
}

+ (JavaNioCharBuffer *)newCharBufferWithJavaLangCharacterArray:(IOSCharArray *)array OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteCharArrayBuffer alloc] initWithJavaLangCharacterArray:array] autorelease];
}

+ (JavaNioCharBuffer *)newCharBufferWithJavaLangCharSequence:(id<JavaLangCharSequence>)chseq OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioCharSequenceAdapter alloc] initWithJavaLangCharSequence:chseq] autorelease];
}

+ (JavaNioCharBuffer *)newCharBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteCharArrayBuffer alloc] initWithInt:capacity] autorelease];
}

+ (JavaNioByteBuffer *)newDirectByteBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  @throw [[[JavaLangRuntimeException alloc] initWithNSString:@"newDirectByteBuffer(capacity);"] autorelease];
}

+ (JavaNioDoubleBuffer *)newDoubleBufferWithJavaLangDoubleArray:(IOSDoubleArray *)array OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteDoubleArrayBuffer alloc] initWithJavaLangDoubleArray:array] autorelease];
}

+ (JavaNioDoubleBuffer *)newDoubleBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteDoubleArrayBuffer alloc] initWithInt:capacity] autorelease];
}

+ (JavaNioFloatBuffer *)newFloatBufferWithJavaLangFloatArray:(IOSFloatArray *)array OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteFloatArrayBuffer alloc] initWithJavaLangFloatArray:array] autorelease];
}

+ (JavaNioFloatBuffer *)newFloatBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteFloatArrayBuffer alloc] initWithInt:capacity] autorelease];
}

+ (JavaNioIntBuffer *)newIntBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteIntArrayBuffer alloc] initWithInt:capacity] autorelease];
}

+ (JavaNioIntBuffer *)newIntBufferWithJavaLangIntegerArray:(IOSIntArray *)array OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteIntArrayBuffer alloc] initWithJavaLangIntegerArray:array] autorelease];
}

+ (JavaNioLongBuffer *)newLongBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteLongArrayBuffer alloc] initWithInt:capacity] autorelease];
}

+ (JavaNioLongBuffer *)newLongBufferWithJavaLangLongArray:(IOSLongArray *)array OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteLongArrayBuffer alloc] initWithJavaLangLongArray:array] autorelease];
}

+ (JavaNioShortBuffer *)newShortBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteShortArrayBuffer alloc] initWithInt:capacity] autorelease];
}

+ (JavaNioShortBuffer *)newShortBufferWithJavaLangShortArray:(IOSShortArray *)array OBJC_METHOD_FAMILY_NONE {
  return [[[JavaNioReadWriteShortArrayBuffer alloc] initWithJavaLangShortArray:array] autorelease];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
