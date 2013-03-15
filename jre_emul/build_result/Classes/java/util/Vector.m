//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/util/Vector.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "java/lang/ArrayIndexOutOfBoundsException.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/StringBuilder.h"
#import "java/lang/System.h"
#import "java/util/Arrays.h"
#import "java/util/Collection.h"
#import "java/util/Collections.h"
#import "java/util/Enumeration.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "java/util/NoSuchElementException.h"
#import "java/util/Vector.h"

@implementation JavaUtilVector

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

@synthesize elementCount = elementCount_;
- (IOSObjectArray *)elementData {
  return [[elementData_ retain] autorelease];
}
- (void)setElementData:(IOSObjectArray *)elementData {
  JreOperatorRetainedAssign(&elementData_, elementData);
}
@synthesize elementData = elementData_;
@synthesize capacityIncrement = capacityIncrement_;

- (id)init {
  return JreMemDebugAdd([self initJavaUtilVectorWithInt:JavaUtilVector_DEFAULT_SIZE withInt:0]);
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([self initJavaUtilVectorWithInt:capacity withInt:0]);
}

- (id)initJavaUtilVectorWithInt:(int)capacity
                        withInt:(int)capacityIncrement {
  if ((self = [super init])) {
    if (capacity < 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    }
    JreOperatorRetainedAssign(&elementData_, [self newElementArrayWithInt:capacity]);
    elementCount_ = 0;
    self.capacityIncrement = capacityIncrement;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)capacity
          withInt:(int)capacityIncrement {
  return [self initJavaUtilVectorWithInt:capacity withInt:capacityIncrement];
}

- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  if ((self = [self initJavaUtilVectorWithInt:[((id<JavaUtilCollection>) NIL_CHK(collection)) size] withInt:0])) {
    id<JavaUtilIterator> it = ((id<JavaUtilIterator>) [((id<JavaUtilCollection>) NIL_CHK(collection)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
      [((IOSObjectArray *) NIL_CHK(elementData_)) replaceObjectAtIndex:elementCount_++ withObject:((id) [((id<JavaUtilIterator>) NIL_CHK(it)) next])];
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (IOSObjectArray *)newElementArrayWithInt:(int)size OBJC_METHOD_FAMILY_NONE {
  return (IOSObjectArray *) [[[IOSObjectArray alloc] initWithLength:size type:[IOSClass classWithClass:[NSObject class]]] autorelease];
}

- (void)addWithInt:(int)location
            withId:(id)object {
  [self insertElementAtWithId:object withInt:location];
}

- (BOOL)addWithId:(id)object {
  @synchronized(self) {
    {
      if (elementCount_ == (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count]) {
        [self growByOne];
      }
      [((IOSObjectArray *) NIL_CHK(elementData_)) replaceObjectAtIndex:elementCount_++ withObject:object];
      modCount_++;
      return YES;
    }
  }
}

- (BOOL)addAllWithInt:(int)location
withJavaUtilCollection:(id<JavaUtilCollection>)collection {
  @synchronized(self) {
    {
      if (0 <= location && location <= elementCount_) {
        if (collection == nil) {
          @throw [[[JavaLangNullPointerException alloc] init] autorelease];
        }
        int size = [((id<JavaUtilCollection>) NIL_CHK(collection)) size];
        if (size == 0) {
          return NO;
        }
        int required = size - ((int) [((IOSObjectArray *) NIL_CHK(elementData_)) count] - elementCount_);
        if (required > 0) {
          [self growByWithInt:required];
        }
        int count = elementCount_ - location;
        if (count > 0) {
          [JavaLangSystem arraycopyWithId:elementData_ withInt:location withId:elementData_ withInt:location + size withInt:count];
        }
        id<JavaUtilIterator> it = ((id<JavaUtilIterator>) [((id<JavaUtilCollection>) NIL_CHK(collection)) iterator]);
        while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
          [((IOSObjectArray *) NIL_CHK(elementData_)) replaceObjectAtIndex:location++ withObject:((id) [((id<JavaUtilIterator>) NIL_CHK(it)) next])];
        }
        elementCount_ += size;
        modCount_++;
        return YES;
      }
      @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithInt:location] autorelease];
    }
  }
}

- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  @synchronized(self) {
    {
      return [self addAllWithInt:elementCount_ withJavaUtilCollection:collection];
    }
  }
}

- (void)addElementWithId:(id)object {
  @synchronized(self) {
    {
      if (elementCount_ == (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count]) {
        [self growByOne];
      }
      [((IOSObjectArray *) NIL_CHK(elementData_)) replaceObjectAtIndex:elementCount_++ withObject:object];
      modCount_++;
    }
  }
}

- (int)capacity {
  @synchronized(self) {
    {
      return (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count];
    }
  }
}

- (void)clear {
  [self removeAllElements];
}

- (id)clone {
  @synchronized(self) {
    {
      JavaUtilVector *vector = [[[JavaUtilVector alloc] initWithInt:0 withInt:capacityIncrement_] autorelease];
      ((JavaUtilVector *) NIL_CHK(vector)).elementData = [((IOSObjectArray *) NIL_CHK(elementData_)) clone];
      ((JavaUtilVector *) NIL_CHK(vector)).elementCount = elementCount_;
      return vector;
    }
  }
}

- (BOOL)containsWithId:(id)object {
  return [self indexOfWithId:object withInt:0] != -1;
}

- (BOOL)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  @synchronized(self) {
    {
      return (BOOL) [super containsAllWithJavaUtilCollection:collection];
    }
  }
}

- (void)copyIntoWithNSObjectArray:(IOSObjectArray *)elements OBJC_METHOD_FAMILY_NONE {
  @synchronized(self) {
    {
      [JavaLangSystem arraycopyWithId:elementData_ withInt:0 withId:elements withInt:0 withInt:elementCount_];
    }
  }
}

- (id)elementAtWithInt:(int)location {
  @synchronized(self) {
    {
      if (location < elementCount_) {
        return (id) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:location];
      }
      @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithInt:location] autorelease];
    }
  }
}

- (id<JavaUtilEnumeration>)elements {
  return [[[JavaUtilVector_$1 alloc] initWithJavaUtilVector:self] autorelease];
}

- (void)ensureCapacityWithInt:(int)minimumCapacity {
  @synchronized(self) {
    {
      if ((int) [((IOSObjectArray *) NIL_CHK(elementData_)) count] < minimumCapacity) {
        int next = (capacityIncrement_ <= 0 ? (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count] : capacityIncrement_) + (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count];
        [self growWithInt:minimumCapacity > next ? minimumCapacity : next];
      }
    }
  }
}

- (BOOL)isEqual:(id)object {
  @synchronized(self) {
    {
      if (self == object) {
        return YES;
      }
      if ([object conformsToProtocol: @protocol(JavaUtilList)]) {
        id<JavaUtilList> list = (id<JavaUtilList>) object;
        if ([((id<JavaUtilList>) NIL_CHK(list)) size] != elementCount_) {
          return NO;
        }
        int index = 0;
        id<JavaUtilIterator> it = [((id<JavaUtilList>) NIL_CHK(list)) iterator];
        while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
          id e1 = [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:index++], e2 = [((id<JavaUtilIterator>) NIL_CHK(it)) next];
          if (!(e1 == nil ? e2 == nil : [NIL_CHK(e1) isEqual:e2])) {
            return NO;
          }
        }
        return YES;
      }
      return NO;
    }
  }
}

- (id)firstElement {
  @synchronized(self) {
    {
      if (elementCount_ > 0) {
        return (id) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:0];
      }
      @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
    }
  }
}

- (id)getWithInt:(int)location {
  return [self elementAtWithInt:location];
}

- (void)growWithInt:(int)newCapacity {
  IOSObjectArray *newData = [self newElementArrayWithInt:newCapacity];
  NSAssert(elementCount_ <= newCapacity, @"/Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/util/Vector.java:448 condition failed: assert elementCount <= newCapacity;");
  [JavaLangSystem arraycopyWithId:elementData_ withInt:0 withId:newData withInt:0 withInt:elementCount_];
  JreOperatorRetainedAssign(&elementData_, newData);
}

- (void)growByOne {
  int adding = 0;
  if (capacityIncrement_ <= 0) {
    if ((adding = (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count]) == 0) {
      adding = 1;
    }
  }
  else {
    adding = capacityIncrement_;
  }
  IOSObjectArray *newData = [self newElementArrayWithInt:(int) [((IOSObjectArray *) NIL_CHK(elementData_)) count] + adding];
  [JavaLangSystem arraycopyWithId:elementData_ withInt:0 withId:newData withInt:0 withInt:elementCount_];
  JreOperatorRetainedAssign(&elementData_, newData);
}

- (void)growByWithInt:(int)required {
  int adding = 0;
  if (capacityIncrement_ <= 0) {
    if ((adding = (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count]) == 0) {
      adding = required;
    }
    while (adding < required) {
      adding += adding;
    }
  }
  else {
    adding = (required / capacityIncrement_) * capacityIncrement_;
    if (adding < required) {
      adding += capacityIncrement_;
    }
  }
  IOSObjectArray *newData = [self newElementArrayWithInt:(int) [((IOSObjectArray *) NIL_CHK(elementData_)) count] + adding];
  [JavaLangSystem arraycopyWithId:elementData_ withInt:0 withId:newData withInt:0 withInt:elementCount_];
  JreOperatorRetainedAssign(&elementData_, newData);
}

- (NSUInteger)hash {
  @synchronized(self) {
    {
      int result = 1;
      for (int i = 0; i < elementCount_; i++) {
        result = (31 * result) + ([((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:i] == nil ? 0 : [[((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:i] hash]);
      }
      return result;
    }
  }
}

- (int)indexOfWithId:(id)object {
  return [self indexOfWithId:object withInt:0];
}

- (int)indexOfWithId:(id)object
             withInt:(int)location {
  @synchronized(self) {
    {
      if (object != nil) {
        for (int i = location; i < elementCount_; i++) {
          if ([object isEqual:[((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:i]]) {
            return i;
          }
        }
      }
      else {
        for (int i = location; i < elementCount_; i++) {
          if ([((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:i] == nil) {
            return i;
          }
        }
      }
      return -1;
    }
  }
}

- (void)insertElementAtWithId:(id)object
                      withInt:(int)location {
  @synchronized(self) {
    {
      if (0 <= location && location <= elementCount_) {
        if (elementCount_ == (int) [((IOSObjectArray *) NIL_CHK(elementData_)) count]) {
          [self growByOne];
        }
        int count = elementCount_ - location;
        if (count > 0) {
          [JavaLangSystem arraycopyWithId:elementData_ withInt:location withId:elementData_ withInt:location + 1 withInt:count];
        }
        [((IOSObjectArray *) NIL_CHK(elementData_)) replaceObjectAtIndex:location withObject:object];
        elementCount_++;
        modCount_++;
      }
      else {
        @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithInt:location] autorelease];
      }
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

- (id)lastElement {
  @synchronized(self) {
    {
      @try {
        return (id) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:elementCount_ - 1];
      }
      @catch (JavaLangIndexOutOfBoundsException *e) {
        @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
      }
    }
  }
}

- (int)lastIndexOfWithId:(id)object {
  @synchronized(self) {
    {
      return [self lastIndexOfWithId:object withInt:elementCount_ - 1];
    }
  }
}

- (int)lastIndexOfWithId:(id)object
                 withInt:(int)location {
  @synchronized(self) {
    {
      if (location < elementCount_) {
        if (object != nil) {
          for (int i = location; i >= 0; i--) {
            if ([object isEqual:[((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:i]]) {
              return i;
            }
          }
        }
        else {
          for (int i = location; i >= 0; i--) {
            if ([((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:i] == nil) {
              return i;
            }
          }
        }
        return -1;
      }
      @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithInt:location] autorelease];
    }
  }
}

- (id)removeWithInt:(int)location {
  @synchronized(self) {
    {
      if (location < elementCount_) {
        id result = (id) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:location];
        elementCount_--;
        int size = elementCount_ - location;
        if (size > 0) {
          [JavaLangSystem arraycopyWithId:elementData_ withInt:location + 1 withId:elementData_ withInt:location withInt:size];
        }
        [((IOSObjectArray *) NIL_CHK(elementData_)) replaceObjectAtIndex:elementCount_ withObject:nil];
        modCount_++;
        return result;
      }
      @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithInt:location] autorelease];
    }
  }
}

- (BOOL)removeWithId:(id)object {
  return [self removeElementWithId:object];
}

- (BOOL)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  @synchronized(self) {
    {
      return (BOOL) [super removeAllWithJavaUtilCollection:collection];
    }
  }
}

- (void)removeAllElements {
  @synchronized(self) {
    {
      for (int i = 0; i < elementCount_; i++) {
        [((IOSObjectArray *) NIL_CHK(elementData_)) replaceObjectAtIndex:i withObject:nil];
      }
      modCount_++;
      elementCount_ = 0;
    }
  }
}

- (BOOL)removeElementWithId:(id)object {
  @synchronized(self) {
    {
      int index;
      if ((index = [self indexOfWithId:object withInt:0]) == -1) {
        return NO;
      }
      [self removeElementAtWithInt:index];
      return YES;
    }
  }
}

- (void)removeElementAtWithInt:(int)location {
  @synchronized(self) {
    {
      if (0 <= location && location < elementCount_) {
        elementCount_--;
        int size = elementCount_ - location;
        if (size > 0) {
          [JavaLangSystem arraycopyWithId:elementData_ withInt:location + 1 withId:elementData_ withInt:location withInt:size];
        }
        [((IOSObjectArray *) NIL_CHK(elementData_)) replaceObjectAtIndex:elementCount_ withObject:nil];
        modCount_++;
      }
      else {
        @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithInt:location] autorelease];
      }
    }
  }
}

- (void)removeRangeWithInt:(int)start
                   withInt:(int)end {
  if (start >= 0 && start <= end && end <= elementCount_) {
    if (start == end) {
      return;
    }
    if (end != elementCount_) {
      [JavaLangSystem arraycopyWithId:elementData_ withInt:end withId:elementData_ withInt:start withInt:elementCount_ - end];
      int newCount = elementCount_ - (end - start);
      [JavaUtilArrays fillWithNSObjectArray:elementData_ withInt:newCount withInt:elementCount_ withId:nil];
      elementCount_ = newCount;
    }
    else {
      [JavaUtilArrays fillWithNSObjectArray:elementData_ withInt:start withInt:elementCount_ withId:nil];
      elementCount_ = start;
    }
    modCount_++;
  }
  else {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
}

- (BOOL)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  @synchronized(self) {
    {
      return (BOOL) [super retainAllWithJavaUtilCollection:collection];
    }
  }
}

- (id)setWithInt:(int)location
          withId:(id)object {
  @synchronized(self) {
    {
      if (location < elementCount_) {
        id result = (id) [((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:location];
        [((IOSObjectArray *) NIL_CHK(elementData_)) replaceObjectAtIndex:location withObject:object];
        return result;
      }
      @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithInt:location] autorelease];
    }
  }
}

- (void)setElementAtWithId:(id)object
                   withInt:(int)location {
  @synchronized(self) {
    {
      if (location < elementCount_) {
        [((IOSObjectArray *) NIL_CHK(elementData_)) replaceObjectAtIndex:location withObject:object];
      }
      else {
        @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithInt:location] autorelease];
      }
    }
  }
}

- (void)setSizeWithInt:(int)length {
  @synchronized(self) {
    {
      if (length == elementCount_) {
        return;
      }
      [self ensureCapacityWithInt:length];
      if (elementCount_ > length) {
        [JavaUtilArrays fillWithNSObjectArray:elementData_ withInt:length withInt:elementCount_ withId:nil];
      }
      elementCount_ = length;
      modCount_++;
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

- (id<JavaUtilList>)subListWithInt:(int)start
                           withInt:(int)end {
  @synchronized(self) {
    {
      return [[[JavaUtilCollections_SynchronizedRandomAccessList alloc] initWithJavaUtilList:[super subListWithInt:start withInt:end] withId:self] autorelease];
    }
  }
}

- (IOSObjectArray *)toArray {
  @synchronized(self) {
    {
      IOSObjectArray *result = [[[IOSObjectArray alloc] initWithLength:elementCount_ type:[IOSClass classWithClass:[NSObject class]]] autorelease];
      [JavaLangSystem arraycopyWithId:elementData_ withInt:0 withId:result withInt:0 withInt:elementCount_];
      return result;
    }
  }
}

- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)contents {
  @synchronized(self) {
    {
      if (elementCount_ > (int) [((IOSObjectArray *) NIL_CHK(contents)) count]) {
        contents = (IOSObjectArray *) [super toArrayWithNSObjectArray:contents];
      }
      [JavaLangSystem arraycopyWithId:elementData_ withInt:0 withId:contents withInt:0 withInt:elementCount_];
      if (elementCount_ < (int) [((IOSObjectArray *) NIL_CHK(contents)) count]) {
        [((IOSObjectArray *) NIL_CHK(contents)) replaceObjectAtIndex:elementCount_ withObject:nil];
      }
      return contents;
    }
  }
}

- (NSString *)description {
  @synchronized(self) {
    {
      if (elementCount_ == 0) {
        return @"[]";
      }
      int length = elementCount_ - 1;
      JavaLangStringBuilder *buffer = [[[JavaLangStringBuilder alloc] initWithInt:elementCount_ * 16] autorelease];
      [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithUnichar:'['];
      for (int i = 0; i < length; i++) {
        if ([((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:i] == self) {
          [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@"(this Collection)"];
        }
        else {
          [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithId:[((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:i]];
        }
        [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@", "];
      }
      if ([((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:length] == self) {
        [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@"(this Collection)"];
      }
      else {
        [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithId:[((IOSObjectArray *) NIL_CHK(elementData_)) objectAtIndex:length]];
      }
      [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithUnichar:']'];
      return [((JavaLangStringBuilder *) NIL_CHK(buffer)) description];
    }
  }
}

- (void)trimToSize {
  @synchronized(self) {
    {
      if ((int) [((IOSObjectArray *) NIL_CHK(elementData_)) count] != elementCount_) {
        [self growWithInt:elementCount_];
      }
    }
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
  JavaUtilVector *typedCopy = (JavaUtilVector *) copy;
  typedCopy.elementCount = elementCount_;
  typedCopy.elementData = elementData_;
  typedCopy.capacityIncrement = capacityIncrement_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:elementData_ name:@"elementData"]];
  return result;
}

@end
@implementation JavaUtilVector_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilVector *)this$0 {
  return [[this$0_ retain] autorelease];
}
- (void)setThis$0:(JavaUtilVector *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;
@synthesize pos = pos_;

- (BOOL)hasMoreElements {
  return pos_ < this$0_.elementCount;
}

- (id)nextElement {
  @synchronized (this$0_) {
    if (pos_ < this$0_.elementCount) {
      return (id) [((IOSObjectArray *) NIL_CHK(this$0_.elementData)) objectAtIndex:pos_++];
    }
  }
  @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
}

- (id)initWithJavaUtilVector:(JavaUtilVector *)outer$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$0);
    pos_ = 0;
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
  JavaUtilVector_$1 *typedCopy = (JavaUtilVector_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.pos = pos_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  return result;
}

@end
