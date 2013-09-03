//
//  NSDataOutputStream.m
//  JreEmulation
//
//  Created by Pankaj Kakkar on 5/20/13.
//
//

#import "NSDataOutputStream.h"

@interface NSDataOutputStream() {
@private
  NSMutableData *data_;
}

@end

@implementation NSDataOutputStream

- (id)init {
  if ((self = [super init])) {
    data_ = [[NSMutableData alloc] init];
  }

  return self;
}

+ (NSDataOutputStream *)stream {
  return AUTORELEASE([[NSDataOutputStream alloc] init]);
}

#if ! __has_feature(objc_arc)
- (void)dealloc {
  [data_ autorelease];
  [super dealloc];
}
#endif

- (void)writeWithInt:(int)oneByte {
  char byte = oneByte & 0xff;
  [data_ appendBytes:&byte length:1];
}

- (void)writeWithJavaLangByteArray:(IOSByteArray *)buffer
                           withInt:(int)offset
                           withInt:(int)count {
  nil_chk(buffer);
  NSUInteger originalLength = [data_ length];
  [data_ increaseLengthBy:count];

  void *firstNewByte = [data_ mutableBytes] + originalLength;
  [buffer getBytes:firstNewByte offset:offset length:count];
}

- (NSData *)data {
  return data_;
}

@end
