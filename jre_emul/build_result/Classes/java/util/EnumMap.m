//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/EnumMap.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSBooleanArray.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/AbstractMap.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/EnumMap.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/MapEntry.h"
#include "java/util/NoSuchElementException.h"
#include "java/util/Set.h"

@implementation JavaUtilEnumMap

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithIOSClass:(IOSClass *)keyType {
  if ((self = [super init])) {
    JavaUtilEnumMap_set_entrySet__(self, nil);
    [self initializationWithIOSClass:keyType];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaUtilEnumMap:(JavaUtilEnumMap *)map {
  if ((self = [super init])) {
    JavaUtilEnumMap_set_entrySet__(self, nil);
    [self initializationWithJavaUtilEnumMap:map];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaUtilMap:(id<JavaUtilMap>)map {
  if ((self = [super init])) {
    JavaUtilEnumMap_set_entrySet__(self, nil);
    if ([(id) map isKindOfClass:[JavaUtilEnumMap class]]) {
      [self initializationWithJavaUtilEnumMap:(JavaUtilEnumMap *) map];
    }
    else {
      if (0 == [((id<JavaUtilMap>) nil_chk(map)) size]) {
        @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
      }
      id<JavaUtilIterator> iter = [((id<JavaUtilSet>) nil_chk([map keySet])) iterator];
      JavaLangEnum *enumKey = [((id<JavaUtilIterator>) nil_chk(iter)) next];
      IOSClass *clazz = [((JavaLangEnum *) nil_chk(enumKey)) getClass];
      if ([clazz isEnum]) {
        [self initializationWithIOSClass:clazz];
      }
      else {
        [self initializationWithIOSClass:[clazz getSuperclass]];
      }
      [self putAllImplWithJavaUtilMap:map];
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)clear {
  [JavaUtilArrays fillWithNSObjectArray:values__ withId:nil];
  [JavaUtilArrays fillWithBooleanArray:hasMapping_ withBOOL:NO];
  mappingsCount_ = 0;
}

- (JavaUtilEnumMap *)clone {
  @try {
    JavaUtilEnumMap *enumMap = (JavaUtilEnumMap *) [super clone];
    [((JavaUtilEnumMap *) nil_chk(enumMap)) initializationWithJavaUtilEnumMap:self];
    return enumMap;
  }
  @catch (JavaLangCloneNotSupportedException *e) {
    return nil;
  }
}

- (BOOL)containsKeyWithId:(id)key {
  if ([self isValidKeyTypeWithId:key]) {
    int keyOrdinal = [((JavaLangEnum *) nil_chk(key)) ordinal];
    return [((IOSBooleanArray *) nil_chk(hasMapping_)) booleanAtIndex:keyOrdinal];
  }
  return NO;
}

- (BOOL)containsValueWithId:(id)value {
  if (nil == value) {
    for (int i = 0; i < enumSize_; i++) {
      if ([((IOSBooleanArray *) nil_chk(hasMapping_)) booleanAtIndex:i] && nil == [((IOSObjectArray *) nil_chk(values__)) objectAtIndex:i]) {
        return YES;
      }
    }
  }
  else {
    for (int i = 0; i < enumSize_; i++) {
      if ([((IOSBooleanArray *) nil_chk(hasMapping_)) booleanAtIndex:i] && [value isEqual:[((IOSObjectArray *) nil_chk(values__)) objectAtIndex:i]]) {
        return YES;
      }
    }
  }
  return NO;
}

- (id<JavaUtilSet>)entrySet {
  if (nil == entrySet__) {
    JavaUtilEnumMap_set_entrySet__(self, [[[JavaUtilEnumMap_EnumMapEntrySet alloc] initWithJavaUtilEnumMap:self] autorelease]);
  }
  return entrySet__;
}

- (BOOL)isEqual:(id)object {
  if (self == object) {
    return YES;
  }
  if (!([object isKindOfClass:[JavaUtilEnumMap class]])) {
    return [super isEqual:object];
  }
  JavaUtilEnumMap *enumMap = (JavaUtilEnumMap *) object;
  if (keyType_ != ((JavaUtilEnumMap *) nil_chk(enumMap))->keyType_ || [self size] != [enumMap size]) {
    return NO;
  }
  return [JavaUtilArrays equalsWithBooleanArray:hasMapping_ withBooleanArray:enumMap->hasMapping_] && [JavaUtilArrays equalsWithNSObjectArray:values__ withNSObjectArray:enumMap->values__];
}

- (id)getWithId:(id)key {
  if (![self isValidKeyTypeWithId:key]) {
    return nil;
  }
  int keyOrdinal = [((JavaLangEnum *) nil_chk(key)) ordinal];
  return (id) [((IOSObjectArray *) nil_chk(values__)) objectAtIndex:keyOrdinal];
}

- (id<JavaUtilSet>)keySet {
  if (nil == keySet__) {
    JavaUtilAbstractMap_set_keySet__(self, [[[JavaUtilEnumMap_EnumMapKeySet alloc] initWithJavaUtilEnumMap:self] autorelease]);
  }
  return keySet__;
}

- (id)putWithId:(JavaLangEnum *)key
         withId:(id)value {
  return [self putImplWithId:key withId:value];
}

- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map {
  [self putAllImplWithJavaUtilMap:map];
}

- (id)removeWithId:(id)key {
  if (![self isValidKeyTypeWithId:key]) {
    return nil;
  }
  int keyOrdinal = [((JavaLangEnum *) nil_chk(key)) ordinal];
  if ([((IOSBooleanArray *) nil_chk(hasMapping_)) booleanAtIndex:keyOrdinal]) {
    (*[hasMapping_ booleanRefAtIndex:keyOrdinal]) = NO;
    mappingsCount_--;
  }
  id oldValue = (id) [((IOSObjectArray *) nil_chk(values__)) objectAtIndex:keyOrdinal];
  [values__ replaceObjectAtIndex:keyOrdinal withObject:nil];
  return oldValue;
}

- (int)size {
  return mappingsCount_;
}

- (id<JavaUtilCollection>)values {
  if (nil == valuesCollection_EnumMap_) {
    JavaUtilEnumMap_set_valuesCollection_EnumMap_(self, [[[JavaUtilEnumMap_EnumMapValueCollection alloc] initWithJavaUtilEnumMap:self] autorelease]);
  }
  return valuesCollection_EnumMap_;
}

- (BOOL)isValidKeyTypeWithId:(id)key {
  if (nil != key && [((IOSClass *) nil_chk(keyType_)) isInstance:key]) {
    return YES;
  }
  return NO;
}

- (void)initializationWithJavaUtilEnumMap:(JavaUtilEnumMap *)enumMap {
  JavaUtilEnumMap_set_keyType_(self, ((JavaUtilEnumMap *) nil_chk(enumMap))->keyType_);
  JavaUtilEnumMap_set_keys_(self, enumMap->keys_);
  enumSize_ = enumMap->enumSize_;
  JavaUtilEnumMap_set_values__(self, [((IOSObjectArray *) nil_chk(enumMap->values__)) clone]);
  JavaUtilEnumMap_set_hasMapping_(self, [((IOSBooleanArray *) nil_chk(enumMap->hasMapping_)) clone]);
  mappingsCount_ = enumMap->mappingsCount_;
}

- (void)initializationWithIOSClass:(IOSClass *)type {
  JavaUtilEnumMap_set_keyType_(self, type);
  JavaUtilEnumMap_set_keys_(self, [((IOSClass *) nil_chk(keyType_)) getEnumConstants]);
  enumSize_ = (int) [((IOSObjectArray *) nil_chk(keys_)) count];
  JavaUtilEnumMap_set_values__(self, [IOSObjectArray arrayWithLength:enumSize_ type:[IOSClass classWithClass:[NSObject class]]]);
  JavaUtilEnumMap_set_hasMapping_(self, [IOSBooleanArray arrayWithLength:enumSize_]);
}

- (void)putAllImplWithJavaUtilMap:(id<JavaUtilMap>)map {
  id<JavaUtilIterator> iter = [((id<JavaUtilSet>) nil_chk([((id<JavaUtilMap>) nil_chk(map)) entrySet])) iterator];
  while ([((id<JavaUtilIterator>) nil_chk(iter)) hasNext]) {
    id<JavaUtilMap_Entry> entry = (id<JavaUtilMap_Entry>) [iter next];
    [self putImplWithId:(JavaLangEnum *) [((id<JavaUtilMap_Entry>) nil_chk(entry)) getKey] withId:(id) [entry getValue]];
  }
}

- (id)putImplWithId:(JavaLangEnum *)key
             withId:(id)value {
  if (nil == key) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if (![self isValidKeyTypeWithId:key]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  int keyOrdinal = [((JavaLangEnum *) nil_chk(key)) ordinal];
  if (![((IOSBooleanArray *) nil_chk(hasMapping_)) booleanAtIndex:keyOrdinal]) {
    (*[hasMapping_ booleanRefAtIndex:keyOrdinal]) = YES;
    mappingsCount_++;
  }
  id oldValue = (id) [((IOSObjectArray *) nil_chk(values__)) objectAtIndex:keyOrdinal];
  [values__ replaceObjectAtIndex:keyOrdinal withObject:value];
  return oldValue;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilEnumMap_set_valuesCollection_EnumMap_(self, nil);
  JavaUtilEnumMap_set_entrySet__(self, nil);
  JavaUtilEnumMap_set_hasMapping_(self, nil);
  JavaUtilEnumMap_set_values__(self, nil);
  JavaUtilEnumMap_set_keys_(self, nil);
  JavaUtilEnumMap_set_keyType_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilEnumMap *)other {
  [super copyAllFieldsTo:other];
  JavaUtilEnumMap_set_entrySet__(other, entrySet__);
  other->enumSize_ = enumSize_;
  JavaUtilEnumMap_set_hasMapping_(other, hasMapping_);
  JavaUtilEnumMap_set_keyType_(other, keyType_);
  JavaUtilEnumMap_set_keys_(other, keys_);
  other->mappingsCount_ = mappingsCount_;
  JavaUtilEnumMap_set_values__(other, values__);
  JavaUtilEnumMap_set_valuesCollection_EnumMap_(other, valuesCollection_EnumMap_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:keyType_ name:@"keyType"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:keys_ name:@"keys"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:values__ name:@"values_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:hasMapping_ name:@"hasMapping"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:entrySet__ name:@"entrySet_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:valuesCollection_EnumMap_ name:@"valuesCollection_EnumMap"]];
  return result;
}

@end
@implementation JavaUtilEnumMap_Entry

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithId:(JavaLangEnum *)theKey
          withId:(id)theValue
withJavaUtilEnumMap:(JavaUtilEnumMap *)em {
  if ((self = [super initWithId:theKey withId:theValue])) {
    JavaUtilEnumMap_Entry_set_enumMap_(self, em);
    ordinal_ = [((JavaLangEnum *) nil_chk(theKey)) ordinal];
    JreMemDebugAdd(self);
  }
  return self;
}

- (BOOL)isEqual:(id)object {
  if (![((IOSBooleanArray *) nil_chk(((JavaUtilEnumMap *) nil_chk(enumMap_))->hasMapping_)) booleanAtIndex:ordinal_]) {
    return NO;
  }
  BOOL isEqual = NO;
  if ([object conformsToProtocol: @protocol(JavaUtilMap_Entry)]) {
    id<JavaUtilMap_Entry> entry = (id<JavaUtilMap_Entry>) object;
    id enumKey = [((id<JavaUtilMap_Entry>) nil_chk(entry)) getKey];
    if ([((JavaLangEnum *) nil_chk(key_)) isEqual:enumKey]) {
      id theValue = [entry getValue];
      isEqual = [((IOSObjectArray *) nil_chk(enumMap_->values__)) objectAtIndex:ordinal_] == nil ? nil == theValue : [nil_chk([enumMap_->values__ objectAtIndex:ordinal_]) isEqual:theValue];
    }
  }
  return isEqual;
}

- (NSUInteger)hash {
  return ([((IOSObjectArray *) nil_chk(((JavaUtilEnumMap *) nil_chk(enumMap_))->keys_)) objectAtIndex:ordinal_] == nil ? 0 : [((JavaLangEnum *) nil_chk([enumMap_->keys_ objectAtIndex:ordinal_])) hash]) ^ ([((IOSObjectArray *) nil_chk(enumMap_->values__)) objectAtIndex:ordinal_] == nil ? 0 : [nil_chk([enumMap_->values__ objectAtIndex:ordinal_]) hash]);
}

- (id)getKey {
  [self checkEntryStatus];
  return (JavaLangEnum *) [((IOSObjectArray *) nil_chk(((JavaUtilEnumMap *) nil_chk(enumMap_))->keys_)) objectAtIndex:ordinal_];
}

- (id)getValue {
  [self checkEntryStatus];
  return (id) [((IOSObjectArray *) nil_chk(((JavaUtilEnumMap *) nil_chk(enumMap_))->values__)) objectAtIndex:ordinal_];
}

- (id)setValueWithId:(id)value {
  [self checkEntryStatus];
  return [enumMap_ putWithId:(JavaLangEnum *) [((IOSObjectArray *) nil_chk(((JavaUtilEnumMap *) nil_chk(enumMap_))->keys_)) objectAtIndex:ordinal_] withId:value];
}

- (NSString *)description {
  JavaLangStringBuilder *result = [[[JavaLangStringBuilder alloc] initWithNSString:[((JavaLangEnum *) nil_chk([((IOSObjectArray *) nil_chk(((JavaUtilEnumMap *) nil_chk(enumMap_))->keys_)) objectAtIndex:ordinal_])) description]] autorelease];
  [result appendWithNSString:@"="];
  [result appendWithNSString:[nil_chk([((IOSObjectArray *) nil_chk(enumMap_->values__)) objectAtIndex:ordinal_]) description]];
  return [result description];
}

- (void)checkEntryStatus {
  if (![((IOSBooleanArray *) nil_chk(((JavaUtilEnumMap *) nil_chk(enumMap_))->hasMapping_)) booleanAtIndex:ordinal_]) {
    @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilEnumMap_Entry_set_enumMap_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilEnumMap_Entry *)other {
  [super copyAllFieldsTo:other];
  JavaUtilEnumMap_Entry_set_enumMap_(other, enumMap_);
  other->ordinal_ = ordinal_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:enumMap_ name:@"enumMap"]];
  return result;
}

@end
@implementation JavaUtilEnumMap_EnumMapKeySet

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaUtilEnumMap:(JavaUtilEnumMap *)em {
  if ((self = [super init])) {
    enumMap_ = em;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)clear {
  [((JavaUtilEnumMap *) nil_chk(enumMap_)) clear];
}

- (BOOL)containsWithId:(id)object {
  return [((JavaUtilEnumMap *) nil_chk(enumMap_)) containsKeyWithId:object];
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilEnumMap_EnumMapIterator alloc] initWithJavaUtilMapEntry_Type:[[[JavaUtilEnumMap_EnumMapKeySet_$1 alloc] init] autorelease] withJavaUtilEnumMap:enumMap_] autorelease];
}

- (BOOL)removeWithId:(id)object {
  if ([self containsWithId:object]) {
    [((JavaUtilEnumMap *) nil_chk(enumMap_)) removeWithId:object];
    return YES;
  }
  return NO;
}

- (int)size {
  return [((JavaUtilEnumMap *) nil_chk(enumMap_)) size];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilEnumMap_EnumMapKeySet *)other {
  [super copyAllFieldsTo:other];
  other->enumMap_ = enumMap_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
@implementation JavaUtilEnumMap_EnumMapKeySet_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)getWithJavaUtilMapEntry:(JavaUtilMapEntry *)entry {
  return ((JavaUtilMapEntry *) nil_chk(entry))->key_;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

@end
@implementation JavaUtilEnumMap_EnumMapValueCollection

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaUtilEnumMap:(JavaUtilEnumMap *)em {
  if ((self = [super init])) {
    enumMap_ = em;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)clear {
  [((JavaUtilEnumMap *) nil_chk(enumMap_)) clear];
}

- (BOOL)containsWithId:(id)object {
  return [((JavaUtilEnumMap *) nil_chk(enumMap_)) containsValueWithId:object];
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilEnumMap_EnumMapIterator alloc] initWithJavaUtilMapEntry_Type:[[[JavaUtilEnumMap_EnumMapValueCollection_$1 alloc] init] autorelease] withJavaUtilEnumMap:enumMap_] autorelease];
}

- (BOOL)removeWithId:(id)object {
  if (nil == object) {
    for (int i = 0; i < ((JavaUtilEnumMap *) nil_chk(enumMap_))->enumSize_; i++) {
      if ([((IOSBooleanArray *) nil_chk(enumMap_->hasMapping_)) booleanAtIndex:i] && nil == [((IOSObjectArray *) nil_chk(enumMap_->values__)) objectAtIndex:i]) {
        [enumMap_ removeWithId:[((IOSObjectArray *) nil_chk(enumMap_->keys_)) objectAtIndex:i]];
        return YES;
      }
    }
  }
  else {
    for (int i = 0; i < ((JavaUtilEnumMap *) nil_chk(enumMap_))->enumSize_; i++) {
      if ([((IOSBooleanArray *) nil_chk(enumMap_->hasMapping_)) booleanAtIndex:i] && [object isEqual:[((IOSObjectArray *) nil_chk(enumMap_->values__)) objectAtIndex:i]]) {
        [enumMap_ removeWithId:[((IOSObjectArray *) nil_chk(enumMap_->keys_)) objectAtIndex:i]];
        return YES;
      }
    }
  }
  return NO;
}

- (int)size {
  return [((JavaUtilEnumMap *) nil_chk(enumMap_)) size];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilEnumMap_EnumMapValueCollection *)other {
  [super copyAllFieldsTo:other];
  other->enumMap_ = enumMap_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
@implementation JavaUtilEnumMap_EnumMapValueCollection_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)getWithJavaUtilMapEntry:(JavaUtilMapEntry *)entry {
  return ((JavaUtilMapEntry *) nil_chk(entry))->value_;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

@end
@implementation JavaUtilEnumMap_EnumMapIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaUtilMapEntry_Type:(id<JavaUtilMapEntry_Type>)value
                withJavaUtilEnumMap:(JavaUtilEnumMap *)em {
  if ((self = [super init])) {
    position_ = 0;
    prePosition_ = -1;
    JavaUtilEnumMap_EnumMapIterator_set_enumMap_(self, em);
    JavaUtilEnumMap_EnumMapIterator_set_type_(self, value);
    JreMemDebugAdd(self);
  }
  return self;
}

- (BOOL)hasNext {
  int length = ((JavaUtilEnumMap *) nil_chk(enumMap_))->enumSize_;
  for (; position_ < length; position_++) {
    if ([((IOSBooleanArray *) nil_chk(enumMap_->hasMapping_)) booleanAtIndex:position_]) {
      break;
    }
  }
  return position_ != length;
}

- (id)next {
  if (![self hasNext]) {
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
  prePosition_ = position_++;
  return [((id<JavaUtilMapEntry_Type>) nil_chk(type_)) getWithJavaUtilMapEntry:[[[JavaUtilMapEntry alloc] initWithId:[((IOSObjectArray *) nil_chk(((JavaUtilEnumMap *) nil_chk(enumMap_))->keys_)) objectAtIndex:prePosition_] withId:[((IOSObjectArray *) nil_chk(enumMap_->values__)) objectAtIndex:prePosition_]] autorelease]];
}

- (void)remove {
  [self checkStatus];
  if ([((IOSBooleanArray *) nil_chk(((JavaUtilEnumMap *) nil_chk(enumMap_))->hasMapping_)) booleanAtIndex:prePosition_]) {
    [enumMap_ removeWithId:[((IOSObjectArray *) nil_chk(enumMap_->keys_)) objectAtIndex:prePosition_]];
  }
  prePosition_ = -1;
}

- (NSString *)description {
  if (-1 == prePosition_) {
    return [super description];
  }
  return [nil_chk([((id<JavaUtilMapEntry_Type>) nil_chk(type_)) getWithJavaUtilMapEntry:[[[JavaUtilMapEntry alloc] initWithId:[((IOSObjectArray *) nil_chk(((JavaUtilEnumMap *) nil_chk(enumMap_))->keys_)) objectAtIndex:prePosition_] withId:[((IOSObjectArray *) nil_chk(enumMap_->values__)) objectAtIndex:prePosition_]] autorelease]]) description];
}

- (void)checkStatus {
  if (-1 == prePosition_) {
    @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilEnumMap_EnumMapIterator_set_type_(self, nil);
  JavaUtilEnumMap_EnumMapIterator_set_enumMap_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilEnumMap_EnumMapIterator *)other {
  [super copyAllFieldsTo:other];
  JavaUtilEnumMap_EnumMapIterator_set_enumMap_(other, enumMap_);
  other->position_ = position_;
  other->prePosition_ = prePosition_;
  JavaUtilEnumMap_EnumMapIterator_set_type_(other, type_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:enumMap_ name:@"enumMap"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:type_ name:@"type"]];
  return result;
}

@end
@implementation JavaUtilEnumMap_EnumMapEntryIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaUtilMapEntry_Type:(id<JavaUtilMapEntry_Type>)value
                withJavaUtilEnumMap:(JavaUtilEnumMap *)em {
  return JreMemDebugAdd([super initWithJavaUtilMapEntry_Type:value withJavaUtilEnumMap:em]);
}

- (id)next {
  if (![self hasNext]) {
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
  prePosition_ = position_++;
  return [((id<JavaUtilMapEntry_Type>) nil_chk(type_)) getWithJavaUtilMapEntry:[[[JavaUtilEnumMap_Entry alloc] initWithId:(JavaLangEnum *) [((IOSObjectArray *) nil_chk(((JavaUtilEnumMap *) nil_chk(enumMap_))->keys_)) objectAtIndex:prePosition_] withId:(id) [((IOSObjectArray *) nil_chk(enumMap_->values__)) objectAtIndex:prePosition_] withJavaUtilEnumMap:enumMap_] autorelease]];
}

@end
@implementation JavaUtilEnumMap_EnumMapEntrySet

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaUtilEnumMap:(JavaUtilEnumMap *)em {
  if ((self = [super init])) {
    enumMap_ = em;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)clear {
  [((JavaUtilEnumMap *) nil_chk(enumMap_)) clear];
}

- (BOOL)containsWithId:(id)object {
  BOOL isEqual = NO;
  if ([object conformsToProtocol: @protocol(JavaUtilMap_Entry)]) {
    id enumKey = [((id<JavaUtilMap_Entry>) nil_chk(object)) getKey];
    id enumValue = [((id<JavaUtilMap_Entry>) nil_chk(object)) getValue];
    if ([((JavaUtilEnumMap *) nil_chk(enumMap_)) containsKeyWithId:enumKey]) {
      id value = [enumMap_ getWithId:enumKey];
      isEqual = (value == nil ? nil == enumValue : [value isEqual:enumValue]);
    }
  }
  return isEqual;
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilEnumMap_EnumMapEntryIterator alloc] initWithJavaUtilMapEntry_Type:[[[JavaUtilEnumMap_EnumMapEntrySet_$1 alloc] init] autorelease] withJavaUtilEnumMap:enumMap_] autorelease];
}

- (BOOL)removeWithId:(id)object {
  if ([self containsWithId:object]) {
    [((JavaUtilEnumMap *) nil_chk(enumMap_)) removeWithId:[((id<JavaUtilMap_Entry>) nil_chk(object)) getKey]];
    return YES;
  }
  return NO;
}

- (int)size {
  return [((JavaUtilEnumMap *) nil_chk(enumMap_)) size];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilEnumMap_EnumMapEntrySet *)other {
  [super copyAllFieldsTo:other];
  other->enumMap_ = enumMap_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
@implementation JavaUtilEnumMap_EnumMapEntrySet_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id<JavaUtilMap_Entry>)getWithJavaUtilMapEntry:(JavaUtilMapEntry *)entry {
  return entry;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

@end
