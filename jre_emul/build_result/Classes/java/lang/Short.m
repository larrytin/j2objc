//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSShortArray.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/Integer.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/Short.h"

@implementation JavaLangShort

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangShort_TYPE_ name:@"JavaLangShort_TYPE_"]];
  return result;
}

static IOSClass * JavaLangShort_TYPE_;

+ (short int)MAX_VALUE {
  return JavaLangShort_MAX_VALUE;
}

+ (short int)MIN_VALUE {
  return JavaLangShort_MIN_VALUE;
}

+ (int)SIZE {
  return JavaLangShort_SIZE;
}

+ (IOSClass *)TYPE {
  return JavaLangShort_TYPE_;
}

- (id)initWithNSString:(NSString *)string {
  return JreMemDebugAdd([self initJavaLangShortWithShort:[JavaLangShort parseShortWithNSString:string]]);
}

+ (IOSObjectArray *)__exceptions_JavaLangShortWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangNumberFormatException getClass] } count:1 type:[IOSClass getClass]];
}

- (id)initJavaLangShortWithShort:(short int)value {
  if (self = [super init]) {
    self->value_ = value;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithShort:(short int)value {
  return [self initJavaLangShortWithShort:value];
}

- (char)byteValue {
  return (char) value_;
}

- (int)compareToWithId:(JavaLangShort *)object {
  if (object != nil && ![object isKindOfClass:[JavaLangShort class]]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  if (object == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  return value_ > ((JavaLangShort *) nil_chk(object))->value_ ? 1 : (value_ < object->value_ ? -1 : 0);
}

+ (JavaLangShort *)decodeWithNSString:(NSString *)string {
  int intValue = [((JavaLangInteger *) nil_chk([JavaLangInteger decodeWithNSString:string])) intValue];
  short int result = (short int) intValue;
  if (result == intValue) {
    return [JavaLangShort valueOfWithShort:result];
  }
  @throw [[[JavaLangNumberFormatException alloc] init] autorelease];
}

+ (IOSObjectArray *)__exceptions_decodeWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangNumberFormatException getClass] } count:1 type:[IOSClass getClass]];
}

- (double)doubleValue {
  return value_;
}

- (BOOL)isEqual:(id)object {
  return ([object isKindOfClass:[JavaLangShort class]]) && (value_ == ((JavaLangShort *) nil_chk(object))->value_);
}

- (float)floatValue {
  return value_;
}

- (NSUInteger)hash {
  return value_;
}

- (int)intValue {
  return value_;
}

- (long long int)longLongValue {
  return value_;
}

+ (short int)parseShortWithNSString:(NSString *)string {
  return [JavaLangShort parseShortWithNSString:string withInt:10];
}

+ (IOSObjectArray *)__exceptions_parseShortWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangNumberFormatException getClass] } count:1 type:[IOSClass getClass]];
}

+ (short int)parseShortWithNSString:(NSString *)string
                            withInt:(int)radix {
  int intValue = [JavaLangInteger parseIntWithNSString:string withInt:radix];
  short int result = (short int) intValue;
  if (result == intValue) {
    return result;
  }
  @throw [[[JavaLangNumberFormatException alloc] init] autorelease];
}

+ (IOSObjectArray *)__exceptions_parseShortWithNSString_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangNumberFormatException getClass] } count:1 type:[IOSClass getClass]];
}

- (short int)shortValue {
  return value_;
}

- (NSString *)description {
  return [JavaLangInteger toStringWithInt:value_];
}

+ (NSString *)toStringWithShort:(short int)value {
  return [JavaLangInteger toStringWithInt:value];
}

+ (JavaLangShort *)valueOfWithNSString:(NSString *)string {
  return [JavaLangShort valueOfWithShort:[JavaLangShort parseShortWithNSString:string]];
}

+ (IOSObjectArray *)__exceptions_valueOfWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangNumberFormatException getClass] } count:1 type:[IOSClass getClass]];
}

+ (JavaLangShort *)valueOfWithNSString:(NSString *)string
                               withInt:(int)radix {
  return [JavaLangShort valueOfWithShort:[JavaLangShort parseShortWithNSString:string withInt:radix]];
}

+ (IOSObjectArray *)__exceptions_valueOfWithNSString_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangNumberFormatException getClass] } count:1 type:[IOSClass getClass]];
}

+ (short int)reverseBytesWithShort:(short int)s {
  int high = (s >> 8) & (int) 0xFF;
  int low = (s & (int) 0xFF) << 8;
  return (short int) (low | high);
}

+ (JavaLangShort *)valueOfWithShort:(short int)s {
  if (s < -128 || s > 127) {
    return [[[JavaLangShort alloc] initWithShort:s] autorelease];
  }
  return IOSObjectArray_Get(nil_chk([JavaLangShort_valueOfCache CACHE]), s + 128);
}

+ (void)initialize {
  if (self == [JavaLangShort class]) {
    JreOperatorRetainedAssign(&JavaLangShort_TYPE_, nil, (IOSClass *) check_class_cast([[[IOSShortArray arrayWithLength:0] getClass] getComponentType], [IOSClass class]));
  }
}

- (void)copyAllFieldsTo:(JavaLangShort *)other {
  [super copyAllFieldsTo:other];
  other->value_ = value_;
}

- (const char *)objCType {
  return "s";
}

- (void)getValue:(void *)buffer {
  *((short int *) buffer) = value_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
@implementation JavaLangShort_valueOfCache

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangShort_valueOfCache_CACHE_ name:@"JavaLangShort_valueOfCache_CACHE_"]];
  return result;
}

static IOSObjectArray * JavaLangShort_valueOfCache_CACHE_;

+ (IOSObjectArray *)CACHE {
  return JavaLangShort_valueOfCache_CACHE_;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (void)initialize {
  if (self == [JavaLangShort_valueOfCache class]) {
    JreOperatorRetainedAssign(&JavaLangShort_valueOfCache_CACHE_, nil, [IOSObjectArray arrayWithLength:256 type:[IOSClass classWithClass:[JavaLangShort class]]]);
    {
      for (int i = -128; i <= 127; i++) {
        IOSObjectArray_Set(JavaLangShort_valueOfCache_CACHE_, i + 128, [[[JavaLangShort alloc] initWithShort:(short int) i] autorelease]);
      }
    }
  }
}

@end
