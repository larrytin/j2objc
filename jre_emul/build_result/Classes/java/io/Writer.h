//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/Writer.java
//
//  Created by retechretech on 13-4-19.
//

@class IOSCharArray;
@protocol JavaLangCharSequence;

#import "JreEmulation.h"
#import "java/io/Closeable.h"
#import "java/io/Flushable.h"
#import "java/lang/Appendable.h"

@interface JavaIoWriter : NSObject < JavaLangAppendable, JavaIoCloseable, JavaIoFlushable > {
 @public
  id lock_;
}

@property (nonatomic, retain) id lock;

+ (NSString *)TOKEN_NULL;
- (id)init;
- (id)initWithId:(id)lock;
- (void)close;
- (void)flush;
- (void)writeWithJavaLangCharacterArray:(IOSCharArray *)buf;
- (void)writeWithJavaLangCharacterArray:(IOSCharArray *)buf
                                withInt:(int)offset
                                withInt:(int)count;
- (void)writeWithInt:(int)oneChar;
- (void)writeWithNSString:(NSString *)str;
- (void)writeWithNSString:(NSString *)str
                  withInt:(int)offset
                  withInt:(int)count;
- (JavaIoWriter *)appendWithUnichar:(unichar)c;
- (JavaIoWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq;
- (JavaIoWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                         withInt:(int)start
                                         withInt:(int)end;
- (BOOL)checkError;
@end
