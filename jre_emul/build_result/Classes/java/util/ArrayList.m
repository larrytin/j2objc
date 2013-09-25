//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/ArrayList.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"

@implementation JavaUtilArrayList

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([self initJavaUtilArrayListWithInt:10]);
}

- (id)initJavaUtilArrayListWithInt:(int)capacity {
  if (self = [super init]) {
    if (capacity < 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    }
    firstIndex_ = size__ = 0;
    JavaUtilArrayList_set_array_(self, [self newElementArrayWithInt:capacity]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)capacity {
  return [self initJavaUtilArrayListWithInt:capacity];
}

- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  if (self = [super init]) {
    firstIndex_ = 0;
    JavaUtilArrayList_set_array_(self, (IOSObjectArray *) check_class_cast([((id<JavaUtilCollection>) nil_chk(collection)) toArray], [IOSObjectArray class]));
    size__ = (int) [((IOSObjectArray *) nil_chk(array_)) count];
    modCount_ = 1;
    JreMemDebugAdd(self);
  }
  return self;
}

- (IOSObjectArray *)newElementArrayWithInt:(int)size {
  return (IOSObjectArray *) check_class_cast([IOSObjectArray arrayWithLength:size type:[IOSClass classWithClass:[NSObject class]]], [IOSObjectArray class]);
}

- (void)addWithInt:(int)location
            withId:(id)object {
  if (location < 0 || location > size__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Index: %d, Size: %d", location, size__]] autorelease];
  }
  if (location == 0) {
    if (firstIndex_ == 0) {
      [self growAtFrontWithInt:1];
    }
    IOSObjectArray_Set(nil_chk(array_), --firstIndex_, object);
  }
  else if (location == size__) {
    if (firstIndex_ + size__ == (int) [((IOSObjectArray *) nil_chk(array_)) count]) {
      [self growAtEndWithInt:1];
    }
    IOSObjectArray_Set(array_, firstIndex_ + size__, object);
  }
  else {
    if (size__ == (int) [((IOSObjectArray *) nil_chk(array_)) count]) {
      [self growForInsertWithInt:location withInt:1];
    }
    else if (firstIndex_ + size__ == (int) [array_ count] || (firstIndex_ > 0 && location < size__ / 2)) {
      int srcPos = firstIndex_--;
      [JavaLangSystem arraycopyWithId:array_ withInt:srcPos withId:array_ withInt:firstIndex_ withInt:location];
    }
    else {
      int index = location + firstIndex_;
      [JavaLangSystem arraycopyWithId:array_ withInt:index withId:array_ withInt:index + 1 withInt:size__ - location];
    }
    IOSObjectArray_Set(array_, location + firstIndex_, object);
  }
  size__++;
  modCount_++;
}

- (BOOL)addWithId:(id)object {
  if (firstIndex_ + size__ == (int) [((IOSObjectArray *) nil_chk(array_)) count]) {
    [self growAtEndWithInt:1];
  }
  IOSObjectArray_Set(array_, firstIndex_ + size__, object);
  size__++;
  modCount_++;
  return YES;
}

- (BOOL)addAllWithInt:(int)location
withJavaUtilCollection:(id<JavaUtilCollection>)collection {
  if (location < 0 || location > size__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Index: %d, Size: %d", location, size__]] autorelease];
  }
  if (collection == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  IOSObjectArray *dumparray = [((id<JavaUtilCollection>) nil_chk(collection)) toArray];
  int growSize = (int) [((IOSObjectArray *) nil_chk(dumparray)) count];
  if (growSize == 0) {
    return NO;
  }
  if (location == 0) {
    [self growAtFrontWithInt:growSize];
    firstIndex_ -= growSize;
  }
  else if (location == size__) {
    if (firstIndex_ + size__ > (int) [((IOSObjectArray *) nil_chk(array_)) count] - growSize) {
      [self growAtEndWithInt:growSize];
    }
  }
  else {
    if ((int) [((IOSObjectArray *) nil_chk(array_)) count] - size__ < growSize) {
      [self growForInsertWithInt:location withInt:growSize];
    }
    else if (firstIndex_ + size__ > (int) [array_ count] - growSize || (firstIndex_ > 0 && location < size__ / 2)) {
      int newFirst = firstIndex_ - growSize;
      if (newFirst < 0) {
        int index = location + firstIndex_;
        [JavaLangSystem arraycopyWithId:array_ withInt:index withId:array_ withInt:index - newFirst withInt:size__ - location];
        newFirst = 0;
      }
      [JavaLangSystem arraycopyWithId:array_ withInt:firstIndex_ withId:array_ withInt:newFirst withInt:location];
      firstIndex_ = newFirst;
    }
    else {
      int index = location + firstIndex_;
      [JavaLangSystem arraycopyWithId:array_ withInt:index withId:array_ withInt:index + growSize withInt:size__ - location];
    }
  }
  [JavaLangSystem arraycopyWithId:dumparray withInt:0 withId:self->array_ withInt:location + firstIndex_ withInt:growSize];
  size__ += growSize;
  modCount_++;
  return YES;
}

- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  if (collection == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  IOSObjectArray *dumpArray = [((id<JavaUtilCollection>) nil_chk(collection)) toArray];
  if ((int) [((IOSObjectArray *) nil_chk(dumpArray)) count] == 0) {
    return NO;
  }
  if ((int) [dumpArray count] > (int) [((IOSObjectArray *) nil_chk(array_)) count] - (firstIndex_ + size__)) {
    [self growAtEndWithInt:(int) [dumpArray count]];
  }
  [JavaLangSystem arraycopyWithId:dumpArray withInt:0 withId:self->array_ withInt:firstIndex_ + size__ withInt:(int) [dumpArray count]];
  size__ += (int) [dumpArray count];
  modCount_++;
  return YES;
}

- (void)clear {
  if (size__ != 0) {
    [JavaUtilArrays fillWithNSObjectArray:array_ withInt:firstIndex_ withInt:firstIndex_ + size__ withId:nil];
    firstIndex_ = size__ = 0;
    modCount_++;
  }
}

- (id)clone {
  return [[[JavaUtilArrayList alloc] initWithJavaUtilCollection:self] autorelease];
}

- (BOOL)containsWithId:(id)object {
  int lastIndex = firstIndex_ + size__;
  if (object != nil) {
    for (int i = firstIndex_; i < lastIndex; i++) {
      if ([object isEqual:IOSObjectArray_Get(nil_chk(array_), i)]) {
        return YES;
      }
    }
  }
  else {
    for (int i = firstIndex_; i < lastIndex; i++) {
      if (IOSObjectArray_Get(nil_chk(array_), i) == nil) {
        return YES;
      }
    }
  }
  return NO;
}

- (void)ensureCapacityWithInt:(int)minimumCapacity {
  if ((int) [((IOSObjectArray *) nil_chk(array_)) count] < minimumCapacity) {
    if (firstIndex_ > 0) {
      [self growAtFrontWithInt:minimumCapacity - (int) [array_ count]];
    }
    else {
      [self growAtEndWithInt:minimumCapacity - (int) [array_ count]];
    }
  }
}

- (id)getWithInt:(int)location {
  if (location < 0 || location >= size__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Index: %d, Size: %d", location, size__]] autorelease];
  }
  return IOSObjectArray_Get(nil_chk(array_), firstIndex_ + location);
}

- (void)growAtEndWithInt:(int)required {
  if ((int) [((IOSObjectArray *) nil_chk(array_)) count] - size__ >= required) {
    if (size__ != 0) {
      [JavaLangSystem arraycopyWithId:array_ withInt:firstIndex_ withId:array_ withInt:0 withInt:size__];
      int start = size__ < firstIndex_ ? firstIndex_ : size__;
      [JavaUtilArrays fillWithNSObjectArray:array_ withInt:start withInt:(int) [array_ count] withId:nil];
    }
    firstIndex_ = 0;
  }
  else {
    int increment = size__ / 2;
    if (required > increment) {
      increment = required;
    }
    if (increment < 12) {
      increment = 12;
    }
    IOSObjectArray *newArray = [self newElementArrayWithInt:size__ + increment];
    if (size__ != 0) {
      [JavaLangSystem arraycopyWithId:array_ withInt:firstIndex_ withId:newArray withInt:0 withInt:size__];
      firstIndex_ = 0;
    }
    JavaUtilArrayList_set_array_(self, newArray);
  }
}

- (void)growAtFrontWithInt:(int)required {
  if ((int) [((IOSObjectArray *) nil_chk(array_)) count] - size__ >= required) {
    int newFirst = (int) [array_ count] - size__;
    if (size__ != 0) {
      [JavaLangSystem arraycopyWithId:array_ withInt:firstIndex_ withId:array_ withInt:newFirst withInt:size__];
      int lastIndex = firstIndex_ + size__;
      int length = lastIndex > newFirst ? newFirst : lastIndex;
      [JavaUtilArrays fillWithNSObjectArray:array_ withInt:firstIndex_ withInt:length withId:nil];
    }
    firstIndex_ = newFirst;
  }
  else {
    int increment = size__ / 2;
    if (required > increment) {
      increment = required;
    }
    if (increment < 12) {
      increment = 12;
    }
    IOSObjectArray *newArray = [self newElementArrayWithInt:size__ + increment];
    if (size__ != 0) {
      [JavaLangSystem arraycopyWithId:array_ withInt:firstIndex_ withId:newArray withInt:increment withInt:size__];
    }
    firstIndex_ = (int) [((IOSObjectArray *) nil_chk(newArray)) count] - size__;
    JavaUtilArrayList_set_array_(self, newArray);
  }
}

- (void)growForInsertWithInt:(int)location
                     withInt:(int)required {
  int increment = size__ / 2;
  if (required > increment) {
    increment = required;
  }
  if (increment < 12) {
    increment = 12;
  }
  IOSObjectArray *newArray = [self newElementArrayWithInt:size__ + increment];
  int newFirst = increment - required;
  [JavaLangSystem arraycopyWithId:array_ withInt:location + firstIndex_ withId:newArray withInt:newFirst + location + required withInt:size__ - location];
  [JavaLangSystem arraycopyWithId:array_ withInt:firstIndex_ withId:newArray withInt:newFirst withInt:location];
  firstIndex_ = newFirst;
  JavaUtilArrayList_set_array_(self, newArray);
}

- (int)indexOfWithId:(id)object {
  int lastIndex = firstIndex_ + size__;
  if (object != nil) {
    for (int i = firstIndex_; i < lastIndex; i++) {
      if ([object isEqual:IOSObjectArray_Get(nil_chk(array_), i)]) {
        return i - firstIndex_;
      }
    }
  }
  else {
    for (int i = firstIndex_; i < lastIndex; i++) {
      if (IOSObjectArray_Get(nil_chk(array_), i) == nil) {
        return i - firstIndex_;
      }
    }
  }
  return -1;
}

- (BOOL)isEmpty {
  return size__ == 0;
}

- (int)lastIndexOfWithId:(id)object {
  int lastIndex = firstIndex_ + size__;
  if (object != nil) {
    for (int i = lastIndex - 1; i >= firstIndex_; i--) {
      if ([object isEqual:IOSObjectArray_Get(nil_chk(array_), i)]) {
        return i - firstIndex_;
      }
    }
  }
  else {
    for (int i = lastIndex - 1; i >= firstIndex_; i--) {
      if (IOSObjectArray_Get(nil_chk(array_), i) == nil) {
        return i - firstIndex_;
      }
    }
  }
  return -1;
}

- (id)removeWithInt:(int)location {
  id result;
  if (location < 0 || location >= size__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Index: %d, Size: %d", location, size__]] autorelease];
  }
  if (location == 0) {
    result = IOSObjectArray_Get(nil_chk(array_), firstIndex_);
    IOSObjectArray_Set(array_, firstIndex_++, nil);
  }
  else if (location == size__ - 1) {
    int lastIndex = firstIndex_ + size__ - 1;
    result = IOSObjectArray_Get(nil_chk(array_), lastIndex);
    IOSObjectArray_Set(array_, lastIndex, nil);
  }
  else {
    int elementIndex = firstIndex_ + location;
    result = IOSObjectArray_Get(nil_chk(array_), elementIndex);
    if (location < size__ / 2) {
      [JavaLangSystem arraycopyWithId:array_ withInt:firstIndex_ withId:array_ withInt:firstIndex_ + 1 withInt:location];
      IOSObjectArray_Set(array_, firstIndex_++, nil);
    }
    else {
      [JavaLangSystem arraycopyWithId:array_ withInt:elementIndex + 1 withId:array_ withInt:elementIndex withInt:size__ - location - 1];
      IOSObjectArray_Set(array_, firstIndex_ + size__ - 1, nil);
    }
  }
  size__--;
  if (size__ == 0) {
    firstIndex_ = 0;
  }
  modCount_++;
  return result;
}

- (BOOL)removeWithId:(id)object {
  int location = [self indexOfWithId:object];
  if (location >= 0) {
    [self removeWithInt:location];
    return YES;
  }
  return NO;
}

- (void)removeRangeWithInt:(int)start
                   withInt:(int)end {
  if (start < 0) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Array index out of range: %d", start]] autorelease];
  }
  else if (end > size__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Index: %d, Size: %d", end, size__]] autorelease];
  }
  else if (start > end) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Start index (%d) is greater than end index (%d)", start, end]] autorelease];
  }
  if (start == end) {
    return;
  }
  if (end == size__) {
    [JavaUtilArrays fillWithNSObjectArray:array_ withInt:firstIndex_ + start withInt:firstIndex_ + size__ withId:nil];
  }
  else if (start == 0) {
    [JavaUtilArrays fillWithNSObjectArray:array_ withInt:firstIndex_ withInt:firstIndex_ + end withId:nil];
    firstIndex_ += end;
  }
  else {
    [JavaLangSystem arraycopyWithId:array_ withInt:firstIndex_ + end withId:array_ withInt:firstIndex_ + start withInt:size__ - end];
    int lastIndex = firstIndex_ + size__;
    int newLast = lastIndex + start - end;
    [JavaUtilArrays fillWithNSObjectArray:array_ withInt:newLast withInt:lastIndex withId:nil];
  }
  size__ -= end - start;
  modCount_++;
}

- (id)setWithInt:(int)location
          withId:(id)object {
  if (location < 0 || location >= size__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Index: %d, Size: %d", location, size__]] autorelease];
  }
  id result = IOSObjectArray_Get(nil_chk(array_), firstIndex_ + location);
  IOSObjectArray_Set(array_, firstIndex_ + location, object);
  return result;
}

- (int)size {
  return size__;
}

- (void)trimToSize {
  IOSObjectArray *newArray = [self newElementArrayWithInt:size__];
  [JavaLangSystem arraycopyWithId:array_ withInt:firstIndex_ withId:newArray withInt:0 withInt:size__];
  JavaUtilArrayList_set_array_(self, newArray);
  firstIndex_ = 0;
  modCount_ = 0;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilArrayList_set_array_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilArrayList *)other {
  [super copyAllFieldsTo:other];
  JavaUtilArrayList_set_array_(other, array_);
  other->firstIndex_ = firstIndex_;
  other->size__ = size__;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:array_ name:@"array"]];
  return result;
}

@end
