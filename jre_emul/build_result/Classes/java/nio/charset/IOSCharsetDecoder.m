//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/nio/charset/IOSCharsetDecoder.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSByteArray.h"
#include "IOSCharArray.h"
#include "IOSClass.h"
#include "java/lang/System.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/CharBuffer.h"
#include "java/nio/charset/CharacterCodingException.h"
#include "java/nio/charset/Charset.h"
#include "java/nio/charset/CharsetDecoder.h"
#include "java/nio/charset/CoderResult.h"
#include "java/nio/charset/IOSCharset.h"
#include "java/nio/charset/IOSCharsetDecoder.h"
#include "java/nio/charset/UnsupportedCharsetException.h"

@implementation JavaNioCharsetIOSCharsetDecoder

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset {
  return JreMemDebugAdd([super initWithJavaNioCharsetCharset:charset withFloat:1 withFloat:4]);
}

- (JavaNioCharsetCoderResult *)decodeLoopWithJavaNioByteBuffer:(JavaNioByteBuffer *)inArg
                                         withJavaNioCharBuffer:(JavaNioCharBuffer *)outArg {
  if (charBuffer_ != nil) {
    while ([((JavaNioCharBuffer *) nil_chk(outArg)) hasRemaining] && outIndex_ < (int) [charBuffer_ count]) {
      [outArg putWithChar:IOSCharArray_Get(charBuffer_, outIndex_++)];
    }
    if (outIndex_ == (int) [charBuffer_ count]) {
      JavaNioCharsetIOSCharsetDecoder_set_charBuffer_(self, nil);
    }
  }
  else if ([((JavaNioByteBuffer *) nil_chk(inArg)) hasRemaining]) {
    NSString *s = [self decodeImplWithJavaNioByteBuffer:inArg];
    if ([((NSString *) nil_chk(s)) isEmpty]) {
      return [JavaNioCharsetCoderResult getUNDERFLOW];
    }
    if ([((JavaNioCharBuffer *) nil_chk(outArg)) remaining] < [s length]) {
      JavaNioCharsetIOSCharsetDecoder_set_charBuffer_(self, [s toCharArray]);
      outIndex_ = 0;
      return [self decodeLoopWithJavaNioByteBuffer:inArg withJavaNioCharBuffer:outArg];
    }
    else {
      [outArg putWithNSString:s];
    }
  }
  return [JavaNioCharsetCoderResult getUNDERFLOW];
}

- (JavaNioCharBuffer *)decodeWithJavaNioByteBuffer:(JavaNioByteBuffer *)inArg {
  NSString *s = [self decodeImplWithJavaNioByteBuffer:inArg];
  return [JavaNioCharBuffer wrapWithJavaLangCharSequence:s];
}

+ (IOSObjectArray *)__exceptions_decodeWithJavaNioByteBuffer_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaNioCharsetCharacterCodingException getClass] } count:1 type:[IOSClass getClass]];
}

- (NSString *)decodeImplWithJavaNioByteBuffer:(JavaNioByteBuffer *)inArg {
  JavaNioCharsetCharset *cs = [self charset];
  if (!([cs isKindOfClass:[JavaNioCharsetIOSCharset class]])) {
    @throw [[[JavaNioCharsetUnsupportedCharsetException alloc] initWithNSString:[((JavaNioCharsetCharset *) nil_chk(cs)) name]] autorelease];
  }
  IOSByteArray *bytes;
  int i;
  if (inBuffer_ != nil) {
    i = (int) [inBuffer_ count];
    bytes = [IOSByteArray arrayWithLength:i + [((JavaNioByteBuffer *) nil_chk(inArg)) remaining]];
    [JavaLangSystem arraycopyWithId:inBuffer_ withInt:0 withId:bytes withInt:0 withInt:(int) [inBuffer_ count]];
    JavaNioCharsetIOSCharsetDecoder_set_inBuffer_(self, nil);
  }
  else {
    i = 0;
    bytes = [IOSByteArray arrayWithLength:[((JavaNioByteBuffer *) nil_chk(inArg)) remaining]];
  }
  [((JavaNioByteBuffer *) nil_chk(inArg)) getWithByteArray:bytes withInt:i withInt:(int) [((IOSByteArray *) nil_chk(bytes)) count] - i];
  NSString *s = [JavaNioCharsetIOSCharsetDecoder decodeWithByteArray:bytes withLong:[((JavaNioCharsetIOSCharset *) nil_chk(cs)) nsEncoding]];
  if ([((NSString *) nil_chk(s)) isEmpty]) {
    JavaNioCharsetIOSCharsetDecoder_set_inBuffer_(self, bytes);
  }
  else {
    JavaNioCharsetIOSCharsetDecoder_set_inBuffer_(self, nil);
  }
  return s;
}

+ (NSString *)decodeWithByteArray:(IOSByteArray *)inArg
                         withLong:(long long int)encoding {
  return AUTORELEASE([[NSString alloc] initWithBytes:[inArg byteRefAtIndex:0]
  length:[inArg count]
  encoding:(NSStringEncoding) encoding]);
}

- (int)available {
  return charBuffer_ != nil ? ((int) [charBuffer_ count] - outIndex_) : 0;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaNioCharsetIOSCharsetDecoder_set_charBuffer_(self, nil);
  JavaNioCharsetIOSCharsetDecoder_set_inBuffer_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaNioCharsetIOSCharsetDecoder *)other {
  [super copyAllFieldsTo:other];
  JavaNioCharsetIOSCharsetDecoder_set_charBuffer_(other, charBuffer_);
  JavaNioCharsetIOSCharsetDecoder_set_inBuffer_(other, inBuffer_);
  other->outIndex_ = outIndex_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:inBuffer_ name:@"inBuffer"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:charBuffer_ name:@"charBuffer"]];
  return result;
}

@end
