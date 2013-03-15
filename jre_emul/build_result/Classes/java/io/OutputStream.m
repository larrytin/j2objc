//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/io/OutputStream.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSByteArray.h"
#import "java/io/OutputStream.h"
#import "java/lang/IndexOutOfBoundsException.h"

@implementation JavaIoOutputStream

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)close {
}

- (void)flush {
}

- (void)writeWithJavaLangByteArray:(IOSByteArray *)buffer {
  [self writeWithJavaLangByteArray:buffer withInt:0 withInt:(int) [((IOSByteArray *) NIL_CHK(buffer)) count]];
}

- (void)writeWithJavaLangByteArray:(IOSByteArray *)buffer
                           withInt:(int)offset
                           withInt:(int)count {
  if (offset > (int) [((IOSByteArray *) NIL_CHK(buffer)) count] || offset < 0 || count < 0 || count > (int) [((IOSByteArray *) NIL_CHK(buffer)) count] - offset) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:@"arguments out of bounds"] autorelease];
  }
  for (int i = offset; i < offset + count; i++) {
    [self writeWithInt:[((IOSByteArray *) NIL_CHK(buffer)) byteAtIndex:i]];
  }
}

- (void)writeWithInt:(int)oneByte {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (BOOL)checkError {
  return NO;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
