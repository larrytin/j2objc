//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/nio/BufferOverflowException.h"
#include "java/nio/BufferUnderflowException.h"
#include "java/nio/charset/CharacterCodingException.h"
#include "java/nio/charset/CoderResult.h"
#include "java/nio/charset/MalformedInputException.h"
#include "java/nio/charset/UnmappableCharacterException.h"
#include "java/util/WeakHashMap.h"

@implementation JavaNioCharsetCoderResult

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaNioCharsetCoderResult_UNDERFLOW__ name:@"JavaNioCharsetCoderResult_UNDERFLOW__"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaNioCharsetCoderResult_OVERFLOW__ name:@"JavaNioCharsetCoderResult_OVERFLOW__"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaNioCharsetCoderResult__malformedErrors_ name:@"JavaNioCharsetCoderResult__malformedErrors_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaNioCharsetCoderResult__unmappableErrors_ name:@"JavaNioCharsetCoderResult__unmappableErrors_"]];
  return result;
}

static JavaNioCharsetCoderResult * JavaNioCharsetCoderResult_UNDERFLOW__;
static JavaNioCharsetCoderResult * JavaNioCharsetCoderResult_OVERFLOW__;
static JavaUtilWeakHashMap * JavaNioCharsetCoderResult__malformedErrors_;
static JavaUtilWeakHashMap * JavaNioCharsetCoderResult__unmappableErrors_;

+ (JavaNioCharsetCoderResult *)getUNDERFLOW {
  return JavaNioCharsetCoderResult_UNDERFLOW__;
}

+ (JavaNioCharsetCoderResult *)getOVERFLOW {
  return JavaNioCharsetCoderResult_OVERFLOW__;
}

+ (JavaUtilWeakHashMap *)_malformedErrors {
  return JavaNioCharsetCoderResult__malformedErrors_;
}

+ (void)set_malformedErrors:(JavaUtilWeakHashMap *)_malformedErrors {
  JreOperatorRetainedAssign(&JavaNioCharsetCoderResult__malformedErrors_, nil, _malformedErrors);
}

+ (JavaUtilWeakHashMap *)_unmappableErrors {
  return JavaNioCharsetCoderResult__unmappableErrors_;
}

+ (void)set_unmappableErrors:(JavaUtilWeakHashMap *)_unmappableErrors {
  JreOperatorRetainedAssign(&JavaNioCharsetCoderResult__unmappableErrors_, nil, _unmappableErrors);
}

- (id)initWithInt:(int)type
          withInt:(int)length {
  if (self = [super init]) {
    self->type_ = type;
    self->length__ = length;
    JreMemDebugAdd(self);
  }
  return self;
}

+ (JavaNioCharsetCoderResult *)malformedForLengthWithInt:(int)length {
  @synchronized([self class]) {
    {
      if (length > 0) {
        JavaLangInteger *key = [JavaLangInteger valueOfWithInt:length];
        @synchronized (JavaNioCharsetCoderResult__malformedErrors_) {
          JavaNioCharsetCoderResult *r = [((JavaUtilWeakHashMap *) nil_chk(JavaNioCharsetCoderResult__malformedErrors_)) getWithId:key];
          if (r == nil) {
            r = [[[JavaNioCharsetCoderResult alloc] initWithInt:JavaNioCharsetCoderResult_TYPE_MALFORMED_INPUT withInt:length] autorelease];
            [JavaNioCharsetCoderResult__malformedErrors_ putWithId:key withId:r];
          }
          return r;
        }
      }
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"length <= 0: %d", length]] autorelease];
    }
  }
}

+ (IOSObjectArray *)__exceptions_malformedForLengthWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass] } count:1 type:[IOSClass getClass]];
}

+ (JavaNioCharsetCoderResult *)unmappableForLengthWithInt:(int)length {
  @synchronized([self class]) {
    {
      if (length > 0) {
        JavaLangInteger *key = [JavaLangInteger valueOfWithInt:length];
        @synchronized (JavaNioCharsetCoderResult__unmappableErrors_) {
          JavaNioCharsetCoderResult *r = [((JavaUtilWeakHashMap *) nil_chk(JavaNioCharsetCoderResult__unmappableErrors_)) getWithId:key];
          if (r == nil) {
            r = [[[JavaNioCharsetCoderResult alloc] initWithInt:JavaNioCharsetCoderResult_TYPE_UNMAPPABLE_CHAR withInt:length] autorelease];
            [JavaNioCharsetCoderResult__unmappableErrors_ putWithId:key withId:r];
          }
          return r;
        }
      }
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"length <= 0: %d", length]] autorelease];
    }
  }
}

+ (IOSObjectArray *)__exceptions_unmappableForLengthWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass] } count:1 type:[IOSClass getClass]];
}

- (BOOL)isUnderflow {
  return self->type_ == JavaNioCharsetCoderResult_TYPE_UNDERFLOW;
}

- (BOOL)isError {
  return self->type_ == JavaNioCharsetCoderResult_TYPE_MALFORMED_INPUT || self->type_ == JavaNioCharsetCoderResult_TYPE_UNMAPPABLE_CHAR;
}

- (BOOL)isMalformed {
  return self->type_ == JavaNioCharsetCoderResult_TYPE_MALFORMED_INPUT;
}

- (BOOL)isOverflow {
  return self->type_ == JavaNioCharsetCoderResult_TYPE_OVERFLOW;
}

- (BOOL)isUnmappable {
  return self->type_ == JavaNioCharsetCoderResult_TYPE_UNMAPPABLE_CHAR;
}

- (int)length {
  if (self->type_ == JavaNioCharsetCoderResult_TYPE_MALFORMED_INPUT || self->type_ == JavaNioCharsetCoderResult_TYPE_UNMAPPABLE_CHAR) {
    return self->length__;
  }
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:[NSString stringWithFormat:@"length meaningless for %@", [self description]]] autorelease];
}

+ (IOSObjectArray *)__exceptions_length {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangUnsupportedOperationException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)throwException {
  switch (self->type_) {
    case JavaNioCharsetCoderResult_TYPE_UNDERFLOW:
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
    case JavaNioCharsetCoderResult_TYPE_OVERFLOW:
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
    case JavaNioCharsetCoderResult_TYPE_UNMAPPABLE_CHAR:
    @throw [[[JavaNioCharsetUnmappableCharacterException alloc] initWithInt:self->length__] autorelease];
    case JavaNioCharsetCoderResult_TYPE_MALFORMED_INPUT:
    @throw [[[JavaNioCharsetMalformedInputException alloc] initWithInt:self->length__] autorelease];
    default:
    @throw [[[JavaNioCharsetCharacterCodingException alloc] init] autorelease];
  }
}

+ (IOSObjectArray *)__exceptions_throwException {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaNioBufferUnderflowException getClass], [JavaNioBufferOverflowException getClass], [JavaNioCharsetUnmappableCharacterException getClass], [JavaNioCharsetMalformedInputException getClass], [JavaNioCharsetCharacterCodingException getClass] } count:5 type:[IOSClass getClass]];
}

- (NSString *)description {
  NSString *dsc = nil;
  switch (self->type_) {
    case JavaNioCharsetCoderResult_TYPE_UNDERFLOW:
    dsc = @"UNDERFLOW error";
    break;
    case JavaNioCharsetCoderResult_TYPE_OVERFLOW:
    dsc = @"OVERFLOW error";
    break;
    case JavaNioCharsetCoderResult_TYPE_UNMAPPABLE_CHAR:
    dsc = [NSString stringWithFormat:@"Unmappable-character error with erroneous input length %d", self->length__];
    break;
    case JavaNioCharsetCoderResult_TYPE_MALFORMED_INPUT:
    dsc = [NSString stringWithFormat:@"Malformed-input error with erroneous input length %d", self->length__];
    break;
    default:
    dsc = @"";
    break;
  }
  return [NSString stringWithFormat:@"%@[%@]", [[self getClass] getName], dsc];
}

+ (void)initialize {
  if (self == [JavaNioCharsetCoderResult class]) {
    JreOperatorRetainedAssign(&JavaNioCharsetCoderResult_UNDERFLOW__, nil, [[[JavaNioCharsetCoderResult alloc] initWithInt:JavaNioCharsetCoderResult_TYPE_UNDERFLOW withInt:0] autorelease]);
    JreOperatorRetainedAssign(&JavaNioCharsetCoderResult_OVERFLOW__, nil, [[[JavaNioCharsetCoderResult alloc] initWithInt:JavaNioCharsetCoderResult_TYPE_OVERFLOW withInt:0] autorelease]);
    JreOperatorRetainedAssign(&JavaNioCharsetCoderResult__malformedErrors_, nil, [[[JavaUtilWeakHashMap alloc] init] autorelease]);
    JreOperatorRetainedAssign(&JavaNioCharsetCoderResult__unmappableErrors_, nil, [[[JavaUtilWeakHashMap alloc] init] autorelease]);
  }
}

- (void)copyAllFieldsTo:(JavaNioCharsetCoderResult *)other {
  [super copyAllFieldsTo:other];
  other->length__ = length__;
  other->type_ = type_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
