//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "java/nio/charset/UnmappableCharacterException.h"

@implementation JavaNioCharsetUnmappableCharacterException

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithInt:(int)length {
  if (self = [super init]) {
    self->inputLength_ = length;
    JreMemDebugAdd(self);
  }
  return self;
}

- (int)getInputLength {
  return self->inputLength_;
}

- (NSString *)getMessage {
  return [NSString stringWithFormat:@"Length: %d", inputLength_];
}

- (void)copyAllFieldsTo:(JavaNioCharsetUnmappableCharacterException *)other {
  [super copyAllFieldsTo:other];
  other->inputLength_ = inputLength_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
