//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "java/nio/charset/UnsupportedCharsetException.h"

@implementation JavaNioCharsetUnsupportedCharsetException

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithNSString:(NSString *)charsetName {
  if (self = [super initWithNSString:(charsetName != nil) ? charsetName : @"null"]) {
    JavaNioCharsetUnsupportedCharsetException_set_charsetName_(self, charsetName);
    JreMemDebugAdd(self);
  }
  return self;
}

- (NSString *)getCharsetName {
  return charsetName_;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaNioCharsetUnsupportedCharsetException_set_charsetName_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaNioCharsetUnsupportedCharsetException *)other {
  [super copyAllFieldsTo:other];
  JavaNioCharsetUnsupportedCharsetException_set_charsetName_(other, charsetName_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:charsetName_ name:@"charsetName"]];
  return result;
}

@end
