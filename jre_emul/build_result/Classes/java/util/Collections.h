//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/Collections.java
//
//  Created by retechretech on 13-4-19.
//

@class IOSObjectArray;
@class JavaUtilArrayList;
@class JavaUtilCollections_EmptySet;
@class JavaUtilCollections_ReverseComparator;
@class JavaUtilCollections_SingletonMap;
@class JavaUtilCollections_SingletonMap_$1;
@class JavaUtilCollections_SingletonMap_$1_$1;
@class JavaUtilCollections_SingletonSet;
@class JavaUtilCollections_UnmodifiableCollection;
@class JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet;
@class JavaUtilRandom;
@protocol JavaUtilDeque;
@protocol JavaUtilQueue;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/util/AbstractList.h"
#import "java/util/AbstractMap.h"
#import "java/util/AbstractQueue.h"
#import "java/util/AbstractSet.h"
#import "java/util/Collection.h"
#import "java/util/Collections.h"
#import "java/util/Comparator.h"
#import "java/util/Enumeration.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "java/util/ListIterator.h"
#import "java/util/Map.h"
#import "java/util/MapEntry.h"
#import "java/util/RandomAccess.h"
#import "java/util/Set.h"
#import "java/util/SortedMap.h"
#import "java/util/SortedSet.h"

@interface JavaUtilCollections : NSObject {
}

+ (id<JavaUtilList>)EMPTY_LIST;
+ (id<JavaUtilSet>)EMPTY_SET;
+ (id<JavaUtilMap>)EMPTY_MAP;
- (id)init;
+ (int)binarySearchWithJavaUtilList:(id<JavaUtilList>)list
                             withId:(id)object;
+ (int)binarySearchWithJavaUtilList:(id<JavaUtilList>)list
                             withId:(id)object
             withJavaUtilComparator:(id<JavaUtilComparator>)comparator;
+ (void)copy__WithJavaUtilList:(id<JavaUtilList>)destination
              withJavaUtilList:(id<JavaUtilList>)source OBJC_METHOD_FAMILY_NONE;
+ (id<JavaUtilEnumeration>)enumerationWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
+ (void)fillWithJavaUtilList:(id<JavaUtilList>)list
                      withId:(id)object;
+ (id)maxWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
+ (id)maxWithJavaUtilCollection:(id<JavaUtilCollection>)collection
         withJavaUtilComparator:(id<JavaUtilComparator>)comparator;
+ (id)minWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
+ (id)minWithJavaUtilCollection:(id<JavaUtilCollection>)collection
         withJavaUtilComparator:(id<JavaUtilComparator>)comparator;
+ (id<JavaUtilList>)nCopiesWithInt:(int)length
                            withId:(id)object;
+ (void)reverseWithJavaUtilList:(id<JavaUtilList>)list;
+ (id<JavaUtilComparator>)reverseOrder;
+ (id<JavaUtilComparator>)reverseOrderWithJavaUtilComparator:(id<JavaUtilComparator>)c;
+ (void)shuffleWithJavaUtilList:(id<JavaUtilList>)list;
+ (void)shuffleWithJavaUtilList:(id<JavaUtilList>)list
             withJavaUtilRandom:(JavaUtilRandom *)random;
+ (id<JavaUtilSet>)singletonWithId:(id)object;
+ (id<JavaUtilList>)singletonListWithId:(id)object;
+ (id<JavaUtilMap>)singletonMapWithId:(id)key
                               withId:(id)value;
+ (void)sortWithJavaUtilList:(id<JavaUtilList>)list;
+ (void)sortWithJavaUtilList:(id<JavaUtilList>)list
      withJavaUtilComparator:(id<JavaUtilComparator>)comparator;
+ (void)swapWithJavaUtilList:(id<JavaUtilList>)list
                     withInt:(int)index1
                     withInt:(int)index2;
+ (BOOL)replaceAllWithJavaUtilList:(id<JavaUtilList>)list
                            withId:(id)obj
                            withId:(id)obj2;
+ (void)rotateWithJavaUtilList:(id<JavaUtilList>)lst
                       withInt:(int)dist;
+ (int)indexOfSubListWithJavaUtilList:(id<JavaUtilList>)list
                     withJavaUtilList:(id<JavaUtilList>)sublist;
+ (int)lastIndexOfSubListWithJavaUtilList:(id<JavaUtilList>)list
                         withJavaUtilList:(id<JavaUtilList>)sublist;
+ (JavaUtilArrayList *)listWithJavaUtilEnumeration:(id<JavaUtilEnumeration>)enumeration;
+ (id<JavaUtilCollection>)synchronizedCollectionWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
+ (id<JavaUtilList>)synchronizedListWithJavaUtilList:(id<JavaUtilList>)list;
+ (id<JavaUtilMap>)synchronizedMapWithJavaUtilMap:(id<JavaUtilMap>)map;
+ (id<JavaUtilSet>)synchronizedSetWithJavaUtilSet:(id<JavaUtilSet>)set;
+ (id<JavaUtilSortedMap>)synchronizedSortedMapWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)map;
+ (id<JavaUtilSortedSet>)synchronizedSortedSetWithJavaUtilSortedSet:(id<JavaUtilSortedSet>)set;
+ (id<JavaUtilCollection>)unmodifiableCollectionWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
+ (id<JavaUtilList>)unmodifiableListWithJavaUtilList:(id<JavaUtilList>)list;
+ (id<JavaUtilMap>)unmodifiableMapWithJavaUtilMap:(id<JavaUtilMap>)map;
+ (id<JavaUtilSet>)unmodifiableSetWithJavaUtilSet:(id<JavaUtilSet>)set;
+ (id<JavaUtilSortedMap>)unmodifiableSortedMapWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)map;
+ (id<JavaUtilSortedSet>)unmodifiableSortedSetWithJavaUtilSortedSet:(id<JavaUtilSortedSet>)set;
+ (int)frequencyWithJavaUtilCollection:(id<JavaUtilCollection>)c
                                withId:(id)o;
+ (id<JavaUtilList>)emptyList;
+ (id<JavaUtilSet>)emptySet;
+ (id<JavaUtilMap>)emptyMap;
+ (id<JavaUtilCollection>)checkedCollectionWithJavaUtilCollection:(id<JavaUtilCollection>)c
                                                     withIOSClass:(IOSClass *)type;
+ (id<JavaUtilMap>)checkedMapWithJavaUtilMap:(id<JavaUtilMap>)m
                                withIOSClass:(IOSClass *)keyType
                                withIOSClass:(IOSClass *)valueType;
+ (id<JavaUtilList>)checkedListWithJavaUtilList:(id<JavaUtilList>)list
                                   withIOSClass:(IOSClass *)type;
+ (id<JavaUtilSet>)checkedSetWithJavaUtilSet:(id<JavaUtilSet>)s
                                withIOSClass:(IOSClass *)type;
+ (id<JavaUtilSortedMap>)checkedSortedMapWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)m
                                                  withIOSClass:(IOSClass *)keyType
                                                  withIOSClass:(IOSClass *)valueType;
+ (id<JavaUtilSortedSet>)checkedSortedSetWithJavaUtilSortedSet:(id<JavaUtilSortedSet>)s
                                                  withIOSClass:(IOSClass *)type;
+ (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)c
                   withNSObjectArray:(IOSObjectArray *)a;
+ (BOOL)disjointWithJavaUtilCollection:(id<JavaUtilCollection>)c1
                withJavaUtilCollection:(id<JavaUtilCollection>)c2;
+ (id)checkTypeWithId:(id)obj
         withIOSClass:(IOSClass *)type;
+ (id<JavaUtilSet>)newSetFromMapWithJavaUtilMap:(id<JavaUtilMap>)map OBJC_METHOD_FAMILY_NONE;
+ (id<JavaUtilQueue>)asLifoQueueWithJavaUtilDeque:(id<JavaUtilDeque>)deque;
@end

#define JavaUtilCollections_CopiesList_serialVersionUID 2739099268398711800

@interface JavaUtilCollections_CopiesList : JavaUtilAbstractList < JavaIoSerializable > {
 @public
  int n_;
  id element_;
}

@property (nonatomic, assign) int n;
@property (nonatomic, retain) id element;

- (id)initWithInt:(int)length
           withId:(id)object;
- (BOOL)containsWithId:(id)object;
- (int)size;
- (id)getWithInt:(int)location;
@end

#define JavaUtilCollections_EmptyList_serialVersionUID 8842843931221139166

@interface JavaUtilCollections_EmptyList : JavaUtilAbstractList < JavaUtilRandomAccess, JavaIoSerializable > {
}

- (BOOL)containsWithId:(id)object;
- (int)size;
- (id)getWithInt:(int)location;
- (id)init;
@end

#define JavaUtilCollections_EmptySet_serialVersionUID 1582296315990362920

@interface JavaUtilCollections_EmptySet : JavaUtilAbstractSet < JavaIoSerializable > {
}

- (BOOL)containsWithId:(id)object;
- (int)size;
- (id<JavaUtilIterator>)iterator;
- (id)init;
@end

@interface JavaUtilCollections_EmptySet_$1 : NSObject < JavaUtilIterator > {
 @public
  JavaUtilCollections_EmptySet *this$0_;
}

@property (nonatomic, retain) JavaUtilCollections_EmptySet *this$0;

- (BOOL)hasNext;
- (id)next;
- (void)remove;
- (id)initWithJavaUtilCollections_EmptySet:(JavaUtilCollections_EmptySet *)outer$0;
@end

#define JavaUtilCollections_EmptyMap_serialVersionUID 6428348081105594320

@interface JavaUtilCollections_EmptyMap : JavaUtilAbstractMap < JavaIoSerializable > {
}

- (BOOL)containsKeyWithId:(id)key;
- (BOOL)containsValueWithId:(id)value;
- (id<JavaUtilSet>)entrySet;
- (id)getWithId:(id)key;
- (id<JavaUtilSet>)keySet;
- (id<JavaUtilCollection>)values;
- (id)init;
@end

#define JavaUtilCollections_ReverseComparator_serialVersionUID 7207038068494060240

@interface JavaUtilCollections_ReverseComparator : NSObject < JavaUtilComparator, JavaIoSerializable > {
}

+ (JavaUtilCollections_ReverseComparator *)INSTANCE;
- (int)compareWithId:(id)o1
              withId:(id)o2;
- (id)init;
@end

#define JavaUtilCollections_ReverseComparatorWithComparator_serialVersionUID 4374092139857

@interface JavaUtilCollections_ReverseComparatorWithComparator : NSObject < JavaUtilComparator, JavaIoSerializable > {
 @public
  id<JavaUtilComparator> comparator_;
}

@property (nonatomic, retain) id<JavaUtilComparator> comparator;

- (id)initWithJavaUtilComparator:(id<JavaUtilComparator>)comparator;
- (int)compareWithId:(id)o1
              withId:(id)o2;
- (BOOL)isEqual:(id)o;
- (NSUInteger)hash;
@end

#define JavaUtilCollections_SingletonSet_serialVersionUID 3193687207550431679

@interface JavaUtilCollections_SingletonSet : JavaUtilAbstractSet < JavaIoSerializable > {
 @public
  id element_;
}

@property (nonatomic, retain) id element;

- (id)initWithId:(id)object;
- (BOOL)containsWithId:(id)object;
- (int)size;
- (id<JavaUtilIterator>)iterator;
@end

@interface JavaUtilCollections_SingletonSet_$1 : NSObject < JavaUtilIterator > {
 @public
  JavaUtilCollections_SingletonSet *this$0_;
  BOOL hasNext__;
}

@property (nonatomic, retain) JavaUtilCollections_SingletonSet *this$0;
@property (nonatomic, assign) BOOL hasNext_;

- (BOOL)hasNext;
- (id)next;
- (void)remove;
- (id)initWithJavaUtilCollections_SingletonSet:(JavaUtilCollections_SingletonSet *)outer$0;
@end

#define JavaUtilCollections_SingletonList_serialVersionUID 3093736618740652951

@interface JavaUtilCollections_SingletonList : JavaUtilAbstractList < JavaIoSerializable > {
 @public
  id element_;
}

@property (nonatomic, retain) id element;

- (id)initWithId:(id)object;
- (BOOL)containsWithId:(id)object;
- (id)getWithInt:(int)location;
- (int)size;
@end

#define JavaUtilCollections_SingletonMap_serialVersionUID -6979724477215052911

@interface JavaUtilCollections_SingletonMap : JavaUtilAbstractMap < JavaIoSerializable > {
 @public
  id k_;
  id v_;
}

@property (nonatomic, retain) id k;
@property (nonatomic, retain) id v;

- (id)initWithId:(id)key
          withId:(id)value;
- (BOOL)containsKeyWithId:(id)key;
- (BOOL)containsValueWithId:(id)value;
- (id)getWithId:(id)key;
- (int)size;
- (id<JavaUtilSet>)entrySet;
@end

@interface JavaUtilCollections_SingletonMap_$1 : JavaUtilAbstractSet {
 @public
  JavaUtilCollections_SingletonMap *this$0_;
}

@property (nonatomic, retain) JavaUtilCollections_SingletonMap *this$0;

- (BOOL)containsWithId:(id)object;
- (int)size;
- (id<JavaUtilIterator>)iterator;
- (id)initWithJavaUtilCollections_SingletonMap:(JavaUtilCollections_SingletonMap *)outer$0;
@end

@interface JavaUtilCollections_SingletonMap_$1_$1 : NSObject < JavaUtilIterator > {
 @public
  JavaUtilCollections_SingletonMap_$1 *this$0_;
  BOOL hasNext__;
}

@property (nonatomic, retain) JavaUtilCollections_SingletonMap_$1 *this$0;
@property (nonatomic, assign) BOOL hasNext_;

- (BOOL)hasNext;
- (id<JavaUtilMap_Entry>)next;
- (void)remove;
- (id)initWithJavaUtilCollections_SingletonMap_$1:(JavaUtilCollections_SingletonMap_$1 *)outer$0;
@end

@interface JavaUtilCollections_SingletonMap_$1_$1_$1 : JavaUtilMapEntry {
 @public
  JavaUtilCollections_SingletonMap_$1_$1 *this$0_;
}

@property (nonatomic, retain) JavaUtilCollections_SingletonMap_$1_$1 *this$0;

- (id)setValueWithId:(id)value;
- (id)initWithJavaUtilCollections_SingletonMap_$1_$1:(JavaUtilCollections_SingletonMap_$1_$1 *)outer$2
                                              withId:(id)arg$0
                                              withId:(id)arg$1;
@end

#define JavaUtilCollections_SynchronizedCollection_serialVersionUID 3053995032091335093

@interface JavaUtilCollections_SynchronizedCollection : NSObject < JavaUtilCollection, JavaIoSerializable > {
 @public
  id<JavaUtilCollection> c_;
  id mutex_;
}

@property (nonatomic, retain) id<JavaUtilCollection> c;
@property (nonatomic, retain) id mutex;

- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection
                          withId:(id)mutex;
- (BOOL)addWithId:(id)object;
- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (void)clear;
- (BOOL)containsWithId:(id)object;
- (BOOL)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (BOOL)isEmpty;
- (id<JavaUtilIterator>)iterator;
- (BOOL)removeWithId:(id)object;
- (BOOL)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (BOOL)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (int)size;
- (IOSObjectArray *)toArray;
- (NSString *)description;
- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)array;
@end

#define JavaUtilCollections_SynchronizedList_serialVersionUID -7754090372962971524

@interface JavaUtilCollections_SynchronizedList : JavaUtilCollections_SynchronizedCollection < JavaUtilList > {
 @public
  id<JavaUtilList> list_;
}

@property (nonatomic, retain) id<JavaUtilList> list;

- (id)initWithJavaUtilList:(id<JavaUtilList>)l;
- (id)initWithJavaUtilList:(id<JavaUtilList>)l
                    withId:(id)mutex;
- (void)addWithInt:(int)location
            withId:(id)object;
- (BOOL)addAllWithInt:(int)location
withJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (BOOL)isEqual:(id)object;
- (id)getWithInt:(int)location;
- (NSUInteger)hash;
- (int)indexOfWithId:(id)object;
- (int)lastIndexOfWithId:(id)object;
- (id<JavaUtilListIterator>)listIterator;
- (id<JavaUtilListIterator>)listIteratorWithInt:(int)location;
- (id)removeWithInt:(int)location;
- (id)setWithInt:(int)location
          withId:(id)object;
- (id<JavaUtilList>)subListWithInt:(int)start
                           withInt:(int)end;
@end

#define JavaUtilCollections_SynchronizedRandomAccessList_serialVersionUID 1530674583602358482

@interface JavaUtilCollections_SynchronizedRandomAccessList : JavaUtilCollections_SynchronizedList < JavaUtilRandomAccess > {
}

- (id)initWithJavaUtilList:(id<JavaUtilList>)l;
- (id)initWithJavaUtilList:(id<JavaUtilList>)l
                    withId:(id)mutex;
- (id<JavaUtilList>)subListWithInt:(int)start
                           withInt:(int)end;
@end

#define JavaUtilCollections_SynchronizedMap_serialVersionUID 1978198479659022715

@interface JavaUtilCollections_SynchronizedMap : NSObject < JavaUtilMap, JavaIoSerializable > {
 @public
  id<JavaUtilMap> m_;
  id mutex_;
}

@property (nonatomic, retain) id<JavaUtilMap> m;
@property (nonatomic, retain) id mutex;

- (id)initWithJavaUtilMap:(id<JavaUtilMap>)map;
- (id)initWithJavaUtilMap:(id<JavaUtilMap>)map
                   withId:(id)mutex;
- (void)clear;
- (BOOL)containsKeyWithId:(id)key;
- (BOOL)containsValueWithId:(id)value;
- (id<JavaUtilSet>)entrySet;
- (BOOL)isEqual:(id)object;
- (id)getWithId:(id)key;
- (NSUInteger)hash;
- (BOOL)isEmpty;
- (id<JavaUtilSet>)keySet;
- (id)putWithId:(id)key
         withId:(id)value;
- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map;
- (id)removeWithId:(id)key;
- (int)size;
- (id<JavaUtilCollection>)values;
- (NSString *)description;
@end

#define JavaUtilCollections_SynchronizedSortedMap_serialVersionUID -8798146769416483793

@interface JavaUtilCollections_SynchronizedSortedMap : JavaUtilCollections_SynchronizedMap < JavaUtilSortedMap > {
 @public
  id<JavaUtilSortedMap> sm_;
}

@property (nonatomic, retain) id<JavaUtilSortedMap> sm;

- (id)initWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)map;
- (id)initWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)map
                         withId:(id)mutex;
- (id<JavaUtilComparator>)comparator;
- (id)firstKey;
- (id<JavaUtilSortedMap>)headMapWithId:(id)endKey;
- (id)lastKey;
- (id<JavaUtilSortedMap>)subMapWithId:(id)startKey
                               withId:(id)endKey;
- (id<JavaUtilSortedMap>)tailMapWithId:(id)startKey;
@end

#define JavaUtilCollections_SynchronizedSet_serialVersionUID 487447009682186044

@interface JavaUtilCollections_SynchronizedSet : JavaUtilCollections_SynchronizedCollection < JavaUtilSet > {
}

- (id)initWithJavaUtilSet:(id<JavaUtilSet>)set;
- (id)initWithJavaUtilSet:(id<JavaUtilSet>)set
                   withId:(id)mutex;
- (BOOL)isEqual:(id)object;
- (NSUInteger)hash;
@end

#define JavaUtilCollections_SynchronizedSortedSet_serialVersionUID 8695801310862127406

@interface JavaUtilCollections_SynchronizedSortedSet : JavaUtilCollections_SynchronizedSet < JavaUtilSortedSet > {
 @public
  id<JavaUtilSortedSet> ss_;
}

@property (nonatomic, retain) id<JavaUtilSortedSet> ss;

- (id)initWithJavaUtilSortedSet:(id<JavaUtilSortedSet>)set;
- (id)initWithJavaUtilSortedSet:(id<JavaUtilSortedSet>)set
                         withId:(id)mutex;
- (id<JavaUtilComparator>)comparator;
- (id)first;
- (id<JavaUtilSortedSet>)headSetWithId:(id)end;
- (id)last;
- (id<JavaUtilSortedSet>)subSetWithId:(id)start
                               withId:(id)end;
- (id<JavaUtilSortedSet>)tailSetWithId:(id)start;
@end

@interface JavaUtilCollections_UnmodifiableCollection_$1 : NSObject < JavaUtilIterator > {
 @public
  JavaUtilCollections_UnmodifiableCollection *this$0_;
  id<JavaUtilIterator> iterator_;
}

@property (nonatomic, retain) JavaUtilCollections_UnmodifiableCollection *this$0;
@property (nonatomic, retain) id<JavaUtilIterator> iterator;

- (BOOL)hasNext;
- (id)next;
- (void)remove;
- (id)initWithJavaUtilCollections_UnmodifiableCollection:(JavaUtilCollections_UnmodifiableCollection *)outer$0;
@end

#define JavaUtilCollections_UnmodifiableCollection_serialVersionUID 1820017752578914078

@interface JavaUtilCollections_UnmodifiableCollection : NSObject < JavaUtilCollection, JavaIoSerializable > {
 @public
  id<JavaUtilCollection> c_;
}

@property (nonatomic, retain) id<JavaUtilCollection> c;

- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (BOOL)addWithId:(id)object;
- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (void)clear;
- (BOOL)containsWithId:(id)object;
- (BOOL)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (BOOL)isEmpty;
- (id<JavaUtilIterator>)iterator;
- (BOOL)removeWithId:(id)object;
- (BOOL)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (BOOL)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (int)size;
- (IOSObjectArray *)toArray;
- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)array;
- (NSString *)description;
@end

#define JavaUtilCollections_UnmodifiableList_serialVersionUID -283967356065247728

@interface JavaUtilCollections_UnmodifiableList : JavaUtilCollections_UnmodifiableCollection < JavaUtilList > {
 @public
  id<JavaUtilList> list_;
}

@property (nonatomic, retain) id<JavaUtilList> list;

- (id)initWithJavaUtilList:(id<JavaUtilList>)l;
- (void)addWithInt:(int)location
            withId:(id)object;
- (BOOL)addAllWithInt:(int)location
withJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (BOOL)isEqual:(id)object;
- (id)getWithInt:(int)location;
- (NSUInteger)hash;
- (int)indexOfWithId:(id)object;
- (int)lastIndexOfWithId:(id)object;
- (id<JavaUtilListIterator>)listIterator;
- (id<JavaUtilListIterator>)listIteratorWithInt:(int)location;
- (id)removeWithInt:(int)location;
- (id)setWithInt:(int)location
          withId:(id)object;
- (id<JavaUtilList>)subListWithInt:(int)start
                           withInt:(int)end;
@end

#define JavaUtilCollections_UnmodifiableRandomAccessList_serialVersionUID -2542308836966382001

@interface JavaUtilCollections_UnmodifiableRandomAccessList : JavaUtilCollections_UnmodifiableList < JavaUtilRandomAccess > {
}

- (id)initWithJavaUtilList:(id<JavaUtilList>)l;
- (id<JavaUtilList>)subListWithInt:(int)start
                           withInt:(int)end;
@end

@interface JavaUtilCollections_UnmodifiableList_$1 : NSObject < JavaUtilListIterator > {
 @public
  JavaUtilCollections_UnmodifiableList *this$0_;
  id<JavaUtilListIterator> iterator_;
  int val$location_;
}

@property (nonatomic, retain) JavaUtilCollections_UnmodifiableList *this$0;
@property (nonatomic, retain) id<JavaUtilListIterator> iterator;
@property (nonatomic, assign) int val$location;

- (void)addWithId:(id)object;
- (BOOL)hasNext;
- (BOOL)hasPrevious;
- (id)next;
- (int)nextIndex;
- (id)previous;
- (int)previousIndex;
- (void)remove;
- (void)setWithId:(id)object;
- (id)initWithJavaUtilCollections_UnmodifiableList:(JavaUtilCollections_UnmodifiableList *)outer$1
                                           withInt:(int)outer$0;
@end

#define JavaUtilCollections_UnmodifiableSet_serialVersionUID -9215047833775013803

@interface JavaUtilCollections_UnmodifiableSet : JavaUtilCollections_UnmodifiableCollection < JavaUtilSet > {
}

- (id)initWithJavaUtilSet:(id<JavaUtilSet>)set;
- (BOOL)isEqual:(id)object;
- (NSUInteger)hash;
@end

#define JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet_serialVersionUID 7854390611657943733

@interface JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet : JavaUtilCollections_UnmodifiableSet {
}

- (id)initWithJavaUtilSet:(id<JavaUtilSet>)set;
- (id<JavaUtilIterator>)iterator;
- (IOSObjectArray *)toArray;
- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)contents;
@end

@interface JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet_UnmodifiableMapEntry : NSObject < JavaUtilMap_Entry > {
 @public
  id<JavaUtilMap_Entry> mapEntry_;
}

@property (nonatomic, retain) id<JavaUtilMap_Entry> mapEntry;

- (id)initWithJavaUtilMap_Entry:(id<JavaUtilMap_Entry>)entry;
- (BOOL)isEqual:(id)object;
- (id)getKey;
- (id)getValue;
- (NSUInteger)hash;
- (id)setValueWithId:(id)object;
- (NSString *)description;
@end

@interface JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet_$1 : NSObject < JavaUtilIterator > {
 @public
  JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet *this$0_;
  id<JavaUtilIterator> iterator_;
}

@property (nonatomic, retain) JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet *this$0;
@property (nonatomic, retain) id<JavaUtilIterator> iterator;

- (BOOL)hasNext;
- (id<JavaUtilMap_Entry>)next;
- (void)remove;
- (id)initWithJavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet:(JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet *)outer$0;
@end

#define JavaUtilCollections_UnmodifiableMap_serialVersionUID -1034234728574286014

@interface JavaUtilCollections_UnmodifiableMap : NSObject < JavaUtilMap, JavaIoSerializable > {
 @public
  id<JavaUtilMap> m_;
}

@property (nonatomic, retain) id<JavaUtilMap> m;

- (id)initWithJavaUtilMap:(id<JavaUtilMap>)map;
- (void)clear;
- (BOOL)containsKeyWithId:(id)key;
- (BOOL)containsValueWithId:(id)value;
- (id<JavaUtilSet>)entrySet;
- (BOOL)isEqual:(id)object;
- (id)getWithId:(id)key;
- (NSUInteger)hash;
- (BOOL)isEmpty;
- (id<JavaUtilSet>)keySet;
- (id)putWithId:(id)key
         withId:(id)value;
- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map;
- (id)removeWithId:(id)key;
- (int)size;
- (id<JavaUtilCollection>)values;
- (NSString *)description;
@end

#define JavaUtilCollections_UnmodifiableSortedMap_serialVersionUID -8806743815996713206

@interface JavaUtilCollections_UnmodifiableSortedMap : JavaUtilCollections_UnmodifiableMap < JavaUtilSortedMap > {
 @public
  id<JavaUtilSortedMap> sm_;
}

@property (nonatomic, retain) id<JavaUtilSortedMap> sm;

- (id)initWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)map;
- (id<JavaUtilComparator>)comparator;
- (id)firstKey;
- (id<JavaUtilSortedMap>)headMapWithId:(id)before;
- (id)lastKey;
- (id<JavaUtilSortedMap>)subMapWithId:(id)start
                               withId:(id)end;
- (id<JavaUtilSortedMap>)tailMapWithId:(id)after;
@end

#define JavaUtilCollections_UnmodifiableSortedSet_serialVersionUID -4929149591599911165

@interface JavaUtilCollections_UnmodifiableSortedSet : JavaUtilCollections_UnmodifiableSet < JavaUtilSortedSet > {
 @public
  id<JavaUtilSortedSet> ss_;
}

@property (nonatomic, retain) id<JavaUtilSortedSet> ss;

- (id)initWithJavaUtilSortedSet:(id<JavaUtilSortedSet>)set;
- (id<JavaUtilComparator>)comparator;
- (id)first;
- (id<JavaUtilSortedSet>)headSetWithId:(id)before;
- (id)last;
- (id<JavaUtilSortedSet>)subSetWithId:(id)start
                               withId:(id)end;
- (id<JavaUtilSortedSet>)tailSetWithId:(id)after;
@end

@interface JavaUtilCollections_CheckedListIterator : NSObject < JavaUtilListIterator > {
 @public
  id<JavaUtilListIterator> i_;
  IOSClass *type_;
}

@property (nonatomic, retain) id<JavaUtilListIterator> i;
@property (nonatomic, retain) IOSClass *type;

- (id)initWithJavaUtilListIterator:(id<JavaUtilListIterator>)i
                      withIOSClass:(IOSClass *)type;
- (BOOL)hasNext;
- (id)next;
- (void)remove;
- (BOOL)hasPrevious;
- (id)previous;
- (int)nextIndex;
- (int)previousIndex;
- (void)setWithId:(id)obj;
- (void)addWithId:(id)obj;
@end

#define JavaUtilCollections_CheckedCollection_serialVersionUID 1578914078182001775

@interface JavaUtilCollections_CheckedCollection : NSObject < JavaUtilCollection, JavaIoSerializable > {
 @public
  id<JavaUtilCollection> c_;
  IOSClass *type_;
}

@property (nonatomic, retain) id<JavaUtilCollection> c;
@property (nonatomic, retain) IOSClass *type;

- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)c
                    withIOSClass:(IOSClass *)type;
- (int)size;
- (BOOL)isEmpty;
- (BOOL)containsWithId:(id)obj;
- (id<JavaUtilIterator>)iterator;
- (IOSObjectArray *)toArray;
- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)arr;
- (BOOL)addWithId:(id)obj;
- (BOOL)removeWithId:(id)obj;
- (BOOL)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)c1;
- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)c1;
- (BOOL)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)c1;
- (BOOL)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)c1;
- (void)clear;
- (NSString *)description;
@end

#define JavaUtilCollections_CheckedList_serialVersionUID 65247728283967356

@interface JavaUtilCollections_CheckedList : JavaUtilCollections_CheckedCollection < JavaUtilList > {
 @public
  id<JavaUtilList> l_;
}

@property (nonatomic, retain) id<JavaUtilList> l;

- (id)initWithJavaUtilList:(id<JavaUtilList>)l
              withIOSClass:(IOSClass *)type;
- (BOOL)addAllWithInt:(int)index
withJavaUtilCollection:(id<JavaUtilCollection>)c1;
- (id)getWithInt:(int)index;
- (id)setWithInt:(int)index
          withId:(id)obj;
- (void)addWithInt:(int)index
            withId:(id)obj;
- (id)removeWithInt:(int)index;
- (int)indexOfWithId:(id)obj;
- (int)lastIndexOfWithId:(id)obj;
- (id<JavaUtilListIterator>)listIterator;
- (id<JavaUtilListIterator>)listIteratorWithInt:(int)index;
- (id<JavaUtilList>)subListWithInt:(int)fromIndex
                           withInt:(int)toIndex;
- (BOOL)isEqual:(id)obj;
- (NSUInteger)hash;
@end

#define JavaUtilCollections_CheckedRandomAccessList_serialVersionUID 1638200125423088369

@interface JavaUtilCollections_CheckedRandomAccessList : JavaUtilCollections_CheckedList < JavaUtilRandomAccess > {
}

- (id)initWithJavaUtilList:(id<JavaUtilList>)l
              withIOSClass:(IOSClass *)type;
@end

@interface JavaUtilCollections_CheckedMap_CheckedEntry : NSObject < JavaUtilMap_Entry > {
 @public
  id<JavaUtilMap_Entry> e_;
  IOSClass *valueType_;
}

@property (nonatomic, retain) id<JavaUtilMap_Entry> e;
@property (nonatomic, retain) IOSClass *valueType;

- (id)initWithJavaUtilMap_Entry:(id<JavaUtilMap_Entry>)e
                   withIOSClass:(IOSClass *)valueType;
- (id)getKey;
- (id)getValue;
- (id)setValueWithId:(id)obj;
- (BOOL)isEqual:(id)obj;
- (NSUInteger)hash;
@end

@interface JavaUtilCollections_CheckedMap_CheckedEntrySet : NSObject < JavaUtilSet > {
 @public
  id<JavaUtilSet> s_;
  IOSClass *valueType_;
}

@property (nonatomic, retain) id<JavaUtilSet> s;
@property (nonatomic, retain) IOSClass *valueType;

- (id)initWithJavaUtilSet:(id<JavaUtilSet>)s
             withIOSClass:(IOSClass *)valueType;
- (id<JavaUtilIterator>)iterator;
- (IOSObjectArray *)toArray;
- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)contents;
- (BOOL)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;
- (BOOL)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;
- (BOOL)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;
- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;
- (BOOL)removeWithId:(id)o;
- (BOOL)containsWithId:(id)o;
- (BOOL)addWithId:(id<JavaUtilMap_Entry>)o;
- (BOOL)isEmpty;
- (void)clear;
- (int)size;
- (NSUInteger)hash;
- (BOOL)isEqual:(id)object;
@end

@interface JavaUtilCollections_CheckedMap_CheckedEntrySet_CheckedEntryIterator : NSObject < JavaUtilIterator > {
 @public
  id<JavaUtilIterator> i_;
  IOSClass *valueType_;
}

@property (nonatomic, retain) id<JavaUtilIterator> i;
@property (nonatomic, retain) IOSClass *valueType;

- (id)initWithJavaUtilIterator:(id<JavaUtilIterator>)i
                  withIOSClass:(IOSClass *)valueType;
- (BOOL)hasNext;
- (void)remove;
- (id<JavaUtilMap_Entry>)next;
@end

#define JavaUtilCollections_CheckedSet_serialVersionUID 4694047833775013803

@interface JavaUtilCollections_CheckedSet : JavaUtilCollections_CheckedCollection < JavaUtilSet > {
}

- (id)initWithJavaUtilSet:(id<JavaUtilSet>)s
             withIOSClass:(IOSClass *)type;
- (BOOL)isEqual:(id)obj;
- (NSUInteger)hash;
@end

#define JavaUtilCollections_CheckedSortedSet_serialVersionUID 1599911165492914959

@interface JavaUtilCollections_CheckedSortedSet : JavaUtilCollections_CheckedSet < JavaUtilSortedSet > {
 @public
  id<JavaUtilSortedSet> ss_;
}

@property (nonatomic, retain) id<JavaUtilSortedSet> ss;

- (id)initWithJavaUtilSortedSet:(id<JavaUtilSortedSet>)s
                   withIOSClass:(IOSClass *)type;
- (id<JavaUtilComparator>)comparator;
- (id<JavaUtilSortedSet>)subSetWithId:(id)fromElement
                               withId:(id)toElement;
- (id<JavaUtilSortedSet>)headSetWithId:(id)toElement;
- (id<JavaUtilSortedSet>)tailSetWithId:(id)fromElement;
- (id)first;
- (id)last;
@end

#define JavaUtilCollections_CheckedMap_serialVersionUID 5742860141034234728

@interface JavaUtilCollections_CheckedMap : NSObject < JavaUtilMap, JavaIoSerializable > {
 @public
  id<JavaUtilMap> m_;
  IOSClass *keyType_;
  IOSClass *valueType_;
}

@property (nonatomic, retain) id<JavaUtilMap> m;
@property (nonatomic, retain) IOSClass *keyType;
@property (nonatomic, retain) IOSClass *valueType;

- (id)initWithJavaUtilMap:(id<JavaUtilMap>)m
             withIOSClass:(IOSClass *)keyType
             withIOSClass:(IOSClass *)valueType;
- (int)size;
- (BOOL)isEmpty;
- (BOOL)containsKeyWithId:(id)key;
- (BOOL)containsValueWithId:(id)value;
- (id)getWithId:(id)key;
- (id)putWithId:(id)key
         withId:(id)value;
- (id)removeWithId:(id)key;
- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map;
- (void)clear;
- (id<JavaUtilSet>)keySet;
- (id<JavaUtilCollection>)values;
- (id<JavaUtilSet>)entrySet;
- (BOOL)isEqual:(id)obj;
- (NSUInteger)hash;
- (NSString *)description;
@end

#define JavaUtilCollections_CheckedSortedMap_serialVersionUID 1599671320688067438

@interface JavaUtilCollections_CheckedSortedMap : JavaUtilCollections_CheckedMap < JavaUtilSortedMap > {
 @public
  id<JavaUtilSortedMap> sm_;
}

@property (nonatomic, retain) id<JavaUtilSortedMap> sm;

- (id)initWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)m
                   withIOSClass:(IOSClass *)keyType
                   withIOSClass:(IOSClass *)valueType;
- (id<JavaUtilComparator>)comparator;
- (id<JavaUtilSortedMap>)subMapWithId:(id)fromKey
                               withId:(id)toKey;
- (id<JavaUtilSortedMap>)headMapWithId:(id)toKey;
- (id<JavaUtilSortedMap>)tailMapWithId:(id)fromKey;
- (id)firstKey;
- (id)lastKey;
@end

#define JavaUtilCollections_SetFromMap_serialVersionUID 2454657854757543876

@interface JavaUtilCollections_SetFromMap : JavaUtilAbstractSet < JavaIoSerializable > {
 @public
  id<JavaUtilMap> m_;
  id<JavaUtilSet> backingSet_;
}

@property (nonatomic, retain) id<JavaUtilMap> m;
@property (nonatomic, retain) id<JavaUtilSet> backingSet;

- (id)initWithJavaUtilMap:(id<JavaUtilMap>)map;
- (BOOL)isEqual:(id)object;
- (NSUInteger)hash;
- (BOOL)addWithId:(id)object;
- (void)clear;
- (NSString *)description;
- (BOOL)containsWithId:(id)object;
- (BOOL)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (BOOL)isEmpty;
- (BOOL)removeWithId:(id)object;
- (BOOL)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (IOSObjectArray *)toArray;
- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)contents;
- (id<JavaUtilIterator>)iterator;
- (int)size;
@end

#define JavaUtilCollections_AsLIFOQueue_serialVersionUID 1802017725587941708

@interface JavaUtilCollections_AsLIFOQueue : JavaUtilAbstractQueue < JavaIoSerializable > {
 @public
  id<JavaUtilDeque> q_;
}

@property (nonatomic, retain) id<JavaUtilDeque> q;

- (id)initWithJavaUtilDeque:(id<JavaUtilDeque>)deque;
- (id<JavaUtilIterator>)iterator;
- (int)size;
- (BOOL)offerWithId:(id)o;
- (id)peek;
- (id)poll;
- (BOOL)addWithId:(id)o;
- (void)clear;
- (id)element;
- (id)remove;
- (BOOL)containsWithId:(id)object;
- (BOOL)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (BOOL)isEmpty;
- (BOOL)removeWithId:(id)object;
- (BOOL)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (BOOL)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (IOSObjectArray *)toArray;
- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)contents;
- (NSString *)description;
@end

@interface JavaUtilCollections_$1 : NSObject < JavaUtilEnumeration > {
 @public
  id<JavaUtilIterator> it_;
  id<JavaUtilCollection> val$c_;
}

@property (nonatomic, retain) id<JavaUtilIterator> it;
@property (nonatomic, retain) id<JavaUtilCollection> val$c;

- (BOOL)hasMoreElements;
- (id)nextElement;
- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)outer$0;
@end
