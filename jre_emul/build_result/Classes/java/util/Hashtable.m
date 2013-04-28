//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/Hashtable.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "java/lang/CloneNotSupportedException.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IllegalStateException.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/StringBuilder.h"
#import "java/lang/UnsupportedOperationException.h"
#import "java/util/Arrays.h"
#import "java/util/Collection.h"
#import "java/util/Collections.h"
#import "java/util/ConcurrentModificationException.h"
#import "java/util/Enumeration.h"
#import "java/util/Hashtable.h"
#import "java/util/Iterator.h"
#import "java/util/Map.h"
#import "java/util/MapEntry.h"
#import "java/util/NoSuchElementException.h"
#import "java/util/Set.h"

@implementation JavaUtilHashtable

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaUtilHashtable_EMPTY_ENUMERATION_ name:@"JavaUtilHashtable_EMPTY_ENUMERATION_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaUtilHashtable_EMPTY_ITERATOR_ name:@"JavaUtilHashtable_EMPTY_ITERATOR_"]];
  return result;
}

static id<JavaUtilEnumeration> JavaUtilHashtable_EMPTY_ENUMERATION_;
static id<JavaUtilIterator> JavaUtilHashtable_EMPTY_ITERATOR_;

@synthesize elementCount = elementCount_;
- (IOSObjectArray *)elementData {
  return elementData_;
}
- (void)setElementData:(IOSObjectArray *)elementData {
  JreOperatorRetainedAssign(&elementData_, elementData);
}
@synthesize elementData = elementData_;
@synthesize loadFactor = loadFactor_;
@synthesize threshold = threshold_;
@synthesize firstSlot = firstSlot_;
@synthesize lastSlot = lastSlot_;
@synthesize modCount = modCount_;

+ (id<JavaUtilEnumeration>)EMPTY_ENUMERATION {
  return JavaUtilHashtable_EMPTY_ENUMERATION_;
}

+ (id<JavaUtilIterator>)EMPTY_ITERATOR {
  return JavaUtilHashtable_EMPTY_ITERATOR_;
}

+ (JavaUtilHashtable_Entry *)newEntryWithId:(id)key
                                     withId:(id)value
                                    withInt:(int)hash_ OBJC_METHOD_FAMILY_NONE {
  return [[[JavaUtilHashtable_Entry alloc] initWithId:key withId:value] autorelease];
}

- (id)init {
  return JreMemDebugAdd([self initJavaUtilHashtableWithInt:11]);
}

- (id)initJavaUtilHashtableWithInt:(int)capacity {
  if ((self = [super init])) {
    lastSlot_ = -1;
    if (capacity >= 0) {
      elementCount_ = 0;
      JreOperatorRetainedAssign(&elementData_, [self newElementArrayWithInt:capacity == 0 ? 1 : capacity]);
      firstSlot_ = (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count];
      loadFactor_ = 0.75f;
      [self computeMaxSize];
    }
    else {
      @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)capacity {
  return [self initJavaUtilHashtableWithInt:capacity];
}

- (id)initWithInt:(int)capacity
        withFloat:(float)loadFactor {
  if ((self = [super init])) {
    lastSlot_ = -1;
    if (capacity >= 0 && loadFactor > 0) {
      elementCount_ = 0;
      firstSlot_ = capacity;
      JreOperatorRetainedAssign(&elementData_, [self newElementArrayWithInt:capacity == 0 ? 1 : capacity]);
      self.loadFactor = loadFactor;
      [self computeMaxSize];
    }
    else {
      @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaUtilMap:(id<JavaUtilMap>)map {
  if ((self = [self initJavaUtilHashtableWithInt:[((id<JavaUtilMap>) NIL_CHK(map)) size] < 6 ? 11 : ([((id<JavaUtilMap>) NIL_CHK(map)) size] * 4 / 3) + 11])) {
    [self putAllWithJavaUtilMap:map];
    JreMemDebugAdd(self);
  }
  return self;
}

- (IOSObjectArray *)newElementArrayWithInt:(int)size OBJC_METHOD_FAMILY_NONE {
  return [[[IOSObjectArray alloc] initWithLength:size type:[IOSClass classWithClass:[JavaUtilHashtable_Entry class]]] autorelease];
}

- (void)clear {
  @synchronized(self) {
    {
      elementCount_ = 0;
      [JavaUtilArrays fillWithNSObjectArray:elementData_ withId:nil];
      modCount_++;
    }
  }
}

- (id)clone {
  @synchronized(self) {
    {
      @try {
        JavaUtilHashtable *hashtable = (JavaUtilHashtable *) [super clone];
        ((JavaUtilHashtable *) NIL_CHK(hashtable)).elementData = [[[IOSObjectArray alloc] initWithLength:(int) [((IOSObjectArray *) NIL_CHK(elementData_)) count] type:[IOSClass classWithClass:[JavaUtilHashtable_Entry class]]] autorelease];
        JavaUtilHashtable_Entry *entry;
        for (int i = (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count]; --i >= 0; ) {
          if ((entry = ((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:i])) != nil) {
            [((IOSObjectArray *) NIL_CHK(hashtable.elementData)) replaceObjectAtIndex:i withObject:(JavaUtilHashtable_Entry *) [((JavaUtilHashtable_Entry *) NIL_CHK(entry)) clone]];
          }
        }
        return hashtable;
      }
      @catch (JavaLangCloneNotSupportedException *e) {
        return nil;
      }
    }
  }
}

- (void)computeMaxSize {
  threshold_ = (int) ((int) [((IOSObjectArray *) NIL_CHK(elementData_)) count] * loadFactor_);
}

- (BOOL)containsWithId:(id)value {
  @synchronized(self) {
    {
      if (value == nil) {
        @throw [[[JavaLangNullPointerException alloc] init] autorelease];
      }
      for (int i = (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count]; --i >= 0; ) {
        JavaUtilHashtable_Entry *entry = ((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:i]);
        while (entry != nil) {
          if ([NIL_CHK(entry.value) isEqual:value]) {
            return YES;
          }
          entry = ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next;
        }
      }
      return NO;
    }
  }
}

- (BOOL)containsKeyWithId:(id)key {
  @synchronized(self) {
    {
      return [self getEntryWithId:key] != nil;
    }
  }
}

- (BOOL)containsValueWithId:(id)value {
  return [self containsWithId:value];
}

- (id<JavaUtilEnumeration>)elements {
  @synchronized(self) {
    {
      if (elementCount_ == 0) {
        return (id<JavaUtilEnumeration>) JavaUtilHashtable_EMPTY_ENUMERATION_;
      }
      return [[[JavaUtilHashtable_HashEnumIterator alloc] initWithJavaUtilHashtable:self withJavaUtilMapEntry_Type:[[[JavaUtilHashtable_$3 alloc] init] autorelease] withBOOL:YES] autorelease];
    }
  }
}

- (id<JavaUtilSet>)entrySet {
  return [[[JavaUtilCollections_SynchronizedSet alloc] initWithJavaUtilSet:[[[JavaUtilHashtable_$4 alloc] initWithJavaUtilHashtable:self] autorelease] withId:self] autorelease];
}

- (BOOL)isEqual:(id)object {
  @synchronized(self) {
    {
      if (self == object) {
        return YES;
      }
      if ([object conformsToProtocol: @protocol(JavaUtilMap)]) {
        id<JavaUtilMap> map = (id<JavaUtilMap>) object;
        if ([self size] != [((id<JavaUtilMap>) NIL_CHK(map)) size]) {
          return NO;
        }
        id<JavaUtilSet> entries = [self entrySet];
        {
          id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilSet>) [((id<JavaUtilMap>) NIL_CHK(map)) entrySet]) iterator]);
          while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
            id<JavaUtilMap_Entry> e = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
            if (![((id<JavaUtilSet>) NIL_CHK(entries)) containsWithId:e]) {
              return NO;
            }
          }
        }
        return YES;
      }
      return NO;
    }
  }
}

- (id)getWithId:(id)key {
  @synchronized(self) {
    {
      int hash_ = [NIL_CHK(key) hash];
      int index = (hash_ & (int) 0x7FFFFFFF) % (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count];
      JavaUtilHashtable_Entry *entry = ((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:index]);
      while (entry != nil) {
        if ([((JavaUtilHashtable_Entry *) NIL_CHK(entry)) equalsKeyWithId:key withInt:hash_]) {
          return ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).value;
        }
        entry = ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next;
      }
      return nil;
    }
  }
}

- (JavaUtilHashtable_Entry *)getEntryWithId:(id)key {
  int hash_ = [NIL_CHK(key) hash];
  int index = (hash_ & (int) 0x7FFFFFFF) % (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count];
  JavaUtilHashtable_Entry *entry = ((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:index]);
  while (entry != nil) {
    if ([((JavaUtilHashtable_Entry *) NIL_CHK(entry)) equalsKeyWithId:key withInt:hash_]) {
      return entry;
    }
    entry = ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next;
  }
  return nil;
}

- (NSUInteger)hash {
  @synchronized(self) {
    {
      int result = 0;
      id<JavaUtilIterator> it = ((id<JavaUtilIterator>) [[self entrySet] iterator]);
      while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
        id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(it)) next]);
        id key = [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey];
        if (key == self) {
          continue;
        }
        id value = [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue];
        if (value == self) {
          continue;
        }
        int hash_ = (key != nil ? [NIL_CHK(key) hash] : 0) ^ (value != nil ? [NIL_CHK(value) hash] : 0);
        result += hash_;
      }
      return result;
    }
  }
}

- (BOOL)isEmpty {
  @synchronized(self) {
    {
      return elementCount_ == 0;
    }
  }
}

- (id<JavaUtilEnumeration>)keys {
  @synchronized(self) {
    {
      if (elementCount_ == 0) {
        return (id<JavaUtilEnumeration>) JavaUtilHashtable_EMPTY_ENUMERATION_;
      }
      return [[[JavaUtilHashtable_HashEnumIterator alloc] initWithJavaUtilHashtable:self withJavaUtilMapEntry_Type:[[[JavaUtilHashtable_$5 alloc] init] autorelease] withBOOL:YES] autorelease];
    }
  }
}

- (id<JavaUtilSet>)keySet {
  return [[[JavaUtilCollections_SynchronizedSet alloc] initWithJavaUtilSet:[[[JavaUtilHashtable_$6 alloc] initWithJavaUtilHashtable:self] autorelease] withId:self] autorelease];
}

- (id)putWithId:(id)key
         withId:(id)value {
  @synchronized(self) {
    {
      if (key != nil && value != nil) {
        int hash_ = [NIL_CHK(key) hash];
        int index = (hash_ & (int) 0x7FFFFFFF) % (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count];
        JavaUtilHashtable_Entry *entry = ((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:index]);
        while (entry != nil && ![((JavaUtilHashtable_Entry *) NIL_CHK(entry)) equalsKeyWithId:key withInt:hash_]) {
          entry = ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next;
        }
        if (entry == nil) {
          modCount_++;
          if (++elementCount_ > threshold_) {
            [self rehash];
            index = (hash_ & (int) 0x7FFFFFFF) % (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count];
          }
          if (index < firstSlot_) {
            firstSlot_ = index;
          }
          if (index > lastSlot_) {
            lastSlot_ = index;
          }
          entry = ((JavaUtilHashtable_Entry *) [JavaUtilHashtable newEntryWithId:key withId:value withInt:hash_]);
          entry.next = ((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:index]);
          [((IOSObjectArray *) NIL_CHK(elementData_)) replaceObjectAtIndex:index withObject:entry];
          return nil;
        }
        id result = ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).value;
        ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).value = value;
        return result;
      }
      @throw [[[JavaLangNullPointerException alloc] init] autorelease];
    }
  }
}

- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map {
  @synchronized(self) {
    {
      {
        id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilSet>) [((id<JavaUtilMap>) NIL_CHK(map)) entrySet]) iterator]);
        while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
          id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
          [self putWithId:((id) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey]) withId:((id) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue])];
        }
      }
    }
  }
}

- (void)rehash {
  int length = ((int) [((IOSObjectArray *) NIL_CHK(elementData_)) count] << 1) + 1;
  if (length == 0) {
    length = 1;
  }
  int newFirst = length;
  int newLast = -1;
  IOSObjectArray *newData = [self newElementArrayWithInt:length];
  for (int i = lastSlot_ + 1; --i >= firstSlot_; ) {
    JavaUtilHashtable_Entry *entry = ((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:i]);
    while (entry != nil) {
      int index = ([((JavaUtilHashtable_Entry *) NIL_CHK(entry)) getKeyHash] & (int) 0x7FFFFFFF) % length;
      if (index < newFirst) {
        newFirst = index;
      }
      if (index > newLast) {
        newLast = index;
      }
      JavaUtilHashtable_Entry *next = ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next;
      ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next = ((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(newData)) objectAtIndex:index]);
      [((IOSObjectArray *) NIL_CHK(newData)) replaceObjectAtIndex:index withObject:entry];
      entry = next;
    }
  }
  firstSlot_ = newFirst;
  lastSlot_ = newLast;
  JreOperatorRetainedAssign(&elementData_, newData);
  [self computeMaxSize];
}

- (id)removeWithId:(id)key {
  @synchronized(self) {
    {
      int hash_ = [NIL_CHK(key) hash];
      int index = (hash_ & (int) 0x7FFFFFFF) % (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count];
      JavaUtilHashtable_Entry *last = nil;
      JavaUtilHashtable_Entry *entry = ((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:index]);
      while (entry != nil && ![((JavaUtilHashtable_Entry *) NIL_CHK(entry)) equalsKeyWithId:key withInt:hash_]) {
        last = entry;
        entry = ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next;
      }
      if (entry != nil) {
        modCount_++;
        if (last == nil) {
          [((IOSObjectArray *) NIL_CHK(elementData_)) replaceObjectAtIndex:index withObject:((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next];
        }
        else {
          last.next = ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next;
        }
        elementCount_--;
        id result = entry.value;
        entry.value = nil;
        return result;
      }
      return nil;
    }
  }
}

- (int)size {
  @synchronized(self) {
    {
      return elementCount_;
    }
  }
}

- (NSString *)description {
  @synchronized(self) {
    {
      if ([self isEmpty]) {
        return @"{}";
      }
      JavaLangStringBuilder *buffer = [[[JavaLangStringBuilder alloc] initWithInt:[self size] * 28] autorelease];
      [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithUnichar:'{'];
      for (int i = lastSlot_; i >= firstSlot_; i--) {
        JavaUtilHashtable_Entry *entry = ((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:i]);
        while (entry != nil) {
          if (((JavaUtilHashtable_Entry *) NIL_CHK(entry)).key != self) {
            [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithId:((JavaUtilHashtable_Entry *) NIL_CHK(entry)).key];
          }
          else {
            [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@"(this Map)"];
          }
          [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithUnichar:'='];
          if (((JavaUtilHashtable_Entry *) NIL_CHK(entry)).value != self) {
            [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithId:((JavaUtilHashtable_Entry *) NIL_CHK(entry)).value];
          }
          else {
            [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@"(this Map)"];
          }
          [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@", "];
          entry = ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next;
        }
      }
      if (elementCount_ > 0) {
        [((JavaLangStringBuilder *) NIL_CHK(buffer)) setLengthWithInt:[((JavaLangStringBuilder *) NIL_CHK(buffer)) sequenceLength] - 2];
      }
      [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithUnichar:'}'];
      return [((JavaLangStringBuilder *) NIL_CHK(buffer)) description];
    }
  }
}

- (id<JavaUtilCollection>)values {
  return [[[JavaUtilCollections_SynchronizedCollection alloc] initWithJavaUtilCollection:[[[JavaUtilHashtable_$7 alloc] initWithJavaUtilHashtable:self] autorelease] withId:self] autorelease];
}

+ (void)initialize {
  if (self == [JavaUtilHashtable class]) {
    JreOperatorRetainedAssign(&JavaUtilHashtable_EMPTY_ENUMERATION_, [[[JavaUtilHashtable_$1 alloc] init] autorelease]);
    JreOperatorRetainedAssign(&JavaUtilHashtable_EMPTY_ITERATOR_, [[[JavaUtilHashtable_$2 alloc] init] autorelease]);
  }
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&elementData_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilHashtable *typedCopy = (JavaUtilHashtable *) copy;
  typedCopy.elementCount = elementCount_;
  typedCopy.elementData = elementData_;
  typedCopy.loadFactor = loadFactor_;
  typedCopy.threshold = threshold_;
  typedCopy.firstSlot = firstSlot_;
  typedCopy.lastSlot = lastSlot_;
  typedCopy.modCount = modCount_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:elementData_ name:@"elementData"]];
  return result;
}

@end
@implementation JavaUtilHashtable_Entry

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilHashtable_Entry *)next {
  return next_;
}
- (void)setNext:(JavaUtilHashtable_Entry *)next {
  JreOperatorRetainedAssign(&next_, next);
}
@synthesize next = next_;
@synthesize hashcode = hashcode_;

- (id)initWithId:(id)theKey
          withId:(id)theValue {
  if ((self = [super initWithId:theKey withId:theValue])) {
    hashcode_ = [NIL_CHK(theKey) hash];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)clone {
  JavaUtilHashtable_Entry *entry = (JavaUtilHashtable_Entry *) [super clone];
  if (next_ != nil) {
    ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next = (JavaUtilHashtable_Entry *) [next_ clone];
  }
  return entry;
}

- (id)setValueWithId:(id)object {
  if (object == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  id result = value_;
  JreOperatorRetainedAssign(&value_, object);
  return result;
}

- (int)getKeyHash {
  return [NIL_CHK(key_) hash];
}

- (BOOL)equalsKeyWithId:(id)aKey
                withInt:(int)hash_ {
  return hashcode_ == hash_ && [NIL_CHK(key_) isEqual:aKey];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"%@=%@", key_, value_];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&next_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilHashtable_Entry *typedCopy = (JavaUtilHashtable_Entry *) copy;
  typedCopy.next = next_;
  typedCopy.hashcode = hashcode_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:next_ name:@"next"]];
  return result;
}

@end
@implementation JavaUtilHashtable_HashIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilHashtable *)this$0 {
  return this$0_;
}
- (void)setThis$0:(JavaUtilHashtable *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;
@synthesize position = position_;
@synthesize expectedModCount = expectedModCount_;
- (id<JavaUtilMapEntry_Type>)type {
  return type_;
}
- (void)setType:(id<JavaUtilMapEntry_Type>)type {
  JreOperatorRetainedAssign(&type_, type);
}
@synthesize type = type_;
- (JavaUtilHashtable_Entry *)lastEntry {
  return lastEntry_;
}
- (void)setLastEntry:(JavaUtilHashtable_Entry *)lastEntry {
  JreOperatorRetainedAssign(&lastEntry_, lastEntry);
}
@synthesize lastEntry = lastEntry_;
@synthesize lastPosition = lastPosition_;
@synthesize canRemove = canRemove_;

- (id)initWithJavaUtilHashtable:(JavaUtilHashtable *)outer$
      withJavaUtilMapEntry_Type:(id<JavaUtilMapEntry_Type>)value {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$);
    canRemove_ = NO;
    JreOperatorRetainedAssign(&type_, value);
    position_ = outer$.lastSlot;
    expectedModCount_ = outer$.modCount;
    JreMemDebugAdd(self);
  }
  return self;
}

- (BOOL)hasNext {
  if (lastEntry_ != nil && ((JavaUtilHashtable_Entry *) NIL_CHK(lastEntry_)).next != nil) {
    return YES;
  }
  while (position_ >= this$0_.firstSlot) {
    if (((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(this$0_.elementData)) objectAtIndex:position_]) == nil) {
      position_--;
    }
    else {
      return YES;
    }
  }
  return NO;
}

- (id)next {
  if (expectedModCount_ == this$0_.modCount) {
    if (lastEntry_ != nil) {
      JreOperatorRetainedAssign(&lastEntry_, lastEntry_.next);
    }
    if (lastEntry_ == nil) {
      while (position_ >= this$0_.firstSlot && (JreOperatorRetainedAssign(&lastEntry_, ((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(this$0_.elementData)) objectAtIndex:position_]))) == nil) {
        position_--;
      }
      if (lastEntry_ != nil) {
        lastPosition_ = position_;
        position_--;
      }
    }
    if (lastEntry_ != nil) {
      canRemove_ = YES;
      return [((id<JavaUtilMapEntry_Type>) NIL_CHK(type_)) getWithJavaUtilMapEntry:lastEntry_];
    }
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (void)remove {
  if (expectedModCount_ == this$0_.modCount) {
    if (canRemove_) {
      canRemove_ = NO;
      @synchronized (this$0_) {
        BOOL removed = NO;
        JavaUtilHashtable_Entry *entry = ((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(this$0_.elementData)) objectAtIndex:lastPosition_]);
        if (entry == lastEntry_) {
          [((IOSObjectArray *) NIL_CHK(this$0_.elementData)) replaceObjectAtIndex:lastPosition_ withObject:((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next];
          removed = YES;
        }
        else {
          while (entry != nil && ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next != lastEntry_) {
            entry = ((JavaUtilHashtable_Entry *) NIL_CHK(entry)).next;
          }
          if (entry != nil) {
            entry.next = ((JavaUtilHashtable_Entry *) NIL_CHK(lastEntry_)).next;
            removed = YES;
          }
        }
        if (removed) {
          this$0_.modCount++;
          this$0_.elementCount--;
          expectedModCount_++;
          return;
        }
      }
    }
    else {
      @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
    }
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&lastEntry_, nil);
  JreOperatorRetainedAssign(&type_, nil);
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilHashtable_HashIterator *typedCopy = (JavaUtilHashtable_HashIterator *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.position = position_;
  typedCopy.expectedModCount = expectedModCount_;
  typedCopy.type = type_;
  typedCopy.lastEntry = lastEntry_;
  typedCopy.lastPosition = lastPosition_;
  typedCopy.canRemove = canRemove_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:type_ name:@"type"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:lastEntry_ name:@"lastEntry"]];
  return result;
}

@end
@implementation JavaUtilHashtable_HashEnumIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilHashtable *)this$1 {
  return this$1_;
}
- (void)setThis$1:(JavaUtilHashtable *)this$1 {
  JreOperatorRetainedAssign(&this$1_, this$1);
}
@synthesize this$1 = this$1_;
@synthesize isEnumeration = isEnumeration_;
@synthesize start = start_;
- (JavaUtilHashtable_Entry *)entry {
  return entry_;
}
- (void)setEntry:(JavaUtilHashtable_Entry *)entry {
  JreOperatorRetainedAssign(&entry_, entry);
}
@synthesize entry = entry_;

- (id)initWithJavaUtilHashtable:(JavaUtilHashtable *)outer$
      withJavaUtilMapEntry_Type:(id<JavaUtilMapEntry_Type>)value {
  if ((self = [super initWithJavaUtilHashtable:outer$ withJavaUtilMapEntry_Type:value])) {
    JreOperatorRetainedAssign(&this$1_, outer$);
    isEnumeration_ = NO;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaUtilHashtable:(JavaUtilHashtable *)outer$
      withJavaUtilMapEntry_Type:(id<JavaUtilMapEntry_Type>)value
                       withBOOL:(BOOL)isEnumeration {
  if ((self = [super initWithJavaUtilHashtable:outer$ withJavaUtilMapEntry_Type:value])) {
    JreOperatorRetainedAssign(&this$1_, outer$);
    isEnumeration_ = NO;
    self.isEnumeration = isEnumeration;
    start_ = outer$.lastSlot + 1;
    JreMemDebugAdd(self);
  }
  return self;
}

- (BOOL)hasMoreElements {
  if (isEnumeration_) {
    if (entry_ != nil) {
      return YES;
    }
    while (start_ > this$1_.firstSlot) {
      if (((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(this$1_.elementData)) objectAtIndex:--start_]) != nil) {
        JreOperatorRetainedAssign(&entry_, ((JavaUtilHashtable_Entry *) [((IOSObjectArray *) NIL_CHK(this$1_.elementData)) objectAtIndex:start_]));
        return YES;
      }
    }
    return NO;
  }
  return (BOOL) [super hasNext];
}

- (BOOL)hasNext {
  if (isEnumeration_) {
    return [self hasMoreElements];
  }
  return (BOOL) [super hasNext];
}

- (id)next {
  if (isEnumeration_) {
    if (expectedModCount_ == this$1_.modCount) {
      return [self nextElement];
    }
    else {
      @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
    }
  }
  return (id) [super next];
}

- (id)nextElement {
  if (isEnumeration_) {
    if ([self hasMoreElements]) {
      id result = [((id<JavaUtilMapEntry_Type>) NIL_CHK(type_)) getWithJavaUtilMapEntry:entry_];
      JreOperatorRetainedAssign(&entry_, ((JavaUtilHashtable_Entry *) NIL_CHK(entry_)).next);
      return (id) result;
    }
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
  return (id) [super next];
}

- (void)remove {
  if (isEnumeration_) {
    @throw [[[JavaLangUnsupportedOperationException alloc] init] autorelease];
  }
  else {
    [super remove];
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&entry_, nil);
  JreOperatorRetainedAssign(&this$1_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilHashtable_HashEnumIterator *typedCopy = (JavaUtilHashtable_HashEnumIterator *) copy;
  typedCopy.this$1 = this$1_;
  typedCopy.isEnumeration = isEnumeration_;
  typedCopy.start = start_;
  typedCopy.entry = entry_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$1_ name:@"this$1"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:entry_ name:@"entry"]];
  return result;
}

@end
@implementation JavaUtilHashtable_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (BOOL)hasMoreElements {
  return NO;
}

- (id)nextElement {
  @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
@implementation JavaUtilHashtable_$2

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (BOOL)hasNext {
  return NO;
}

- (id)next {
  @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
}

- (void)remove {
  @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
@implementation JavaUtilHashtable_$3

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)getWithJavaUtilMapEntry:(JavaUtilMapEntry *)entry {
  return ((JavaUtilMapEntry *) NIL_CHK(entry)).value;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
@implementation JavaUtilHashtable_$4

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilHashtable *)this$0 {
  return this$0_;
}
- (void)setThis$0:(JavaUtilHashtable *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;

- (int)size {
  return this$0_.elementCount;
}

- (void)clear {
  [this$0_ clear];
}

- (BOOL)removeWithId:(id)object {
  if ([self containsWithId:object]) {
    [this$0_ removeWithId:[((id<JavaUtilMap_Entry>) object) getKey]];
    return YES;
  }
  return NO;
}

- (BOOL)containsWithId:(id)object {
  JavaUtilHashtable_Entry *entry = [this$0_ getEntryWithId:[((id<JavaUtilMap_Entry>) object) getKey]];
  return [NIL_CHK(object) isEqual:entry];
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilHashtable_HashIterator alloc] initWithJavaUtilHashtable:this$0_ withJavaUtilMapEntry_Type:[[[JavaUtilHashtable_$4_$1 alloc] init] autorelease]] autorelease];
}

- (id)initWithJavaUtilHashtable:(JavaUtilHashtable *)outer$ {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilHashtable_$4 *typedCopy = (JavaUtilHashtable_$4 *) copy;
  typedCopy.this$0 = this$0_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  return result;
}

@end
@implementation JavaUtilHashtable_$4_$1

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

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
@implementation JavaUtilHashtable_$5

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)getWithJavaUtilMapEntry:(JavaUtilMapEntry *)entry {
  return ((JavaUtilMapEntry *) NIL_CHK(entry)).key;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
@implementation JavaUtilHashtable_$6

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilHashtable *)this$0 {
  return this$0_;
}
- (void)setThis$0:(JavaUtilHashtable *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;

- (BOOL)containsWithId:(id)object {
  return [this$0_ containsKeyWithId:object];
}

- (int)size {
  return this$0_.elementCount;
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
  if ([self size] == 0) {
    return (id<JavaUtilIterator>) [JavaUtilHashtable EMPTY_ITERATOR];
  }
  return [[[JavaUtilHashtable_HashEnumIterator alloc] initWithJavaUtilHashtable:this$0_ withJavaUtilMapEntry_Type:[[[JavaUtilHashtable_$6_$1 alloc] init] autorelease]] autorelease];
}

- (id)initWithJavaUtilHashtable:(JavaUtilHashtable *)outer$ {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilHashtable_$6 *typedCopy = (JavaUtilHashtable_$6 *) copy;
  typedCopy.this$0 = this$0_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  return result;
}

@end
@implementation JavaUtilHashtable_$6_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)getWithJavaUtilMapEntry:(JavaUtilMapEntry *)entry {
  return ((JavaUtilMapEntry *) NIL_CHK(entry)).key;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
@implementation JavaUtilHashtable_$7

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilHashtable *)this$0 {
  return this$0_;
}
- (void)setThis$0:(JavaUtilHashtable *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;

- (BOOL)containsWithId:(id)object {
  return [this$0_ containsWithId:object];
}

- (int)size {
  return this$0_.elementCount;
}

- (void)clear {
  [this$0_ clear];
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilHashtable_HashIterator alloc] initWithJavaUtilHashtable:this$0_ withJavaUtilMapEntry_Type:[[[JavaUtilHashtable_$7_$1 alloc] init] autorelease]] autorelease];
}

- (id)initWithJavaUtilHashtable:(JavaUtilHashtable *)outer$ {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilHashtable_$7 *typedCopy = (JavaUtilHashtable_$7 *) copy;
  typedCopy.this$0 = this$0_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  return result;
}

@end
@implementation JavaUtilHashtable_$7_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)getWithJavaUtilMapEntry:(JavaUtilMapEntry *)entry {
  return ((JavaUtilMapEntry *) NIL_CHK(entry)).value;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
