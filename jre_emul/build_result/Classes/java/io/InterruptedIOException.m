//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/InterruptedIOException.java
//
//  Created by retechretech on 13-9-4.
//

#include "java/io/InterruptedIOException.h"

@implementation JavaIoInterruptedIOException

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (id)initWithNSString:(NSString *)detailMessage {
  return JreMemDebugAdd([super initWithNSString:detailMessage]);
}

- (void)copyAllFieldsTo:(JavaIoInterruptedIOException *)other {
  [super copyAllFieldsTo:other];
  other->bytesTransferred_ = bytesTransferred_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
