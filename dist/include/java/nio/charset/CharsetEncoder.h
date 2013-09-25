//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/nio/charset/CharsetEncoder.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaNioCharsetCharsetEncoder_H_
#define _JavaNioCharsetCharsetEncoder_H_

@class IOSByteArray;
@class JavaNioByteBuffer;
@class JavaNioCharBuffer;
@class JavaNioCharsetCharset;
@class JavaNioCharsetCharsetDecoder;
@class JavaNioCharsetCoderResult;
@class JavaNioCharsetCodingErrorAction;
@protocol JavaLangCharSequence;

#import "JreEmulation.h"

#define JavaNioCharsetCharsetEncoder_END 2
#define JavaNioCharsetCharsetEncoder_FLUSH 3
#define JavaNioCharsetCharsetEncoder_INIT 4
#define JavaNioCharsetCharsetEncoder_ONGOING 1
#define JavaNioCharsetCharsetEncoder_READY 0

@interface JavaNioCharsetCharsetEncoder : NSObject {
 @public
  JavaNioCharsetCharset *cs_;
  float averageBytesPerChar__;
  float maxBytesPerChar__;
  IOSByteArray *replacementBytes_;
  int status_;
  BOOL finished_;
  JavaNioCharsetCodingErrorAction *malformedInputAction__;
  JavaNioCharsetCodingErrorAction *unmappableCharacterAction__;
  JavaNioCharsetCharsetDecoder *decoder_;
}

- (id)initWithJavaNioCharsetCharset:(JavaNioCharsetCharset *)cs
                          withFloat:(float)averageBytesPerChar
                          withFloat:(float)maxBytesPerChar;
- (id)initWithJavaNioCharsetCharset:(JavaNioCharsetCharset *)cs
                          withFloat:(float)averageBytesPerChar
                          withFloat:(float)maxBytesPerChar
                      withByteArray:(IOSByteArray *)replacement;
- (float)averageBytesPerChar;
- (BOOL)canEncodeWithChar:(unichar)c;
- (BOOL)implCanEncodeWithJavaNioCharBuffer:(JavaNioCharBuffer *)cb;
- (BOOL)canEncodeWithJavaLangCharSequence:(id<JavaLangCharSequence>)sequence;
- (JavaNioCharsetCharset *)charset;
- (JavaNioByteBuffer *)encodeWithJavaNioCharBuffer:(JavaNioCharBuffer *)inArg;
- (JavaNioCharsetCoderResult *)encodeWithJavaNioCharBuffer:(JavaNioCharBuffer *)inArg
                                     withJavaNioByteBuffer:(JavaNioByteBuffer *)outArg
                                               withBoolean:(BOOL)endOfInput;
- (JavaNioCharsetCoderResult *)encodeLoopWithJavaNioCharBuffer:(JavaNioCharBuffer *)inArg
                                         withJavaNioByteBuffer:(JavaNioByteBuffer *)outArg;
- (JavaNioCharsetCoderResult *)flushWithJavaNioByteBuffer:(JavaNioByteBuffer *)outArg;
- (JavaNioCharsetCodingErrorAction *)malformedInputAction;
- (float)maxBytesPerChar;
- (JavaNioCharsetCharsetEncoder *)onMalformedInputWithJavaNioCharsetCodingErrorAction:(JavaNioCharsetCodingErrorAction *)newAction;
- (JavaNioCharsetCharsetEncoder *)onUnmappableCharacterWithJavaNioCharsetCodingErrorAction:(JavaNioCharsetCodingErrorAction *)newAction;
- (IOSByteArray *)replacement;
- (JavaNioCharsetCharsetEncoder *)replaceWithWithByteArray:(IOSByteArray *)replacement;
- (JavaNioCharsetCharsetEncoder *)reset;
- (JavaNioCharsetCodingErrorAction *)unmappableCharacterAction;
- (void)copyAllFieldsTo:(JavaNioCharsetCharsetEncoder *)other;
@end

J2OBJC_FIELD_SETTER(JavaNioCharsetCharsetEncoder, cs_, JavaNioCharsetCharset *)
J2OBJC_FIELD_SETTER(JavaNioCharsetCharsetEncoder, replacementBytes_, IOSByteArray *)
J2OBJC_FIELD_SETTER(JavaNioCharsetCharsetEncoder, malformedInputAction__, JavaNioCharsetCodingErrorAction *)
J2OBJC_FIELD_SETTER(JavaNioCharsetCharsetEncoder, unmappableCharacterAction__, JavaNioCharsetCodingErrorAction *)
J2OBJC_FIELD_SETTER(JavaNioCharsetCharsetEncoder, decoder_, JavaNioCharsetCharsetDecoder *)

#endif // _JavaNioCharsetCharsetEncoder_H_
