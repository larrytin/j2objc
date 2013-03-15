//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/io/CharArrayWriter.java
//
//  Created by retechretech on 13-3-15.
//

@class IOSCharArray;
@protocol JavaLangCharSequence;

#import "JreEmulation.h"
#import "java/io/Writer.h"

@interface JavaIoCharArrayWriter : JavaIoWriter {
 @public
  IOSCharArray *buf_;
  int count_;
}

@property (nonatomic, retain) IOSCharArray *buf;
@property (nonatomic, assign) int count;

- (id)init;
- (id)initWithInt:(int)initialSize;
- (void)close;
- (void)expandWithInt:(int)i;
- (void)flush;
- (void)reset;
- (int)size;
- (IOSCharArray *)toCharArray;
- (NSString *)description;
- (void)writeWithJavaLangCharacterArray:(IOSCharArray *)c
                                withInt:(int)offset
                                withInt:(int)len;
- (void)writeWithInt:(int)oneChar;
- (void)writeWithNSString:(NSString *)str
                  withInt:(int)offset
                  withInt:(int)len;
- (void)writeToWithJavaIoWriter:(JavaIoWriter *)outArg;
- (JavaIoCharArrayWriter *)appendWithUnichar:(unichar)c;
- (JavaIoCharArrayWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq;
- (JavaIoCharArrayWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                                  withInt:(int)start
                                                  withInt:(int)end;
@end
