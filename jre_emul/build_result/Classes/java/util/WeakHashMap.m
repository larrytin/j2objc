//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/WeakHashMap.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/ref/Reference.h"
#include "java/lang/ref/ReferenceQueue.h"
#include "java/util/AbstractMap.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/ConcurrentModificationException.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/NoSuchElementException.h"
#include "java/util/Set.h"
#include "java/util/WeakHashMap.h"

@implementation JavaUtilWeakHashMap

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (IOSObjectArray *)newEntryArrayWithInt:(int)size {
  return [IOSObjectArray arrayWithLength:size type:[IOSClass classWithClass:[JavaUtilWeakHashMap_Entry class]]];
}

- (id)init {
  return JreMemDebugAdd([self initJavaUtilWeakHashMapWithInt:JavaUtilWeakHashMap_DEFAULT_SIZE]);
}

- (id)initJavaUtilWeakHashMapWithInt:(int)capacity {
  if (self = [super init]) {
    if (capacity < 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"capacity < 0: %d", capacity]] autorelease];
    }
    elementCount_ = 0;
    JavaUtilWeakHashMap_set_elementData_(self, [JavaUtilWeakHashMap newEntryArrayWithInt:capacity == 0 ? 1 : capacity]);
    loadFactor_ = 7500;
    [self computeMaxSize];
    JavaUtilWeakHashMap_set_referenceQueue_(self, [[[JavaLangRefReferenceQueue alloc] init] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)capacity {
  return [self initJavaUtilWeakHashMapWithInt:capacity];
}

- (id)initWithInt:(int)capacity
        withFloat:(float)loadFactor {
  if (self = [super init]) {
    if (capacity < 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"capacity < 0: %d", capacity]] autorelease];
    }
    if (loadFactor <= 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"loadFactor <= 0: %f", loadFactor]] autorelease];
    }
    elementCount_ = 0;
    JavaUtilWeakHashMap_set_elementData_(self, [JavaUtilWeakHashMap newEntryArrayWithInt:capacity == 0 ? 1 : capacity]);
    self->loadFactor_ = (int) (loadFactor * 10000);
    [self computeMaxSize];
    JavaUtilWeakHashMap_set_referenceQueue_(self, [[[JavaLangRefReferenceQueue alloc] init] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaUtilMap:(id<JavaUtilMap>)map {
  if (self = [self initJavaUtilWeakHashMapWithInt:[((id<JavaUtilMap>) nil_chk(map)) size] < 6 ? 11 : [map size] * 2]) {
    [self putAllImplWithJavaUtilMap:map];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)clear {
  if (elementCount_ > 0) {
    elementCount_ = 0;
    [JavaUtilArrays fillWithNSObjectArray:elementData_ withId:nil];
    modCount_++;
    while ([((JavaLangRefReferenceQueue *) nil_chk(referenceQueue_)) poll] != nil) {
    }
  }
}

- (void)computeMaxSize {
  threshold_ = (int) ((long long int) (int) [((IOSObjectArray *) nil_chk(elementData_)) count] * loadFactor_ / 10000);
}

- (BOOL)containsKeyWithId:(id)key {
  return [self getEntryWithId:key] != nil;
}

- (id<JavaUtilSet>)entrySet {
  [self poll];
  return [[[JavaUtilWeakHashMap_$1 alloc] initWithJavaUtilWeakHashMap:self] autorelease];
}

- (id<JavaUtilSet>)keySet {
  [self poll];
  if (keySet__ == nil) {
    JavaUtilAbstractMap_set_keySet__(self, [[[JavaUtilWeakHashMap_KeySet alloc] initWithJavaUtilWeakHashMap:self] autorelease]);
  }
  return keySet__;
}

- (id<JavaUtilCollection>)values {
  [self poll];
  if (valuesCollection_ == nil) {
    JavaUtilAbstractMap_set_valuesCollection_(self, [[[JavaUtilWeakHashMap_ValuesCollection alloc] initWithJavaUtilWeakHashMap:self] autorelease]);
  }
  return valuesCollection_;
}

- (id)getWithId:(id)key {
  [self poll];
  if (key != nil) {
    int index = ([JavaUtilCollections secondaryHashWithId:key] & (int) 0x7FFFFFFF) % (int) [((IOSObjectArray *) nil_chk(elementData_)) count];
    JavaUtilWeakHashMap_Entry *entry = IOSObjectArray_Get(elementData_, index);
    while (entry != nil) {
      if ([key isEqual:[((JavaUtilWeakHashMap_Entry *) nil_chk(entry)) get]]) {
        return entry->value_;
      }
      entry = entry->next_;
    }
    return nil;
  }
  JavaUtilWeakHashMap_Entry *entry = IOSObjectArray_Get(nil_chk(elementData_), 0);
  while (entry != nil) {
    if (((JavaUtilWeakHashMap_Entry *) nil_chk(entry))->isNull_) {
      return entry->value_;
    }
    entry = entry->next_;
  }
  return nil;
}

- (JavaUtilWeakHashMap_Entry *)getEntryWithId:(id)key {
  [self poll];
  if (key != nil) {
    int index = ([JavaUtilCollections secondaryHashWithId:key] & (int) 0x7FFFFFFF) % (int) [((IOSObjectArray *) nil_chk(elementData_)) count];
    JavaUtilWeakHashMap_Entry *entry = IOSObjectArray_Get(elementData_, index);
    while (entry != nil) {
      if ([key isEqual:[((JavaUtilWeakHashMap_Entry *) nil_chk(entry)) get]]) {
        return entry;
      }
      entry = entry->next_;
    }
    return nil;
  }
  JavaUtilWeakHashMap_Entry *entry = IOSObjectArray_Get(nil_chk(elementData_), 0);
  while (entry != nil) {
    if (((JavaUtilWeakHashMap_Entry *) nil_chk(entry))->isNull_) {
      return entry;
    }
    entry = entry->next_;
  }
  return nil;
}

- (BOOL)containsValueWithId:(id)value {
  [self poll];
  if (value != nil) {
    for (int i = (int) [((IOSObjectArray *) nil_chk(elementData_)) count]; --i >= 0; ) {
      JavaUtilWeakHashMap_Entry *entry = IOSObjectArray_Get(elementData_, i);
      while (entry != nil) {
        id key = [((JavaUtilWeakHashMap_Entry *) nil_chk(entry)) get];
        if ((key != nil || entry->isNull_) && [value isEqual:entry->value_]) {
          return YES;
        }
        entry = entry->next_;
      }
    }
  }
  else {
    for (int i = (int) [((IOSObjectArray *) nil_chk(elementData_)) count]; --i >= 0; ) {
      JavaUtilWeakHashMap_Entry *entry = IOSObjectArray_Get(elementData_, i);
      while (entry != nil) {
        id key = [((JavaUtilWeakHashMap_Entry *) nil_chk(entry)) get];
        if ((key != nil || entry->isNull_) && entry->value_ == nil) {
          return YES;
        }
        entry = entry->next_;
      }
    }
  }
  return NO;
}

- (BOOL)isEmpty {
  return [self size] == 0;
}

- (void)poll {
  JavaUtilWeakHashMap_Entry *toRemove;
  while ((toRemove = (JavaUtilWeakHashMap_Entry *) check_class_cast([((JavaLangRefReferenceQueue *) nil_chk(referenceQueue_)) poll], [JavaUtilWeakHashMap_Entry class])) != nil) {
    [self removeEntryWithJavaUtilWeakHashMap_Entry:toRemove];
  }
}

- (void)removeEntryWithJavaUtilWeakHashMap_Entry:(JavaUtilWeakHashMap_Entry *)toRemove {
  JavaUtilWeakHashMap_Entry *entry, *last = nil;
  int index = (((JavaUtilWeakHashMap_Entry *) nil_chk(toRemove))->hash__ & (int) 0x7FFFFFFF) % (int) [((IOSObjectArray *) nil_chk(elementData_)) count];
  entry = IOSObjectArray_Get(elementData_, index);
  while (entry != nil) {
    if (toRemove == entry) {
      modCount_++;
      if (last == nil) {
        IOSObjectArray_Set(elementData_, index, ((JavaUtilWeakHashMap_Entry *) nil_chk(entry))->next_);
      }
      else {
        JavaUtilWeakHashMap_Entry_set_next_(last, ((JavaUtilWeakHashMap_Entry *) nil_chk(entry))->next_);
      }
      elementCount_--;
      break;
    }
    last = entry;
    entry = ((JavaUtilWeakHashMap_Entry *) nil_chk(entry))->next_;
  }
}

- (id)putWithId:(id)key
         withId:(id)value {
  [self poll];
  int index = 0;
  JavaUtilWeakHashMap_Entry *entry;
  if (key != nil) {
    index = ([JavaUtilCollections secondaryHashWithId:key] & (int) 0x7FFFFFFF) % (int) [((IOSObjectArray *) nil_chk(elementData_)) count];
    entry = IOSObjectArray_Get(elementData_, index);
    while (entry != nil && ![key isEqual:[entry get]]) {
      entry = ((JavaUtilWeakHashMap_Entry *) nil_chk(entry))->next_;
    }
  }
  else {
    entry = IOSObjectArray_Get(nil_chk(elementData_), 0);
    while (entry != nil && !entry->isNull_) {
      entry = ((JavaUtilWeakHashMap_Entry *) nil_chk(entry))->next_;
    }
  }
  if (entry == nil) {
    modCount_++;
    if (++elementCount_ > threshold_) {
      [self rehash];
      index = key == nil ? 0 : ([JavaUtilCollections secondaryHashWithId:key] & (int) 0x7FFFFFFF) % (int) [((IOSObjectArray *) nil_chk(elementData_)) count];
    }
    entry = [[[JavaUtilWeakHashMap_Entry alloc] initWithId:key withId:value withJavaLangRefReferenceQueue:referenceQueue_] autorelease];
    JavaUtilWeakHashMap_Entry_set_next_(entry, IOSObjectArray_Get(nil_chk(elementData_), index));
    IOSObjectArray_Set(elementData_, index, entry);
    return nil;
  }
  id result = ((JavaUtilWeakHashMap_Entry *) nil_chk(entry))->value_;
  JavaUtilWeakHashMap_Entry_set_value_(entry, value);
  return result;
}

- (void)rehash {
  int length = (int) [((IOSObjectArray *) nil_chk(elementData_)) count] * 2;
  if (length == 0) {
    length = 1;
  }
  IOSObjectArray *newData = [JavaUtilWeakHashMap newEntryArrayWithInt:length];
  for (int i = 0; i < (int) [elementData_ count]; i++) {
    JavaUtilWeakHashMap_Entry *entry = IOSObjectArray_Get(elementData_, i);
    while (entry != nil) {
      int index = ((JavaUtilWeakHashMap_Entry *) nil_chk(entry))->isNull_ ? 0 : (entry->hash__ & (int) 0x7FFFFFFF) % length;
      JavaUtilWeakHashMap_Entry *next = entry->next_;
      JavaUtilWeakHashMap_Entry_set_next_(entry, IOSObjectArray_Get(nil_chk(newData), index));
      IOSObjectArray_Set(newData, index, entry);
      entry = next;
    }
  }
  JavaUtilWeakHashMap_set_elementData_(self, newData);
  [self computeMaxSize];
}

- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map {
  [self putAllImplWithJavaUtilMap:map];
}

- (id)removeWithId:(id)key {
  [self poll];
  int index = 0;
  JavaUtilWeakHashMap_Entry *entry, *last = nil;
  if (key != nil) {
    index = ([JavaUtilCollections secondaryHashWithId:key] & (int) 0x7FFFFFFF) % (int) [((IOSObjectArray *) nil_chk(elementData_)) count];
    entry = IOSObjectArray_Get(elementData_, index);
    while (entry != nil && ![key isEqual:[entry get]]) {
      last = entry;
      entry = ((JavaUtilWeakHashMap_Entry *) nil_chk(entry))->next_;
    }
  }
  else {
    entry = IOSObjectArray_Get(nil_chk(elementData_), 0);
    while (entry != nil && !entry->isNull_) {
      last = entry;
      entry = ((JavaUtilWeakHashMap_Entry *) nil_chk(entry))->next_;
    }
  }
  if (entry != nil) {
    modCount_++;
    if (last == nil) {
      IOSObjectArray_Set(nil_chk(elementData_), index, entry->next_);
    }
    else {
      JavaUtilWeakHashMap_Entry_set_next_(last, entry->next_);
    }
    elementCount_--;
    return entry->value_;
  }
  return nil;
}

- (int)size {
  [self poll];
  return elementCount_;
}

- (void)putAllImplWithJavaUtilMap:(id<JavaUtilMap>)map {
  if ([((id<JavaUtilMap>) nil_chk(map)) entrySet] != nil) {
    [super putAllWithJavaUtilMap:map];
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilWeakHashMap_set_elementData_(self, nil);
  JavaUtilWeakHashMap_set_referenceQueue_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilWeakHashMap *)other {
  [super copyAllFieldsTo:other];
  other->elementCount_ = elementCount_;
  JavaUtilWeakHashMap_set_elementData_(other, elementData_);
  other->loadFactor_ = loadFactor_;
  other->modCount_ = modCount_;
  JavaUtilWeakHashMap_set_referenceQueue_(other, referenceQueue_);
  other->threshold_ = threshold_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:referenceQueue_ name:@"referenceQueue"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:elementData_ name:@"elementData"]];
  return result;
}

@end
@implementation JavaUtilWeakHashMap_Entry

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithId:(id)key
          withId:(id)object
withJavaLangRefReferenceQueue:(JavaLangRefReferenceQueue *)queue {
  if (self = [super initWithId:key withJavaLangRefReferenceQueue:queue]) {
    isNull_ = key == nil;
    hash__ = isNull_ ? 0 : [JavaUtilCollections secondaryHashWithId:key];
    JavaUtilWeakHashMap_Entry_set_value_(self, object);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)getKey {
  return [super get];
}

- (id)getValue {
  return value_;
}

- (id)setValueWithId:(id)object {
  id result = value_;
  JavaUtilWeakHashMap_Entry_set_value_(self, object);
  return result;
}

- (BOOL)isEqual:(id)other {
  if (!([other conformsToProtocol: @protocol(JavaUtilMap_Entry)])) {
    return NO;
  }
  id<JavaUtilMap_Entry> entry = (id<JavaUtilMap_Entry>) check_protocol_cast(other, @protocol(JavaUtilMap_Entry));
  id key = [super get];
  return (key == nil ? key == [((id<JavaUtilMap_Entry>) nil_chk(entry)) getKey] : [key isEqual:[((id<JavaUtilMap_Entry>) nil_chk(entry)) getKey]]) && (value_ == nil ? value_ == [entry getValue] : [value_ isEqual:[entry getValue]]);
}

- (NSUInteger)hash {
  return hash__ + (value_ == nil ? 0 : [value_ hash]);
}

- (NSString *)description {
  return [NSString stringWithFormat:@"%@=%@", [super get], value_];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilWeakHashMap_Entry_set_next_(self, nil);
  JavaUtilWeakHashMap_Entry_set_value_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilWeakHashMap_Entry *)other {
  [super copyAllFieldsTo:other];
  other->hash__ = hash__;
  other->isNull_ = isNull_;
  JavaUtilWeakHashMap_Entry_set_next_(other, next_);
  JavaUtilWeakHashMap_Entry_set_value_(other, value_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:value_ name:@"value"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:next_ name:@"next"]];
  return result;
}

@end
@implementation JavaUtilWeakHashMap_HashIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaUtilWeakHashMap:(JavaUtilWeakHashMap *)outer$
withJavaUtilWeakHashMap_Entry_Type:(id<JavaUtilWeakHashMap_Entry_Type>)type {
  JavaUtilWeakHashMap_HashIterator_set_this$0_(self, outer$);
  if (self = [super init]) {
    position_ = 0;
    JavaUtilWeakHashMap_HashIterator_set_type_(self, type);
    expectedModCount_ = outer$->modCount_;
    JreMemDebugAdd(self);
  }
  return self;
}

- (BOOL)hasNext {
  if (nextEntry_ != nil && (nextKey_ != nil || nextEntry_->isNull_)) {
    return YES;
  }
  while (YES) {
    if (nextEntry_ == nil) {
      while (position_ < (int) [((IOSObjectArray *) nil_chk(this$0_->elementData_)) count]) {
        if ((JavaUtilWeakHashMap_HashIterator_set_nextEntry_(self, IOSObjectArray_Get(this$0_->elementData_, position_++))) != nil) {
          break;
        }
      }
      if (nextEntry_ == nil) {
        return NO;
      }
    }
    JavaUtilWeakHashMap_HashIterator_set_nextKey_(self, [((JavaUtilWeakHashMap_Entry *) nil_chk(nextEntry_)) get]);
    if (nextKey_ != nil || nextEntry_->isNull_) {
      return YES;
    }
    JavaUtilWeakHashMap_HashIterator_set_nextEntry_(self, nextEntry_->next_);
  }
}

- (id)next {
  if (expectedModCount_ == this$0_->modCount_) {
    if ([self hasNext]) {
      JavaUtilWeakHashMap_HashIterator_set_currentEntry_(self, nextEntry_);
      JavaUtilWeakHashMap_HashIterator_set_nextEntry_(self, ((JavaUtilWeakHashMap_Entry *) nil_chk(currentEntry_))->next_);
      id result = [((id<JavaUtilWeakHashMap_Entry_Type>) nil_chk(type_)) getWithJavaUtilMap_Entry:currentEntry_];
      JavaUtilWeakHashMap_HashIterator_set_nextKey_(self, nil);
      return result;
    }
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (void)remove {
  if (expectedModCount_ == this$0_->modCount_) {
    if (currentEntry_ != nil) {
      [this$0_ removeEntryWithJavaUtilWeakHashMap_Entry:currentEntry_];
      JavaUtilWeakHashMap_HashIterator_set_currentEntry_(self, nil);
      expectedModCount_++;
    }
    else {
      @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
    }
  }
  else {
    @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilWeakHashMap_HashIterator_set_type_(self, nil);
  JavaUtilWeakHashMap_HashIterator_set_nextKey_(self, nil);
  JavaUtilWeakHashMap_HashIterator_set_nextEntry_(self, nil);
  JavaUtilWeakHashMap_HashIterator_set_currentEntry_(self, nil);
  JavaUtilWeakHashMap_HashIterator_set_this$0_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilWeakHashMap_HashIterator *)other {
  [super copyAllFieldsTo:other];
  JavaUtilWeakHashMap_HashIterator_set_currentEntry_(other, currentEntry_);
  other->expectedModCount_ = expectedModCount_;
  JavaUtilWeakHashMap_HashIterator_set_nextEntry_(other, nextEntry_);
  JavaUtilWeakHashMap_HashIterator_set_nextKey_(other, nextKey_);
  other->position_ = position_;
  JavaUtilWeakHashMap_HashIterator_set_type_(other, type_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:currentEntry_ name:@"currentEntry"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:nextEntry_ name:@"nextEntry"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:nextKey_ name:@"nextKey"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:type_ name:@"type"]];
  return result;
}

@end
@implementation JavaUtilWeakHashMap_KeySet

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (BOOL)containsWithId:(id)object {
  return [this$0_ containsKeyWithId:object];
}

- (int)size {
  return [this$0_ size];
}

- (void)clear {
  [this$0_ clear];
}

- (BOOL)removeWithId:(id)key {
  if ([this$0_ containsKeyWithId:key]) {
    [this$0_ removeWithId:key];
    return YES;
  }
  return NO;
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilWeakHashMap_HashIterator alloc] initWithJavaUtilWeakHashMap:this$0_ withJavaUtilWeakHashMap_Entry_Type:[[[JavaUtilWeakHashMap_KeySet_$1 alloc] init] autorelease]] autorelease];
}

- (id)initWithJavaUtilWeakHashMap:(JavaUtilWeakHashMap *)outer$ {
  this$0_ = outer$;
  return JreMemDebugAdd([super init]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
@implementation JavaUtilWeakHashMap_KeySet_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)getWithJavaUtilMap_Entry:(id<JavaUtilMap_Entry>)entry {
  return [((id<JavaUtilMap_Entry>) nil_chk(entry)) getKey];
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

@end
@implementation JavaUtilWeakHashMap_ValuesCollection

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (int)size {
  return [this$0_ size];
}

- (void)clear {
  [this$0_ clear];
}

- (BOOL)containsWithId:(id)object {
  return [this$0_ containsValueWithId:object];
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilWeakHashMap_HashIterator alloc] initWithJavaUtilWeakHashMap:this$0_ withJavaUtilWeakHashMap_Entry_Type:[[[JavaUtilWeakHashMap_ValuesCollection_$1 alloc] init] autorelease]] autorelease];
}

- (id)initWithJavaUtilWeakHashMap:(JavaUtilWeakHashMap *)outer$ {
  this$0_ = outer$;
  return JreMemDebugAdd([super init]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
@implementation JavaUtilWeakHashMap_ValuesCollection_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)getWithJavaUtilMap_Entry:(id<JavaUtilMap_Entry>)entry {
  return [((id<JavaUtilMap_Entry>) nil_chk(entry)) getValue];
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

@end
@implementation JavaUtilWeakHashMap_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (int)size {
  return [this$0_ size];
}

- (void)clear {
  [this$0_ clear];
}

- (BOOL)removeWithId:(id)object {
  if ([self containsWithId:object]) {
    [this$0_ removeWithId:[((id<JavaUtilMap_Entry>) nil_chk(object)) getKey]];
    return YES;
  }
  return NO;
}

- (BOOL)containsWithId:(id)object {
  if ([object conformsToProtocol: @protocol(JavaUtilMap_Entry)]) {
    JavaUtilWeakHashMap_Entry *entry = [this$0_ getEntryWithId:[((id<JavaUtilMap_Entry>) nil_chk(object)) getKey]];
    if (entry != nil) {
      id key = [entry get];
      if (key != nil || entry->isNull_) {
        return [nil_chk(object) isEqual:entry];
      }
    }
  }
  return NO;
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilWeakHashMap_HashIterator alloc] initWithJavaUtilWeakHashMap:this$0_ withJavaUtilWeakHashMap_Entry_Type:[[[JavaUtilWeakHashMap_$1_$1 alloc] init] autorelease]] autorelease];
}

- (id)initWithJavaUtilWeakHashMap:(JavaUtilWeakHashMap *)outer$ {
  JavaUtilWeakHashMap_$1_set_this$0_(self, outer$);
  return JreMemDebugAdd([super init]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilWeakHashMap_$1_set_this$0_(self, nil);
  [super dealloc];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  return result;
}

@end
@implementation JavaUtilWeakHashMap_$1_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id<JavaUtilMap_Entry>)getWithJavaUtilMap_Entry:(id<JavaUtilMap_Entry>)entry {
  return entry;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

@end
