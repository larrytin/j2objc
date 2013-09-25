//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/TreeMap.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaUtilTreeMap_H_
#define _JavaUtilTreeMap_H_

@class IOSObjectArray;
@class JavaUtilTreeMap_MapEntry;
@class JavaUtilTreeMap_Node;
@protocol JavaLangComparable;
@protocol JavaUtilCollection;
@protocol JavaUtilComparator;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#include "java/io/Serializable.h"
#include "java/util/AbstractCollection.h"
#include "java/util/AbstractMap.h"
#include "java/util/AbstractSet.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/SortedMap.h"

#define JavaUtilTreeMap_serialVersionUID 919286545866124006

@interface JavaUtilTreeMap : JavaUtilAbstractMap < JavaUtilSortedMap, NSCopying, JavaIoSerializable > {
 @public
  int size__;
  id<JavaUtilComparator> comparator__;
  int modCount_;
  id<JavaUtilSet> entrySet__;
  JavaUtilTreeMap_Node *root_;
}

+ (id<JavaLangComparable>)toComparableWithId:(id)obj;
- (id)init;
- (id)initWithJavaUtilComparator:(id<JavaUtilComparator>)comparator;
- (id)initWithJavaUtilMap:(id<JavaUtilMap>)map;
- (id)initWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)map;
- (JavaUtilTreeMap_Node *)addToLastWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)last
                                                     withId:(id)key
                                                     withId:(id)value;
- (void)clear;
- (id)clone;
+ (JavaUtilTreeMap_Node *)successorWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
- (id<JavaUtilComparator>)comparator;
- (BOOL)containsKeyWithId:(id)key;
- (BOOL)containsValueWithId:(id)value;
- (id<JavaUtilSet>)entrySet;
- (id)firstKey;
- (id)getWithId:(id)key;
- (int)cmpWithJavaLangComparable:(id<JavaLangComparable>)object
                          withId:(id)key1
                          withId:(id)key2;
- (id<JavaUtilSortedMap>)headMapWithId:(id)endKey;
- (id<JavaUtilSet>)keySet;
- (id)lastKey;
+ (JavaUtilTreeMap_Node *)minimumWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
+ (JavaUtilTreeMap_Node *)maximumWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
- (id)putWithId:(id)key
         withId:(id)value;
- (void)appendFromLeftWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                                        withId:(id)keyObj
                                        withId:(id)value;
- (void)attachToLeftWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                    withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)newNode;
- (void)appendFromRightWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                                         withId:(id)keyObj
                                         withId:(id)value;
- (void)attachToRightWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)newNode;
- (JavaUtilTreeMap_Node *)createNodeWithId:(id)keyObj
                                    withId:(id)value;
- (void)balanceWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
- (void)rightRotateWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
- (void)leftRotateWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map;
- (id)removeWithId:(id)key;
- (void)removeLeftmostWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node;
- (void)removeRightmostWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node;
- (void)removeMiddleElementWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                                            withInt:(int)index;
- (void)removeFromIteratorWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                                           withInt:(int)index;
- (void)deleteNodeWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node;
- (void)attachToParentNoFixupWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)toDelete
                             withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)toConnect;
- (void)attachToParentWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)toDelete
                      withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)toConnect;
- (void)attachNullToParentWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)toDelete;
- (void)fixNextChainWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node;
- (void)fixupWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
- (int)size;
- (id<JavaUtilSortedMap>)subMapWithId:(id)startKey
                               withId:(id)endKey;
- (id<JavaUtilSortedMap>)tailMapWithId:(id)startKey;
- (id<JavaUtilCollection>)values;
- (JavaUtilTreeMap_MapEntry *)newMapEntryWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                                                          withInt:(int)offset OBJC_METHOD_FAMILY_NONE;
- (id)copyWithZone:(NSZone *)zone;
- (void)copyAllFieldsTo:(JavaUtilTreeMap *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilTreeMap, comparator__, id<JavaUtilComparator>)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap, entrySet__, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap, root_, JavaUtilTreeMap_Node *)

@interface JavaUtilTreeMap_MapEntry : NSObject < JavaUtilMap_Entry, NSCopying > {
 @public
  JavaUtilTreeMap *this$0_;
  int offset_;
  JavaUtilTreeMap_Node *node_;
  id key_;
}

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)outer$
     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                      withInt:(int)offset;
- (id)clone;
- (BOOL)isEqual:(id)object;
- (id)getKey;
- (id)getValue;
- (NSUInteger)hash;
- (id)setValueWithId:(id)object;
- (NSString *)description;
- (id)copyWithZone:(NSZone *)zone;
- (void)copyAllFieldsTo:(JavaUtilTreeMap_MapEntry *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilTreeMap_MapEntry, this$0_, JavaUtilTreeMap *)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap_MapEntry, node_, JavaUtilTreeMap_Node *)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap_MapEntry, key_, id)

#define JavaUtilTreeMap_Node_NODE_SIZE 64

@interface JavaUtilTreeMap_Node : NSObject < NSCopying > {
 @public
  __weak JavaUtilTreeMap_Node *prev_;
  __weak JavaUtilTreeMap_Node *next_;
  __weak JavaUtilTreeMap_Node *parent_;
  JavaUtilTreeMap_Node *left_;
  JavaUtilTreeMap_Node *right_;
  IOSObjectArray *values_;
  IOSObjectArray *keys_;
  int left_idx_;
  int right_idx_;
  int size_;
  BOOL color_;
}

+ (int)NODE_SIZE;
- (id)init;
- (JavaUtilTreeMap_Node *)cloneWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)parent;
- (id)copyWithZone:(NSZone *)zone;
- (void)copyAllFieldsTo:(JavaUtilTreeMap_Node *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilTreeMap_Node, left_, JavaUtilTreeMap_Node *)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap_Node, right_, JavaUtilTreeMap_Node *)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap_Node, values_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap_Node, keys_, IOSObjectArray *)

@interface JavaUtilTreeMap_AbstractMapIterator : NSObject {
 @public
  JavaUtilTreeMap *backingMap_;
  int expectedModCount_;
  JavaUtilTreeMap_Node *node_;
  JavaUtilTreeMap_Node *lastNode_;
  int offset_;
  int lastOffset_;
}

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map
     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                      withInt:(int)startOffset;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map
     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (BOOL)hasNext;
- (void)makeNext;
- (void)remove;
- (void)copyAllFieldsTo:(JavaUtilTreeMap_AbstractMapIterator *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilTreeMap_AbstractMapIterator, backingMap_, JavaUtilTreeMap *)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap_AbstractMapIterator, node_, JavaUtilTreeMap_Node *)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap_AbstractMapIterator, lastNode_, JavaUtilTreeMap_Node *)

@interface JavaUtilTreeMap_UnboundedEntryIterator : JavaUtilTreeMap_AbstractMapIterator < JavaUtilIterator > {
}

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map
     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                      withInt:(int)startOffset;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (id<JavaUtilMap_Entry>)next;
@end

@interface JavaUtilTreeMap_UnboundedKeyIterator : JavaUtilTreeMap_AbstractMapIterator < JavaUtilIterator > {
}

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map
     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                      withInt:(int)startOffset;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (id)next;
@end

@interface JavaUtilTreeMap_UnboundedValueIterator : JavaUtilTreeMap_AbstractMapIterator < JavaUtilIterator > {
}

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map
     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                      withInt:(int)startOffset;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (id)next;
@end

@interface JavaUtilTreeMap_BoundedMapIterator : JavaUtilTreeMap_AbstractMapIterator {
 @public
  JavaUtilTreeMap_Node *finalNode_;
  int finalOffset_;
}

- (id)initWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                           withInt:(int)startOffset
               withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)finalNode
                           withInt:(int)finalOffset;
- (id)initWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
               withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)finalNode
                           withInt:(int)finalOffset;
- (id)initWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                           withInt:(int)startOffset
               withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)finalNode;
- (void)makeBoundedNext;
- (void)copyAllFieldsTo:(JavaUtilTreeMap_BoundedMapIterator *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilTreeMap_BoundedMapIterator, finalNode_, JavaUtilTreeMap_Node *)

@interface JavaUtilTreeMap_BoundedEntryIterator : JavaUtilTreeMap_BoundedMapIterator < JavaUtilIterator > {
}

- (id)initWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                           withInt:(int)startOffset
               withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)finalNode
                           withInt:(int)finalOffset;
- (id<JavaUtilMap_Entry>)next;
@end

@interface JavaUtilTreeMap_BoundedKeyIterator : JavaUtilTreeMap_BoundedMapIterator < JavaUtilIterator > {
}

- (id)initWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                           withInt:(int)startOffset
               withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)finalNode
                           withInt:(int)finalOffset;
- (id)next;
@end

@interface JavaUtilTreeMap_BoundedValueIterator : JavaUtilTreeMap_BoundedMapIterator < JavaUtilIterator > {
}

- (id)initWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                           withInt:(int)startOffset
               withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)finalNode
                           withInt:(int)finalOffset;
- (id)next;
@end

#define JavaUtilTreeMap_SubMap_serialVersionUID -6520786458950516097

@interface JavaUtilTreeMap_SubMap : JavaUtilAbstractMap < JavaUtilSortedMap, JavaIoSerializable > {
 @public
  JavaUtilTreeMap *backingMap_;
  BOOL hasStart_, hasEnd_;
  id startKey_, endKey_;
  id<JavaUtilSet> entrySet__;
  int firstKeyModCount_;
  int lastKeyModCount_;
  JavaUtilTreeMap_Node *firstKeyNode_;
  int firstKeyIndex_;
  JavaUtilTreeMap_Node *lastKeyNode_;
  int lastKeyIndex_;
}

- (id)initWithId:(id)start
withJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (id)initWithId:(id)start
withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withId:(id)end;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map
                       withId:(id)end;
- (void)checkRangeWithId:(id)key;
- (BOOL)isInRangeWithId:(id)key;
- (BOOL)checkUpperBoundWithId:(id)key;
- (BOOL)checkLowerBoundWithId:(id)key;
- (id<JavaUtilComparator>)comparator;
- (BOOL)containsKeyWithId:(id)key;
- (void)clear;
- (BOOL)containsValueWithId:(id)value;
- (id<JavaUtilSet>)entrySet;
- (void)setFirstKey;
- (id)firstKey;
- (id)getWithId:(id)key;
- (id<JavaUtilSortedMap>)headMapWithId:(id)endKey;
- (BOOL)isEmpty;
- (id<JavaUtilSet>)keySet;
- (void)setLastKey;
- (id)lastKey;
- (id)putWithId:(id)key
         withId:(id)value;
- (id)removeWithId:(id)key;
- (id<JavaUtilSortedMap>)subMapWithId:(id)startKey
                               withId:(id)endKey;
- (id<JavaUtilSortedMap>)tailMapWithId:(id)startKey;
- (id<JavaUtilCollection>)values;
- (int)size;
- (void)copyAllFieldsTo:(JavaUtilTreeMap_SubMap *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilTreeMap_SubMap, backingMap_, JavaUtilTreeMap *)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap_SubMap, startKey_, id)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap_SubMap, endKey_, id)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap_SubMap, entrySet__, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap_SubMap, firstKeyNode_, JavaUtilTreeMap_Node *)
J2OBJC_FIELD_SETTER(JavaUtilTreeMap_SubMap, lastKeyNode_, JavaUtilTreeMap_Node *)

@interface JavaUtilTreeMap_SubMapEntrySet : JavaUtilAbstractSet < JavaUtilSet > {
 @public
  __weak JavaUtilTreeMap_SubMap *subMap_;
}

- (id)initWithJavaUtilTreeMap_SubMap:(JavaUtilTreeMap_SubMap *)map;
- (BOOL)isEmpty;
- (id<JavaUtilIterator>)iterator;
- (int)size;
- (BOOL)containsWithId:(id)object;
- (BOOL)removeWithId:(id)object;
- (void)copyAllFieldsTo:(JavaUtilTreeMap_SubMapEntrySet *)other;
@end

@interface JavaUtilTreeMap_SubMapKeySet : JavaUtilAbstractSet < JavaUtilSet > {
 @public
  __weak JavaUtilTreeMap_SubMap *subMap_;
}

- (id)initWithJavaUtilTreeMap_SubMap:(JavaUtilTreeMap_SubMap *)map;
- (BOOL)containsWithId:(id)object;
- (BOOL)isEmpty;
- (int)size;
- (BOOL)removeWithId:(id)object;
- (id<JavaUtilIterator>)iterator;
- (void)copyAllFieldsTo:(JavaUtilTreeMap_SubMapKeySet *)other;
@end

@interface JavaUtilTreeMap_SubMapValuesCollection : JavaUtilAbstractCollection {
 @public
  __weak JavaUtilTreeMap_SubMap *subMap_;
}

- (id)initWithJavaUtilTreeMap_SubMap:(JavaUtilTreeMap_SubMap *)subMap;
- (BOOL)isEmpty;
- (id<JavaUtilIterator>)iterator;
- (int)size;
- (void)copyAllFieldsTo:(JavaUtilTreeMap_SubMapValuesCollection *)other;
@end

@interface JavaUtilTreeMap_EntrySet : JavaUtilAbstractSet {
 @public
  __weak JavaUtilTreeMap *this$0_;
}

- (int)size;
- (void)clear;
- (BOOL)containsWithId:(id)object;
- (BOOL)removeWithId:(id)object;
- (id<JavaUtilIterator>)iterator;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)outer$;
@end

@interface JavaUtilTreeMap_KeySet : JavaUtilAbstractSet {
 @public
  __weak JavaUtilTreeMap *map_;
}

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (BOOL)containsWithId:(id)object;
- (int)size;
- (void)clear;
- (BOOL)removeWithId:(id)object;
- (id<JavaUtilIterator>)iterator;
- (void)copyAllFieldsTo:(JavaUtilTreeMap_KeySet *)other;
@end

@interface JavaUtilTreeMap_ValuesCollection : JavaUtilAbstractCollection {
 @public
  __weak JavaUtilTreeMap *map_;
}

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (BOOL)containsWithId:(id)object;
- (int)size;
- (void)clear;
- (id<JavaUtilIterator>)iterator;
- (void)copyAllFieldsTo:(JavaUtilTreeMap_ValuesCollection *)other;
@end

#endif // _JavaUtilTreeMap_H_
