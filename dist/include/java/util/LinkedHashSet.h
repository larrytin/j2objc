//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/LinkedHashSet.java
//
//  Created by retechretech on 13-4-26.
//

@class JavaUtilHashMap;
@protocol JavaUtilCollection;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/util/HashSet.h"
#import "java/util/Set.h"

#define JavaUtilLinkedHashSet_serialVersionUID -2851667679971038690

@interface JavaUtilLinkedHashSet : JavaUtilHashSet < JavaUtilSet, NSCopying, JavaIoSerializable > {
}

- (id)init;
- (id)initWithInt:(int)capacity;
- (id)initWithInt:(int)capacity
        withFloat:(float)loadFactor;
- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (JavaUtilHashMap *)createBackingMapWithInt:(int)capacity
                                   withFloat:(float)loadFactor;
@end
