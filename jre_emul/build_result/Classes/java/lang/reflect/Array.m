//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/lang/reflect/Array.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSBooleanArray.h"
#include "IOSByteArray.h"
#include "IOSCharArray.h"
#include "IOSClass.h"
#include "IOSDoubleArray.h"
#include "IOSFloatArray.h"
#include "IOSIntArray.h"
#include "IOSLongArray.h"
#include "IOSObjectArray.h"
#include "IOSShortArray.h"
#include "java/lang/ArrayIndexOutOfBoundsException.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Boolean.h"
#include "java/lang/Byte.h"
#include "java/lang/Character.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NegativeArraySizeException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Short.h"
#include "java/lang/Void.h"
#include "java/lang/reflect/Array.h"

@implementation JavaLangReflectArray

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (JavaLangIllegalArgumentException *)notAnArrayWithId:(id)o {
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Not an array: %@", [nil_chk(o) getClass]]] autorelease];
}

+ (JavaLangIllegalArgumentException *)incompatibleTypeWithId:(id)o {
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Array has incompatible type: %@", [nil_chk(o) getClass]]] autorelease];
}

+ (JavaLangRuntimeException *)badArrayWithId:(id)array {
  if (array == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"array == null"] autorelease];
  }
  else if (![[array getClass] isArray]) {
    @throw [JavaLangReflectArray notAnArrayWithId:array];
  }
  else {
    @throw [JavaLangReflectArray incompatibleTypeWithId:array];
  }
}

+ (id)getWithId:(id)array
        withInt:(int)index {
  if ([[IOSObjectArray iosClassWithType:[IOSClass classWithClass:[NSObject class]]] isInstance:array]) {
    return IOSObjectArray_Get(nil_chk(array), index);
  }
  if ([array isKindOfClass:[IOSBooleanArray class]]) {
    return IOSBooleanArray_Get(nil_chk(array), index) ? [JavaLangBoolean getTRUE] : [JavaLangBoolean getFALSE];
  }
  if ([array isKindOfClass:[IOSByteArray class]]) {
    return [JavaLangByte valueOfWithByte:IOSByteArray_Get(nil_chk(array), index)];
  }
  if ([array isKindOfClass:[IOSCharArray class]]) {
    return [JavaLangCharacter valueOfWithChar:IOSCharArray_Get(nil_chk(array), index)];
  }
  if ([array isKindOfClass:[IOSShortArray class]]) {
    return [JavaLangShort valueOfWithShort:IOSShortArray_Get(nil_chk(array), index)];
  }
  if ([array isKindOfClass:[IOSIntArray class]]) {
    return [JavaLangInteger valueOfWithInt:IOSIntArray_Get(nil_chk(array), index)];
  }
  if ([array isKindOfClass:[IOSLongArray class]]) {
    return [JavaLangLong valueOfWithLong:IOSLongArray_Get(nil_chk(array), index)];
  }
  if ([array isKindOfClass:[IOSFloatArray class]]) {
    return [[[JavaLangFloat alloc] initWithFloat:IOSFloatArray_Get(nil_chk(array), index)] autorelease];
  }
  if ([array isKindOfClass:[IOSDoubleArray class]]) {
    return [[[JavaLangDouble alloc] initWithDouble:IOSDoubleArray_Get(nil_chk(array), index)] autorelease];
  }
  if (array == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"array == null"] autorelease];
  }
  @throw [JavaLangReflectArray notAnArrayWithId:array];
}

+ (IOSObjectArray *)__exceptions_getWithId_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (BOOL)getBooleanWithId:(id)array
                 withInt:(int)index {
  if ([array isKindOfClass:[IOSBooleanArray class]]) {
    return IOSBooleanArray_Get(nil_chk(array), index);
  }
  @throw [JavaLangReflectArray badArrayWithId:array];
}

+ (IOSObjectArray *)__exceptions_getBooleanWithId_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (char)getByteWithId:(id)array
              withInt:(int)index {
  if ([array isKindOfClass:[IOSByteArray class]]) {
    return IOSByteArray_Get(nil_chk(array), index);
  }
  @throw [JavaLangReflectArray badArrayWithId:array];
}

+ (IOSObjectArray *)__exceptions_getByteWithId_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (unichar)getCharWithId:(id)array
                 withInt:(int)index {
  if ([array isKindOfClass:[IOSCharArray class]]) {
    return IOSCharArray_Get(nil_chk(array), index);
  }
  @throw [JavaLangReflectArray badArrayWithId:array];
}

+ (IOSObjectArray *)__exceptions_getCharWithId_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (double)getDoubleWithId:(id)array
                  withInt:(int)index {
  if ([array isKindOfClass:[IOSDoubleArray class]]) {
    return IOSDoubleArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSByteArray class]]) {
    return IOSByteArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSCharArray class]]) {
    return IOSCharArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSFloatArray class]]) {
    return IOSFloatArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSIntArray class]]) {
    return IOSIntArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSLongArray class]]) {
    return IOSLongArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSShortArray class]]) {
    return IOSShortArray_Get(nil_chk(array), index);
  }
  @throw [JavaLangReflectArray badArrayWithId:array];
}

+ (IOSObjectArray *)__exceptions_getDoubleWithId_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (float)getFloatWithId:(id)array
                withInt:(int)index {
  if ([array isKindOfClass:[IOSFloatArray class]]) {
    return IOSFloatArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSByteArray class]]) {
    return IOSByteArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSCharArray class]]) {
    return IOSCharArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSIntArray class]]) {
    return IOSIntArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSLongArray class]]) {
    return IOSLongArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSShortArray class]]) {
    return IOSShortArray_Get(nil_chk(array), index);
  }
  @throw [JavaLangReflectArray badArrayWithId:array];
}

+ (IOSObjectArray *)__exceptions_getFloatWithId_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (int)getIntWithId:(id)array
            withInt:(int)index {
  if ([array isKindOfClass:[IOSIntArray class]]) {
    return IOSIntArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSByteArray class]]) {
    return IOSByteArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSCharArray class]]) {
    return IOSCharArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSShortArray class]]) {
    return IOSShortArray_Get(nil_chk(array), index);
  }
  @throw [JavaLangReflectArray badArrayWithId:array];
}

+ (IOSObjectArray *)__exceptions_getIntWithId_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (int)getLengthWithId:(id)array {
  if ([[IOSObjectArray iosClassWithType:[IOSClass classWithClass:[NSObject class]]] isInstance:array]) {
    return (int) [((IOSObjectArray *) nil_chk(array)) count];
  }
  else if ([array isKindOfClass:[IOSBooleanArray class]]) {
    return (int) [((IOSBooleanArray *) nil_chk(array)) count];
  }
  else if ([array isKindOfClass:[IOSByteArray class]]) {
    return (int) [((IOSByteArray *) nil_chk(array)) count];
  }
  else if ([array isKindOfClass:[IOSCharArray class]]) {
    return (int) [((IOSCharArray *) nil_chk(array)) count];
  }
  else if ([array isKindOfClass:[IOSDoubleArray class]]) {
    return (int) [((IOSDoubleArray *) nil_chk(array)) count];
  }
  else if ([array isKindOfClass:[IOSFloatArray class]]) {
    return (int) [((IOSFloatArray *) nil_chk(array)) count];
  }
  else if ([array isKindOfClass:[IOSIntArray class]]) {
    return (int) [((IOSIntArray *) nil_chk(array)) count];
  }
  else if ([array isKindOfClass:[IOSLongArray class]]) {
    return (int) [((IOSLongArray *) nil_chk(array)) count];
  }
  else if ([array isKindOfClass:[IOSShortArray class]]) {
    return (int) [((IOSShortArray *) nil_chk(array)) count];
  }
  @throw [JavaLangReflectArray badArrayWithId:array];
}

+ (long long int)getLongWithId:(id)array
                       withInt:(int)index {
  if ([array isKindOfClass:[IOSLongArray class]]) {
    return IOSLongArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSByteArray class]]) {
    return IOSByteArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSCharArray class]]) {
    return IOSCharArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSIntArray class]]) {
    return IOSIntArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSShortArray class]]) {
    return IOSShortArray_Get(nil_chk(array), index);
  }
  @throw [JavaLangReflectArray badArrayWithId:array];
}

+ (IOSObjectArray *)__exceptions_getLongWithId_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (short int)getShortWithId:(id)array
                    withInt:(int)index {
  if ([array isKindOfClass:[IOSShortArray class]]) {
    return IOSShortArray_Get(nil_chk(array), index);
  }
  else if ([array isKindOfClass:[IOSByteArray class]]) {
    return IOSByteArray_Get(nil_chk(array), index);
  }
  @throw [JavaLangReflectArray badArrayWithId:array];
}

+ (IOSObjectArray *)__exceptions_getShortWithId_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (id)newInstanceWithIOSClass:(IOSClass *)componentType
                 withIntArray:(IOSIntArray *)dimensions {
  if ((int) [((IOSIntArray *) nil_chk(dimensions)) count] <= 0 || (int) [dimensions count] > 255) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Bad number of dimensions: %d", (int) [dimensions count]]] autorelease];
  }
  if (componentType == [IOSClass voidClass]) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"Can't allocate an array of void"] autorelease];
  }
  if (componentType == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"componentType == null"] autorelease];
  }
  return [JavaLangReflectArray createMultiArrayWithIOSClass:componentType withIntArray:dimensions];
}

+ (IOSObjectArray *)__exceptions_newInstanceWithIOSClass_withIntArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangNegativeArraySizeException getClass], [JavaLangIllegalArgumentException getClass] } count:2 type:[IOSClass getClass]];
}

+ (id)createMultiArrayWithIOSClass:(IOSClass *)componentType
                      withIntArray:(IOSIntArray *)dimensions {
  @throw [[[JavaLangAssertionError alloc] initWithId:@"multi-dimension support not implemented"] autorelease];
}

+ (IOSObjectArray *)__exceptions_createMultiArrayWithIOSClass_withIntArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangNegativeArraySizeException getClass] } count:1 type:[IOSClass getClass]];
}

+ (id)newInstanceWithIOSClass:(IOSClass *)componentType
                      withInt:(int)size {
  if (![((IOSClass *) nil_chk(componentType)) isPrimitive]) {
    return [JavaLangReflectArray createObjectArrayWithIOSClass:componentType withInt:size];
  }
  else if (componentType == [IOSClass booleanClass]) {
    return [IOSBooleanArray arrayWithLength:size];
  }
  else if (componentType == [IOSClass byteClass]) {
    return [IOSByteArray arrayWithLength:size];
  }
  else if (componentType == [IOSClass charClass]) {
    return [IOSCharArray arrayWithLength:size];
  }
  else if (componentType == [IOSClass shortClass]) {
    return [IOSShortArray arrayWithLength:size];
  }
  else if (componentType == [IOSClass intClass]) {
    return [IOSIntArray arrayWithLength:size];
  }
  else if (componentType == [IOSClass longClass]) {
    return [IOSLongArray arrayWithLength:size];
  }
  else if (componentType == [IOSClass floatClass]) {
    return [IOSFloatArray arrayWithLength:size];
  }
  else if (componentType == [IOSClass doubleClass]) {
    return [IOSDoubleArray arrayWithLength:size];
  }
  else if (componentType == [IOSClass voidClass]) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"Can't allocate an array of void"] autorelease];
  }
  @throw [[[JavaLangAssertionError alloc] init] autorelease];
}

+ (IOSObjectArray *)__exceptions_newInstanceWithIOSClass_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangNegativeArraySizeException getClass] } count:1 type:[IOSClass getClass]];
}

+ (id)createObjectArrayWithIOSClass:(IOSClass *)componentType
                            withInt:(int)length {
  return [[IOSObjectArray alloc] initWithLength:length type:componentType];
}

+ (IOSObjectArray *)__exceptions_createObjectArrayWithIOSClass_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangNegativeArraySizeException getClass] } count:1 type:[IOSClass getClass]];
}

+ (void)setWithId:(id)array
          withInt:(int)index
           withId:(id)value {
  if (![[nil_chk(array) getClass] isArray]) {
    @throw [JavaLangReflectArray notAnArrayWithId:array];
  }
  if ([[IOSObjectArray iosClassWithType:[IOSClass classWithClass:[NSObject class]]] isInstance:array]) {
    if (value != nil && ![((IOSClass *) nil_chk([[array getClass] getComponentType])) isInstance:value]) {
      @throw [JavaLangReflectArray incompatibleTypeWithId:array];
    }
    IOSObjectArray_Set(((IOSObjectArray *) check_class_cast(array, [IOSObjectArray class])), index, value);
  }
  else {
    if (value == nil) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"Primitive array can't take null values."] autorelease];
    }
    if ([value isKindOfClass:[JavaLangBoolean class]]) {
      [JavaLangReflectArray setBooleanWithId:array withInt:index withBoolean:[((JavaLangBoolean *) nil_chk(value)) booleanValue]];
    }
    else if ([value isKindOfClass:[JavaLangByte class]]) {
      [JavaLangReflectArray setByteWithId:array withInt:index withByte:[((JavaLangByte *) nil_chk(value)) byteValue]];
    }
    else if ([value isKindOfClass:[JavaLangCharacter class]]) {
      [JavaLangReflectArray setCharWithId:array withInt:index withChar:[((JavaLangCharacter *) nil_chk(value)) charValue]];
    }
    else if ([value isKindOfClass:[JavaLangShort class]]) {
      [JavaLangReflectArray setShortWithId:array withInt:index withShort:[((JavaLangShort *) nil_chk(value)) shortValue]];
    }
    else if ([value isKindOfClass:[JavaLangInteger class]]) {
      [JavaLangReflectArray setIntWithId:array withInt:index withInt:[((JavaLangInteger *) nil_chk(value)) intValue]];
    }
    else if ([value isKindOfClass:[JavaLangLong class]]) {
      [JavaLangReflectArray setLongWithId:array withInt:index withLong:[((JavaLangLong *) nil_chk(value)) longLongValue]];
    }
    else if ([value isKindOfClass:[JavaLangFloat class]]) {
      [JavaLangReflectArray setFloatWithId:array withInt:index withFloat:[((JavaLangFloat *) nil_chk(value)) floatValue]];
    }
    else if ([value isKindOfClass:[JavaLangDouble class]]) {
      [JavaLangReflectArray setDoubleWithId:array withInt:index withDouble:[((JavaLangDouble *) nil_chk(value)) doubleValue]];
    }
  }
}

+ (IOSObjectArray *)__exceptions_setWithId_withInt_withId_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (void)setBooleanWithId:(id)array
                 withInt:(int)index
             withBoolean:(BOOL)value {
  if ([array isKindOfClass:[IOSBooleanArray class]]) {
    (*IOSBooleanArray_GetRef(nil_chk(array), index)) = value;
  }
  else {
    @throw [JavaLangReflectArray badArrayWithId:array];
  }
}

+ (void)setByteWithId:(id)array
              withInt:(int)index
             withByte:(char)value {
  if ([array isKindOfClass:[IOSByteArray class]]) {
    (*IOSByteArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSDoubleArray class]]) {
    (*IOSDoubleArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSFloatArray class]]) {
    (*IOSFloatArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSIntArray class]]) {
    (*IOSIntArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSLongArray class]]) {
    (*IOSLongArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSShortArray class]]) {
    (*IOSShortArray_GetRef(nil_chk(array), index)) = value;
  }
  else {
    @throw [JavaLangReflectArray badArrayWithId:array];
  }
}

+ (IOSObjectArray *)__exceptions_setByteWithId_withInt_withByte_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (void)setCharWithId:(id)array
              withInt:(int)index
             withChar:(unichar)value {
  if ([array isKindOfClass:[IOSCharArray class]]) {
    (*IOSCharArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSDoubleArray class]]) {
    (*IOSDoubleArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSFloatArray class]]) {
    (*IOSFloatArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSIntArray class]]) {
    (*IOSIntArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSLongArray class]]) {
    (*IOSLongArray_GetRef(nil_chk(array), index)) = value;
  }
  else {
    @throw [JavaLangReflectArray badArrayWithId:array];
  }
}

+ (IOSObjectArray *)__exceptions_setCharWithId_withInt_withChar_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (void)setDoubleWithId:(id)array
                withInt:(int)index
             withDouble:(double)value {
  if ([array isKindOfClass:[IOSDoubleArray class]]) {
    (*IOSDoubleArray_GetRef(nil_chk(array), index)) = value;
  }
  else {
    @throw [JavaLangReflectArray badArrayWithId:array];
  }
}

+ (IOSObjectArray *)__exceptions_setDoubleWithId_withInt_withDouble_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (void)setFloatWithId:(id)array
               withInt:(int)index
             withFloat:(float)value {
  if ([array isKindOfClass:[IOSFloatArray class]]) {
    (*IOSFloatArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSDoubleArray class]]) {
    (*IOSDoubleArray_GetRef(nil_chk(array), index)) = value;
  }
  else {
    @throw [JavaLangReflectArray badArrayWithId:array];
  }
}

+ (IOSObjectArray *)__exceptions_setFloatWithId_withInt_withFloat_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (void)setIntWithId:(id)array
             withInt:(int)index
             withInt:(int)value {
  if ([array isKindOfClass:[IOSIntArray class]]) {
    (*IOSIntArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSDoubleArray class]]) {
    (*IOSDoubleArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSFloatArray class]]) {
    (*IOSFloatArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSLongArray class]]) {
    (*IOSLongArray_GetRef(nil_chk(array), index)) = value;
  }
  else {
    @throw [JavaLangReflectArray badArrayWithId:array];
  }
}

+ (IOSObjectArray *)__exceptions_setIntWithId_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (void)setLongWithId:(id)array
              withInt:(int)index
             withLong:(long long int)value {
  if ([array isKindOfClass:[IOSLongArray class]]) {
    (*IOSLongArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSDoubleArray class]]) {
    (*IOSDoubleArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSFloatArray class]]) {
    (*IOSFloatArray_GetRef(nil_chk(array), index)) = value;
  }
  else {
    @throw [JavaLangReflectArray badArrayWithId:array];
  }
}

+ (IOSObjectArray *)__exceptions_setLongWithId_withInt_withLong_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

+ (void)setShortWithId:(id)array
               withInt:(int)index
             withShort:(short int)value {
  if ([array isKindOfClass:[IOSShortArray class]]) {
    (*IOSShortArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSDoubleArray class]]) {
    (*IOSDoubleArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSFloatArray class]]) {
    (*IOSFloatArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSIntArray class]]) {
    (*IOSIntArray_GetRef(nil_chk(array), index)) = value;
  }
  else if ([array isKindOfClass:[IOSLongArray class]]) {
    (*IOSLongArray_GetRef(nil_chk(array), index)) = value;
  }
  else {
    @throw [JavaLangReflectArray badArrayWithId:array];
  }
}

+ (IOSObjectArray *)__exceptions_setShortWithId_withInt_withShort_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalArgumentException getClass], [JavaLangArrayIndexOutOfBoundsException getClass] } count:2 type:[IOSClass getClass]];
}

@end
