//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/io/ByteArrayOutputStream.java
//
//  Created by retechretech on 13-3-15.
//

@class IOSByteArray;

#import "JreEmulation.h"
#import "java/io/OutputStream.h"

@interface JavaIoByteArrayOutputStream : JavaIoOutputStream {
 @public
  IOSByteArray *buf_;
  int count_;
}

@property (nonatomic, retain) IOSByteArray *buf;
@property (nonatomic, assign) int count;

- (id)init;
- (id)initWithInt:(int)size;
- (void)close;
- (void)expandWithInt:(int)i;
- (void)reset;
- (int)size;
- (IOSByteArray *)toByteArray;
- (NSString *)description;
- (NSString *)toStringWithInt:(int)hibyte;
- (NSString *)toStringWithNSString:(NSString *)enc;
- (void)writeWithJavaLangByteArray:(IOSByteArray *)buffer
                           withInt:(int)offset
                           withInt:(int)len;
- (void)writeWithInt:(int)oneByte;
- (void)writeToWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;
@end
