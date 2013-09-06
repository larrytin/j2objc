//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/MiniEnumSet.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Long.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Collection.h"
#include "java/util/EnumSet.h"
#include "java/util/Iterator.h"
#include "java/util/MiniEnumSet.h"
#include "java/util/NoSuchElementException.h"

@implementation JavaUtilMiniEnumSet

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithIOSClass:(IOSClass *)elementType {
  if ((self = [super initWithIOSClass:elementType])) {
    JavaUtilMiniEnumSet_set_enums_(self, [((IOSClass *) nil_chk(elementType)) getEnumConstants]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilMiniEnumSet_MiniEnumSetIterator alloc] initWithJavaUtilMiniEnumSet:self] autorelease];
}

- (int)size {
  return size__;
}

- (void)clear {
  bits_ = 0;
  size__ = 0;
}

- (BOOL)addWithId:(JavaLangEnum *)element {
  if (element == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if (!([element isKindOfClass:[JavaLangEnum class]]) || ![self isValidTypeWithIOSClass:[((JavaLangEnum *) nil_chk(element)) getDeclaringClass]]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  long long int oldBits = bits_;
  long long int newBits = oldBits | (1LL << [((JavaLangEnum *) nil_chk(element)) ordinal]);
  if (oldBits != newBits) {
    bits_ = newBits;
    size__++;
    return YES;
  }
  return NO;
}

- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  if (collection == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if ([((id<JavaUtilCollection>) nil_chk(collection)) isEmpty]) {
    return NO;
  }
  if ([(id) collection isKindOfClass:[JavaUtilEnumSet class]]) {
    JavaUtilEnumSet *set = (JavaUtilEnumSet *) collection;
    if (![self isValidTypeWithIOSClass:set->elementClass_]) {
      @throw [[[JavaLangClassCastException alloc] init] autorelease];
    }
    JavaUtilMiniEnumSet *miniSet = (JavaUtilMiniEnumSet *) set;
    long long int oldBits = bits_;
    long long int newBits = oldBits | miniSet->bits_;
    bits_ = newBits;
    size__ = [JavaLangLong bitCountWithLongInt:newBits];
    return (oldBits != newBits);
  }
  return [super addAllWithJavaUtilCollection:collection];
}

- (BOOL)containsWithId:(id)object {
  if (object == nil || ![self isValidTypeWithIOSClass:[object getClass]]) {
    return NO;
  }
  JavaLangEnum *element = (JavaLangEnum *) object;
  int ordinal = [((JavaLangEnum *) nil_chk(element)) ordinal];
  return (bits_ & (1LL << ordinal)) != 0;
}

- (BOOL)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  if (collection == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if ([((id<JavaUtilCollection>) nil_chk(collection)) isEmpty]) {
    return YES;
  }
  if ([(id) collection isKindOfClass:[JavaUtilMiniEnumSet class]]) {
    JavaUtilMiniEnumSet *set = (JavaUtilMiniEnumSet *) collection;
    long long int setBits = set->bits_;
    return [self isValidTypeWithIOSClass:set->elementClass_] && ((bits_ & setBits) == setBits);
  }
  return !([(id) collection isKindOfClass:[JavaUtilEnumSet class]]) && [super containsAllWithJavaUtilCollection:collection];
}

- (BOOL)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  if (collection == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if ([((id<JavaUtilCollection>) nil_chk(collection)) isEmpty]) {
    return NO;
  }
  if ([(id) collection isKindOfClass:[JavaUtilEnumSet class]]) {
    JavaUtilEnumSet *set = (JavaUtilEnumSet *) collection;
    if (![self isValidTypeWithIOSClass:set->elementClass_]) {
      return NO;
    }
    JavaUtilMiniEnumSet *miniSet = (JavaUtilMiniEnumSet *) set;
    long long int oldBits = bits_;
    long long int newBits = oldBits & ~miniSet->bits_;
    if (oldBits != newBits) {
      bits_ = newBits;
      size__ = [JavaLangLong bitCountWithLongInt:newBits];
      return YES;
    }
    return NO;
  }
  return [super removeAllWithJavaUtilCollection:collection];
}

- (BOOL)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  if ([(id) collection isKindOfClass:[JavaUtilEnumSet class]]) {
    JavaUtilEnumSet *set = (JavaUtilEnumSet *) collection;
    if (![self isValidTypeWithIOSClass:((JavaUtilEnumSet *) nil_chk(set))->elementClass_]) {
      if (size__ > 0) {
        [self clear];
        return YES;
      }
      else {
        return NO;
      }
    }
    JavaUtilMiniEnumSet *miniSet = (JavaUtilMiniEnumSet *) set;
    long long int oldBits = bits_;
    long long int newBits = oldBits & miniSet->bits_;
    if (oldBits != newBits) {
      bits_ = newBits;
      size__ = [JavaLangLong bitCountWithLongInt:newBits];
      return YES;
    }
    return NO;
  }
  return [super retainAllWithJavaUtilCollection:collection];
}

- (BOOL)removeWithId:(id)object {
  if (object == nil || ![self isValidTypeWithIOSClass:[object getClass]]) {
    return NO;
  }
  JavaLangEnum *element = (JavaLangEnum *) object;
  int ordinal = [((JavaLangEnum *) nil_chk(element)) ordinal];
  long long int oldBits = bits_;
  long long int newBits = oldBits & ~(1LL << ordinal);
  if (oldBits != newBits) {
    bits_ = newBits;
    size__--;
    return YES;
  }
  return NO;
}

- (BOOL)isEqual:(id)object {
  if (!([object isKindOfClass:[JavaUtilEnumSet class]])) {
    return [super isEqual:object];
  }
  JavaUtilEnumSet *set = (JavaUtilEnumSet *) object;
  if (![self isValidTypeWithIOSClass:((JavaUtilEnumSet *) nil_chk(set))->elementClass_]) {
    return size__ == 0 && [set isEmpty];
  }
  return bits_ == ((JavaUtilMiniEnumSet *) set)->bits_;
}

- (void)complement {
  if ((int) [((IOSObjectArray *) nil_chk(enums_)) count] != 0) {
    bits_ = ~bits_;
    bits_ &= ((long long) (((unsigned long long) -1LL) >> (JavaUtilMiniEnumSet_MAX_ELEMENTS - (int) [enums_ count])));
    size__ = (int) [enums_ count] - size__;
  }
}

- (void)setRangeWithId:(JavaLangEnum *)start
                withId:(JavaLangEnum *)end {
  if (start == nil || end == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  int length = [((JavaLangEnum *) nil_chk(end)) ordinal] - [((JavaLangEnum *) nil_chk(start)) ordinal] + 1;
  long long int range = ((long long) (((unsigned long long) -1LL) >> (JavaUtilMiniEnumSet_MAX_ELEMENTS - length))) << [start ordinal];
  bits_ |= range;
  size__ = [JavaLangLong bitCountWithLongInt:bits_];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilMiniEnumSet_set_enums_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilMiniEnumSet *)other {
  [super copyAllFieldsTo:other];
  other->bits_ = bits_;
  JavaUtilMiniEnumSet_set_enums_(other, enums_);
  other->size__ = size__;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:enums_ name:@"enums"]];
  return result;
}

@end
@implementation JavaUtilMiniEnumSet_MiniEnumSetIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (BOOL)hasNext {
  return mask_ != 0;
}

- (id)next {
  if (mask_ == 0) {
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
  int ordinal = [JavaLangLong numberOfTrailingZerosWithLongInt:mask_];
  JavaUtilMiniEnumSet_MiniEnumSetIterator_set_last_(self, [((IOSObjectArray *) nil_chk(this$0_->enums_)) objectAtIndex:ordinal]);
  currentBits_ &= ~mask_;
  mask_ = currentBits_ & -currentBits_;
  return last_;
}

- (void)remove {
  if (last_ == nil) {
    @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
  }
  [this$0_ removeWithId:last_];
  JavaUtilMiniEnumSet_MiniEnumSetIterator_set_last_(self, nil);
}

- (id)initWithJavaUtilMiniEnumSet:(JavaUtilMiniEnumSet *)outer$ {
  if ((self = [super init])) {
    JavaUtilMiniEnumSet_MiniEnumSetIterator_set_this$0_(self, outer$);
    currentBits_ = outer$->bits_;
    mask_ = currentBits_ & -currentBits_;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilMiniEnumSet_MiniEnumSetIterator_set_last_(self, nil);
  JavaUtilMiniEnumSet_MiniEnumSetIterator_set_this$0_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilMiniEnumSet_MiniEnumSetIterator *)other {
  [super copyAllFieldsTo:other];
  other->currentBits_ = currentBits_;
  JavaUtilMiniEnumSet_MiniEnumSetIterator_set_last_(other, last_);
  other->mask_ = mask_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:last_ name:@"last"]];
  return result;
}

@end
