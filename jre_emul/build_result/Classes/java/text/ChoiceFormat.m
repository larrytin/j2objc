//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/text/ChoiceFormat.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "IOSDoubleArray.h"
#include "IOSObjectArray.h"
#include "java/lang/Character.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/text/ChoiceFormat.h"
#include "java/text/FieldPosition.h"
#include "java/text/Format.h"
#include "java/text/NumberFormat.h"
#include "java/text/ParsePosition.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "java/util/Locale.h"
#include "libcore/util/EmptyArray.h"

@implementation JavaTextChoiceFormat

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithDoubleArray:(IOSDoubleArray *)limits
        withNSStringArray:(IOSObjectArray *)formats {
  if (self = [super init]) {
    [self setChoicesWithDoubleArray:limits withNSStringArray:formats];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)template_ {
  if (self = [super init]) {
    [self applyPatternWithNSString:template_];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)applyPatternWithNSString:(NSString *)template_ {
  IOSDoubleArray *limits = [IOSDoubleArray arrayWithLength:5];
  id<JavaUtilList> formats = [[[JavaUtilArrayList alloc] init] autorelease];
  int length = [((NSString *) nil_chk(template_)) length], limitCount = 0, index = 0;
  JavaLangStringBuffer *buffer = [[[JavaLangStringBuffer alloc] init] autorelease];
  JavaTextNumberFormat *format = [JavaTextNumberFormat getInstanceWithJavaUtilLocale:[JavaUtilLocale US]];
  JavaTextParsePosition *position = [[[JavaTextParsePosition alloc] initWithInt:0] autorelease];
  while (YES) {
    index = [self skipWhitespaceWithNSString:template_ withInt:index];
    if (index >= length) {
      if (limitCount == (int) [limits count]) {
        JavaTextChoiceFormat_set_choiceLimits_(self, limits);
      }
      else {
        JavaTextChoiceFormat_set_choiceLimits_(self, [IOSDoubleArray arrayWithLength:limitCount]);
        [JavaLangSystem arraycopyWithId:limits withInt:0 withId:choiceLimits_ withInt:0 withInt:limitCount];
      }
      JavaTextChoiceFormat_set_choiceFormats_(self, [IOSObjectArray arrayWithLength:[formats size] type:[IOSClass classWithClass:[NSString class]]]);
      for (int i = 0; i < [formats size]; i++) {
        IOSObjectArray_Set(choiceFormats_, i, [formats getWithInt:i]);
      }
      return;
    }
    [position setIndexWithInt:index];
    NSNumber *value = [((JavaTextNumberFormat *) nil_chk(format)) parseWithNSString:template_ withJavaTextParsePosition:position];
    index = [self skipWhitespaceWithNSString:template_ withInt:[position getIndex]];
    if ([position getErrorIndex] != -1 || index >= length) {
      JavaTextChoiceFormat_set_choiceLimits_(self, [LibcoreUtilEmptyArray DOUBLE]);
      JavaTextChoiceFormat_set_choiceFormats_(self, [LibcoreUtilEmptyArray STRING]);
      return;
    }
    unichar ch = [template_ charAtWithInt:index++];
    if (limitCount == (int) [limits count]) {
      IOSDoubleArray *newLimits = [IOSDoubleArray arrayWithLength:limitCount * 2];
      [JavaLangSystem arraycopyWithId:limits withInt:0 withId:newLimits withInt:0 withInt:limitCount];
      limits = newLimits;
    }
    double next;
    switch (ch) {
      case '#':
      case 0x2264:
      next = [((NSNumber *) nil_chk(value)) doubleValue];
      break;
      case '<':
      next = [JavaTextChoiceFormat nextDoubleWithDouble:[((NSNumber *) nil_chk(value)) doubleValue]];
      break;
      default:
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Bad character '%C' in template: %@", ch, template_]] autorelease];
    }
    if (limitCount > 0 && next <= IOSDoubleArray_Get(limits, limitCount - 1)) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Bad template: %@", template_]] autorelease];
    }
    [buffer setLengthWithInt:0];
    [position setIndexWithInt:index];
    [JavaTextFormat upToWithNSString:template_ withJavaTextParsePosition:position withJavaLangStringBuffer:buffer withChar:'|'];
    index = [position getIndex];
    (*IOSDoubleArray_GetRef(limits, limitCount++)) = next;
    [formats addWithId:[buffer description]];
  }
}

- (id)clone {
  JavaTextChoiceFormat *clone = (JavaTextChoiceFormat *) check_class_cast([super clone], [JavaTextChoiceFormat class]);
  JavaTextChoiceFormat_set_choiceLimits_(nil_chk(clone), [((IOSDoubleArray *) nil_chk(choiceLimits_)) clone]);
  JavaTextChoiceFormat_set_choiceFormats_(clone, [((IOSObjectArray *) nil_chk(choiceFormats_)) clone]);
  return clone;
}

- (BOOL)isEqual:(id)object {
  if (self == object) {
    return YES;
  }
  if (!([object isKindOfClass:[JavaTextChoiceFormat class]])) {
    return NO;
  }
  JavaTextChoiceFormat *choice = (JavaTextChoiceFormat *) check_class_cast(object, [JavaTextChoiceFormat class]);
  return [JavaUtilArrays equalsWithDoubleArray:choiceLimits_ withDoubleArray:((JavaTextChoiceFormat *) nil_chk(choice))->choiceLimits_] && [JavaUtilArrays equalsWithNSObjectArray:choiceFormats_ withNSObjectArray:choice->choiceFormats_];
}

- (JavaLangStringBuffer *)formatWithDouble:(double)value
                  withJavaLangStringBuffer:(JavaLangStringBuffer *)buffer
                 withJavaTextFieldPosition:(JavaTextFieldPosition *)field {
  for (int i = (int) [((IOSDoubleArray *) nil_chk(choiceLimits_)) count] - 1; i >= 0; i--) {
    if (IOSDoubleArray_Get(choiceLimits_, i) <= value) {
      return [((JavaLangStringBuffer *) nil_chk(buffer)) appendWithNSString:IOSObjectArray_Get(nil_chk(choiceFormats_), i)];
    }
  }
  return (int) [((IOSObjectArray *) nil_chk(choiceFormats_)) count] == 0 ? buffer : [((JavaLangStringBuffer *) nil_chk(buffer)) appendWithNSString:IOSObjectArray_Get(choiceFormats_, 0)];
}

- (JavaLangStringBuffer *)formatWithLong:(long long int)value
                withJavaLangStringBuffer:(JavaLangStringBuffer *)buffer
               withJavaTextFieldPosition:(JavaTextFieldPosition *)field {
  return [self formatWithDouble:(double) value withJavaLangStringBuffer:buffer withJavaTextFieldPosition:field];
}

- (IOSObjectArray *)getFormats {
  return choiceFormats_;
}

- (IOSDoubleArray *)getLimits {
  return choiceLimits_;
}

- (NSUInteger)hash {
  int hashCode = 0;
  for (int i = 0; i < (int) [((IOSDoubleArray *) nil_chk(choiceLimits_)) count]; i++) {
    long long int v = [JavaLangDouble doubleToLongBitsWithDouble:IOSDoubleArray_Get(choiceLimits_, i)];
    hashCode += (int) (v ^ ((long long) (((unsigned long long) v) >> 32))) + [((NSString *) nil_chk(IOSObjectArray_Get(nil_chk(choiceFormats_), i))) hash];
  }
  return hashCode;
}

+ (double)nextDoubleWithDouble:(double)value {
  if (value == JavaLangDouble_POSITIVE_INFINITY) {
    return value;
  }
  long long int bits;
  if (value == 0) {
    bits = 0;
  }
  else {
    bits = [JavaLangDouble doubleToLongBitsWithDouble:value];
  }
  return [JavaLangDouble longBitsToDoubleWithLong:value < 0 ? bits - 1 : bits + 1];
}

+ (double)nextDoubleWithDouble:(double)value
                   withBoolean:(BOOL)increment {
  return increment ? [JavaTextChoiceFormat nextDoubleWithDouble:value] : [JavaTextChoiceFormat previousDoubleWithDouble:value];
}

- (NSNumber *)parseWithNSString:(NSString *)string
      withJavaTextParsePosition:(JavaTextParsePosition *)position {
  int offset = [((JavaTextParsePosition *) nil_chk(position)) getIndex];
  for (int i = 0; i < (int) [((IOSObjectArray *) nil_chk(choiceFormats_)) count]; i++) {
    if ([((NSString *) nil_chk(string)) hasPrefix:IOSObjectArray_Get(choiceFormats_, i) offset:offset]) {
      [position setIndexWithInt:offset + [((NSString *) nil_chk(IOSObjectArray_Get(choiceFormats_, i))) length]];
      return [[[JavaLangDouble alloc] initWithDouble:IOSDoubleArray_Get(nil_chk(choiceLimits_), i)] autorelease];
    }
  }
  [position setErrorIndexWithInt:offset];
  return [[[JavaLangDouble alloc] initWithDouble:JavaLangDouble_NaN] autorelease];
}

+ (double)previousDoubleWithDouble:(double)value {
  if (value == JavaLangDouble_NEGATIVE_INFINITY) {
    return value;
  }
  long long int bits;
  if (value == 0) {
    bits = -0x7fffffffffffffffLL - 1;
  }
  else {
    bits = [JavaLangDouble doubleToLongBitsWithDouble:value];
  }
  return [JavaLangDouble longBitsToDoubleWithLong:value <= 0 ? bits + 1 : bits - 1];
}

- (void)setChoicesWithDoubleArray:(IOSDoubleArray *)limits
                withNSStringArray:(IOSObjectArray *)formats {
  if ((int) [((IOSDoubleArray *) nil_chk(limits)) count] != (int) [((IOSObjectArray *) nil_chk(formats)) count]) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"limits.length != formats.length: %d != %d", (int) [limits count], (int) [formats count]]] autorelease];
  }
  JavaTextChoiceFormat_set_choiceLimits_(self, limits);
  JavaTextChoiceFormat_set_choiceFormats_(self, formats);
}

- (int)skipWhitespaceWithNSString:(NSString *)string
                          withInt:(int)index {
  int length = [((NSString *) nil_chk(string)) length];
  while (index < length && [JavaLangCharacter isWhitespaceWithChar:[string charAtWithInt:index]]) {
    index++;
  }
  return index;
}

- (NSString *)toPattern {
  JavaLangStringBuilder *buffer = [[[JavaLangStringBuilder alloc] init] autorelease];
  for (int i = 0; i < (int) [((IOSDoubleArray *) nil_chk(choiceLimits_)) count]; i++) {
    if (i != 0) {
      [buffer appendWithChar:'|'];
    }
    NSString *previous = [NSString valueOfDouble:[JavaTextChoiceFormat previousDoubleWithDouble:IOSDoubleArray_Get(choiceLimits_, i)]];
    NSString *limit = [NSString valueOfDouble:IOSDoubleArray_Get(choiceLimits_, i)];
    if ([((NSString *) nil_chk(previous)) length] < [((NSString *) nil_chk(limit)) length]) {
      [buffer appendWithNSString:previous];
      [buffer appendWithChar:'<'];
    }
    else {
      [buffer appendWithNSString:limit];
      [buffer appendWithChar:'#'];
    }
    BOOL quote = ([((NSString *) nil_chk(IOSObjectArray_Get(nil_chk(choiceFormats_), i))) indexOf:'|'] != -1);
    if (quote) {
      [buffer appendWithChar:'\''];
    }
    [buffer appendWithNSString:IOSObjectArray_Get(choiceFormats_, i)];
    if (quote) {
      [buffer appendWithChar:'\''];
    }
  }
  return [buffer description];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaTextChoiceFormat_set_choiceFormats_(self, nil);
  JavaTextChoiceFormat_set_choiceLimits_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaTextChoiceFormat *)other {
  [super copyAllFieldsTo:other];
  JavaTextChoiceFormat_set_choiceFormats_(other, choiceFormats_);
  JavaTextChoiceFormat_set_choiceLimits_(other, choiceLimits_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:choiceLimits_ name:@"choiceLimits"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:choiceFormats_ name:@"choiceFormats"]];
  return result;
}

@end
