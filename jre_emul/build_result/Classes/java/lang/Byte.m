//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/Byte.java
//
//  Created by retechretech on 13-4-19.
//

#import "IOSByteArray.h"
#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "java/lang/Byte.h"
#import "java/lang/ClassCastException.h"
#import "java/lang/Integer.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/NumberFormatException.h"

@implementation JavaLangByte

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangByte_CACHE_ name:@"JavaLangByte_CACHE_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangByte_TYPE_ name:@"JavaLangByte_TYPE_"]];
  return result;
}

static IOSObjectArray * JavaLangByte_CACHE_;
static IOSClass * JavaLangByte_TYPE_;

@synthesize value = value_;

+ (char)MAX_VALUE {
  return JavaLangByte_MAX_VALUE;
}

+ (char)MIN_VALUE {
  return JavaLangByte_MIN_VALUE;
}

+ (int)SIZE {
  return JavaLangByte_SIZE;
}

+ (IOSObjectArray *)CACHE {
  return JavaLangByte_CACHE_;
}

+ (IOSClass *)TYPE {
  return JavaLangByte_TYPE_;
}

- (id)initJavaLangByteWithChar:(char)value {
  if ((self = [super init])) {
    self.value = value;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithChar:(char)value {
  return [self initJavaLangByteWithChar:value];
}

- (id)initWithNSString:(NSString *)string {
  return JreMemDebugAdd([self initJavaLangByteWithChar:[JavaLangByte parseByteWithNSString:string]]);
}

- (char)byteValue {
  return value_;
}

- (int)compareToWithId:(JavaLangByte *)object {
  if (object != nil && ![object isKindOfClass:[JavaLangByte class]]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  if (object == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  return value_ > ((JavaLangByte *) NIL_CHK(object)).value ? 1 : (value_ < ((JavaLangByte *) NIL_CHK(object)).value ? -1 : 0);
}

+ (JavaLangByte *)decodeWithNSString:(NSString *)string {
  if (string == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  int intValue = [[JavaLangInteger decodeWithNSString:string] intValue];
  char result = (char) intValue;
  if (result == intValue) {
    return [JavaLangByte valueOfWithChar:result];
  }
  @throw [[[JavaLangNumberFormatException alloc] init] autorelease];
}

- (double)doubleValue {
  return value_;
}

- (BOOL)isEqual:(id)object {
  return (object == self) || ([object isKindOfClass:[JavaLangByte class]]) && (value_ == ((JavaLangByte *) object).value);
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

+ (char)parseByteWithNSString:(NSString *)string {
  int intValue = [JavaLangInteger parseIntWithNSString:string];
  char result = (char) intValue;
  if (result == intValue) {
    return result;
  }
  @throw [[[JavaLangNumberFormatException alloc] init] autorelease];
}

+ (char)parseByteWithNSString:(NSString *)string
                      withInt:(int)radix {
  int intValue = [JavaLangInteger parseIntWithNSString:string withInt:radix];
  char result = (char) intValue;
  if (result == intValue) {
    return result;
  }
  @throw [[[JavaLangNumberFormatException alloc] init] autorelease];
}

- (short int)shortValue {
  return value_;
}

- (NSString *)description {
  return [JavaLangInteger toStringWithInt:value_];
}

+ (NSString *)toStringWithChar:(char)value {
  return [JavaLangInteger toStringWithInt:value];
}

+ (JavaLangByte *)valueOfWithNSString:(NSString *)string {
  return [JavaLangByte valueOfWithChar:[JavaLangByte parseByteWithNSString:string]];
}

+ (JavaLangByte *)valueOfWithNSString:(NSString *)string
                              withInt:(int)radix {
  return [JavaLangByte valueOfWithChar:[JavaLangByte parseByteWithNSString:string withInt:radix]];
}

+ (JavaLangByte *)valueOfWithChar:(char)b {
  @synchronized (JavaLangByte_CACHE_) {
    int idx = b - JavaLangByte_MIN_VALUE;
    JavaLangByte *result = ((JavaLangByte *) [((IOSObjectArray *) NIL_CHK(JavaLangByte_CACHE_)) objectAtIndex:idx]);
    return (result == nil ? [((IOSObjectArray *) NIL_CHK(JavaLangByte_CACHE_)) replaceObjectAtIndex:idx withObject:[[[JavaLangByte alloc] initWithChar:b] autorelease]] : result);
  }
}

+ (void)initialize {
  if (self == [JavaLangByte class]) {
    JreOperatorRetainedAssign(&JavaLangByte_CACHE_, [[[IOSObjectArray alloc] initWithLength:256 type:[IOSClass classWithClass:[JavaLangByte class]]] autorelease]);
    JreOperatorRetainedAssign(&JavaLangByte_TYPE_, (IOSClass *) [[[[[IOSByteArray alloc] initWithLength:0] autorelease] getClass] getComponentType]);
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)getValue:(void *)buffer {
  *((char *) buffer) = value_;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaLangByte *typedCopy = (JavaLangByte *) copy;
  typedCopy.value = value_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

- (const char *)objCType {
  return "c";
}

@end
