//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/Arrays.java
//
//  Created by retechretech on 13-4-26.
//

@class IOSBooleanArray;
@class IOSByteArray;
@class IOSCharArray;
@class IOSDoubleArray;
@class IOSFloatArray;
@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;
@class IOSShortArray;
@class JavaLangStringBuilder;
@protocol JavaLangComparable;
@protocol JavaUtilComparator;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/util/AbstractList.h"
#import "java/util/List.h"
#import "java/util/RandomAccess.h"

#define JavaUtilArrays_SIMPLE_LENGTH 7

@interface JavaUtilArrays : NSObject {
}

- (id)init;
+ (id<JavaUtilList>)asListWithNSObjectArray:(IOSObjectArray *)array;
+ (int)binarySearchWithJavaLangByteArray:(IOSByteArray *)array
                                withChar:(char)value;
+ (int)binarySearchWithJavaLangByteArray:(IOSByteArray *)array
                                 withInt:(int)startIndex
                                 withInt:(int)endIndex
                                withChar:(char)value;
+ (int)binarySearchWithJavaLangCharacterArray:(IOSCharArray *)array
                                  withUnichar:(unichar)value;
+ (int)binarySearchWithJavaLangCharacterArray:(IOSCharArray *)array
                                      withInt:(int)startIndex
                                      withInt:(int)endIndex
                                  withUnichar:(unichar)value;
+ (int)binarySearchWithJavaLangDoubleArray:(IOSDoubleArray *)array
                                withDouble:(double)value;
+ (int)binarySearchWithJavaLangDoubleArray:(IOSDoubleArray *)array
                                   withInt:(int)startIndex
                                   withInt:(int)endIndex
                                withDouble:(double)value;
+ (int)binarySearchWithJavaLangFloatArray:(IOSFloatArray *)array
                                withFloat:(float)value;
+ (int)binarySearchWithJavaLangFloatArray:(IOSFloatArray *)array
                                  withInt:(int)startIndex
                                  withInt:(int)endIndex
                                withFloat:(float)value;
+ (int)binarySearchWithJavaLangIntegerArray:(IOSIntArray *)array
                                    withInt:(int)value;
+ (int)binarySearchWithJavaLangIntegerArray:(IOSIntArray *)array
                                    withInt:(int)startIndex
                                    withInt:(int)endIndex
                                    withInt:(int)value;
+ (int)binarySearchWithJavaLangLongArray:(IOSLongArray *)array
                             withLongInt:(long long int)value;
+ (int)binarySearchWithJavaLangLongArray:(IOSLongArray *)array
                                 withInt:(int)startIndex
                                 withInt:(int)endIndex
                             withLongInt:(long long int)value;
+ (int)binarySearchWithNSObjectArray:(IOSObjectArray *)array
                              withId:(id)value;
+ (int)binarySearchWithNSObjectArray:(IOSObjectArray *)array
                             withInt:(int)startIndex
                             withInt:(int)endIndex
                              withId:(id)value;
+ (int)binarySearchWithNSObjectArray:(IOSObjectArray *)array
                              withId:(id)value
              withJavaUtilComparator:(id<JavaUtilComparator>)comparator;
+ (int)binarySearchWithNSObjectArray:(IOSObjectArray *)array
                             withInt:(int)startIndex
                             withInt:(int)endIndex
                              withId:(id)value
              withJavaUtilComparator:(id<JavaUtilComparator>)comparator;
+ (int)binarySearchWithJavaLangShortArray:(IOSShortArray *)array
                             withShortInt:(short int)value;
+ (int)binarySearchWithJavaLangShortArray:(IOSShortArray *)array
                                  withInt:(int)startIndex
                                  withInt:(int)endIndex
                             withShortInt:(short int)value;
+ (void)checkBinarySearchBoundsWithInt:(int)startIndex
                               withInt:(int)endIndex
                               withInt:(int)length;
+ (void)fillWithJavaLangByteArray:(IOSByteArray *)array
                         withChar:(char)value;
+ (void)fillWithJavaLangByteArray:(IOSByteArray *)array
                          withInt:(int)start
                          withInt:(int)end
                         withChar:(char)value;
+ (void)fillWithJavaLangShortArray:(IOSShortArray *)array
                      withShortInt:(short int)value;
+ (void)fillWithJavaLangShortArray:(IOSShortArray *)array
                           withInt:(int)start
                           withInt:(int)end
                      withShortInt:(short int)value;
+ (void)fillWithJavaLangCharacterArray:(IOSCharArray *)array
                           withUnichar:(unichar)value;
+ (void)fillWithJavaLangCharacterArray:(IOSCharArray *)array
                               withInt:(int)start
                               withInt:(int)end
                           withUnichar:(unichar)value;
+ (void)fillWithJavaLangIntegerArray:(IOSIntArray *)array
                             withInt:(int)value;
+ (void)fillWithJavaLangIntegerArray:(IOSIntArray *)array
                             withInt:(int)start
                             withInt:(int)end
                             withInt:(int)value;
+ (void)fillWithJavaLangLongArray:(IOSLongArray *)array
                      withLongInt:(long long int)value;
+ (void)fillWithJavaLangLongArray:(IOSLongArray *)array
                          withInt:(int)start
                          withInt:(int)end
                      withLongInt:(long long int)value;
+ (void)fillWithJavaLangFloatArray:(IOSFloatArray *)array
                         withFloat:(float)value;
+ (void)fillWithJavaLangFloatArray:(IOSFloatArray *)array
                           withInt:(int)start
                           withInt:(int)end
                         withFloat:(float)value;
+ (void)fillWithJavaLangDoubleArray:(IOSDoubleArray *)array
                         withDouble:(double)value;
+ (void)fillWithJavaLangDoubleArray:(IOSDoubleArray *)array
                            withInt:(int)start
                            withInt:(int)end
                         withDouble:(double)value;
+ (void)fillWithJavaLangBooleanArray:(IOSBooleanArray *)array
                            withBOOL:(BOOL)value;
+ (void)fillWithJavaLangBooleanArray:(IOSBooleanArray *)array
                             withInt:(int)start
                             withInt:(int)end
                            withBOOL:(BOOL)value;
+ (void)fillWithNSObjectArray:(IOSObjectArray *)array
                       withId:(id)value;
+ (void)fillWithNSObjectArray:(IOSObjectArray *)array
                      withInt:(int)start
                      withInt:(int)end
                       withId:(id)value;
+ (int)hashCodeWithJavaLangBooleanArray:(IOSBooleanArray *)array;
+ (int)hashCodeWithJavaLangIntegerArray:(IOSIntArray *)array;
+ (int)hashCodeWithJavaLangShortArray:(IOSShortArray *)array;
+ (int)hashCodeWithJavaLangCharacterArray:(IOSCharArray *)array;
+ (int)hashCodeWithJavaLangByteArray:(IOSByteArray *)array;
+ (int)hashCodeWithJavaLangLongArray:(IOSLongArray *)array;
+ (int)hashCodeWithJavaLangFloatArray:(IOSFloatArray *)array;
+ (int)hashCodeWithJavaLangDoubleArray:(IOSDoubleArray *)array;
+ (int)hashCodeWithNSObjectArray:(IOSObjectArray *)array;
+ (int)deepHashCodeWithNSObjectArray:(IOSObjectArray *)array;
+ (BOOL)equalsWithJavaLangByteArray:(IOSByteArray *)array1
              withJavaLangByteArray:(IOSByteArray *)array2;
+ (BOOL)equalsWithJavaLangShortArray:(IOSShortArray *)array1
              withJavaLangShortArray:(IOSShortArray *)array2;
+ (BOOL)equalsWithJavaLangCharacterArray:(IOSCharArray *)array1
              withJavaLangCharacterArray:(IOSCharArray *)array2;
+ (BOOL)equalsWithJavaLangIntegerArray:(IOSIntArray *)array1
              withJavaLangIntegerArray:(IOSIntArray *)array2;
+ (BOOL)equalsWithJavaLangLongArray:(IOSLongArray *)array1
              withJavaLangLongArray:(IOSLongArray *)array2;
+ (BOOL)equalsWithJavaLangFloatArray:(IOSFloatArray *)array1
              withJavaLangFloatArray:(IOSFloatArray *)array2;
+ (BOOL)equalsWithJavaLangDoubleArray:(IOSDoubleArray *)array1
              withJavaLangDoubleArray:(IOSDoubleArray *)array2;
+ (BOOL)equalsWithJavaLangBooleanArray:(IOSBooleanArray *)array1
              withJavaLangBooleanArray:(IOSBooleanArray *)array2;
+ (BOOL)equalsWithNSObjectArray:(IOSObjectArray *)array1
              withNSObjectArray:(IOSObjectArray *)array2;
+ (BOOL)deepEqualsWithNSObjectArray:(IOSObjectArray *)array1
                  withNSObjectArray:(IOSObjectArray *)array2;
+ (BOOL)isSameWithDouble:(double)double1
              withDouble:(double)double2;
+ (BOOL)lessThanWithDouble:(double)double1
                withDouble:(double)double2;
+ (BOOL)isSameWithFloat:(float)float1
              withFloat:(float)float2;
+ (BOOL)lessThanWithFloat:(float)float1
                withFloat:(float)float2;
+ (int)med3WithJavaLangByteArray:(IOSByteArray *)array
                         withInt:(int)a
                         withInt:(int)b
                         withInt:(int)c;
+ (int)med3WithJavaLangCharacterArray:(IOSCharArray *)array
                              withInt:(int)a
                              withInt:(int)b
                              withInt:(int)c;
+ (int)med3WithJavaLangDoubleArray:(IOSDoubleArray *)array
                           withInt:(int)a
                           withInt:(int)b
                           withInt:(int)c;
+ (int)med3WithJavaLangFloatArray:(IOSFloatArray *)array
                          withInt:(int)a
                          withInt:(int)b
                          withInt:(int)c;
+ (int)med3WithJavaLangIntegerArray:(IOSIntArray *)array
                            withInt:(int)a
                            withInt:(int)b
                            withInt:(int)c;
+ (int)med3WithJavaLangLongArray:(IOSLongArray *)array
                         withInt:(int)a
                         withInt:(int)b
                         withInt:(int)c;
+ (int)med3WithJavaLangShortArray:(IOSShortArray *)array
                          withInt:(int)a
                          withInt:(int)b
                          withInt:(int)c;
+ (void)sortWithJavaLangByteArray:(IOSByteArray *)array;
+ (void)sortWithJavaLangByteArray:(IOSByteArray *)array
                          withInt:(int)start
                          withInt:(int)end;
+ (void)checkBoundsWithInt:(int)arrLength
                   withInt:(int)start
                   withInt:(int)end;
+ (void)sortWithInt:(int)start
            withInt:(int)end
withJavaLangByteArray:(IOSByteArray *)array;
+ (void)sortWithJavaLangCharacterArray:(IOSCharArray *)array;
+ (void)sortWithJavaLangCharacterArray:(IOSCharArray *)array
                               withInt:(int)start
                               withInt:(int)end;
+ (void)sortWithInt:(int)start
            withInt:(int)end
withJavaLangCharacterArray:(IOSCharArray *)array;
+ (void)sortWithJavaLangDoubleArray:(IOSDoubleArray *)array;
+ (void)sortWithJavaLangDoubleArray:(IOSDoubleArray *)array
                            withInt:(int)start
                            withInt:(int)end;
+ (void)sortWithInt:(int)start
            withInt:(int)end
withJavaLangDoubleArray:(IOSDoubleArray *)array;
+ (void)sortWithJavaLangFloatArray:(IOSFloatArray *)array;
+ (void)sortWithJavaLangFloatArray:(IOSFloatArray *)array
                           withInt:(int)start
                           withInt:(int)end;
+ (void)sortWithInt:(int)start
            withInt:(int)end
withJavaLangFloatArray:(IOSFloatArray *)array;
+ (void)sortWithJavaLangIntegerArray:(IOSIntArray *)array;
+ (void)sortWithJavaLangIntegerArray:(IOSIntArray *)array
                             withInt:(int)start
                             withInt:(int)end;
+ (void)sortWithInt:(int)start
            withInt:(int)end
withJavaLangIntegerArray:(IOSIntArray *)array;
+ (void)sortWithJavaLangLongArray:(IOSLongArray *)array;
+ (void)sortWithJavaLangLongArray:(IOSLongArray *)array
                          withInt:(int)start
                          withInt:(int)end;
+ (void)sortWithInt:(int)start
            withInt:(int)end
withJavaLangLongArray:(IOSLongArray *)array;
+ (void)sortWithNSObjectArray:(IOSObjectArray *)array;
+ (void)sortWithNSObjectArray:(IOSObjectArray *)array
                      withInt:(int)start
                      withInt:(int)end;
+ (void)sortWithInt:(int)start
            withInt:(int)end
  withNSObjectArray:(IOSObjectArray *)array;
+ (void)swapWithInt:(int)a
            withInt:(int)b
  withNSObjectArray:(IOSObjectArray *)arr;
+ (void)mergeSortWithNSObjectArray:(IOSObjectArray *)inArg
                 withNSObjectArray:(IOSObjectArray *)outArg
                           withInt:(int)start
                           withInt:(int)end;
+ (void)mergeSortWithNSObjectArray:(IOSObjectArray *)inArg
                 withNSObjectArray:(IOSObjectArray *)outArg
                           withInt:(int)start
                           withInt:(int)end
            withJavaUtilComparator:(id<JavaUtilComparator>)c;
+ (int)findWithNSObjectArray:(IOSObjectArray *)arr
      withJavaLangComparable:(id<JavaLangComparable>)val
                     withInt:(int)bnd
                     withInt:(int)l
                     withInt:(int)r;
+ (int)findWithNSObjectArray:(IOSObjectArray *)arr
                      withId:(id)val
                     withInt:(int)bnd
                     withInt:(int)l
                     withInt:(int)r
      withJavaUtilComparator:(id<JavaUtilComparator>)c;
+ (int)medCharWithInt:(int)a
              withInt:(int)b
              withInt:(int)c
    withNSStringArray:(IOSObjectArray *)arr
              withInt:(int)id_;
+ (int)charAtWithNSString:(NSString *)str
                  withInt:(int)i;
+ (void)copySwapWithNSObjectArray:(IOSObjectArray *)src
                          withInt:(int)from
                withNSObjectArray:(IOSObjectArray *)dst
                          withInt:(int)to
                          withInt:(int)len OBJC_METHOD_FAMILY_NONE;
+ (void)stableStringSortWithNSStringArray:(IOSObjectArray *)arr
                                  withInt:(int)start
                                  withInt:(int)end;
+ (void)stableStringSortWithNSStringArray:(IOSObjectArray *)arr
                        withNSStringArray:(IOSObjectArray *)src
                        withNSStringArray:(IOSObjectArray *)dst
                                  withInt:(int)start
                                  withInt:(int)end
                                  withInt:(int)chId;
+ (void)sortWithNSObjectArray:(IOSObjectArray *)array
                      withInt:(int)start
                      withInt:(int)end
       withJavaUtilComparator:(id<JavaUtilComparator>)comparator;
+ (void)sortWithInt:(int)start
            withInt:(int)end
  withNSObjectArray:(IOSObjectArray *)array
withJavaUtilComparator:(id<JavaUtilComparator>)comparator;
+ (void)sortWithNSObjectArray:(IOSObjectArray *)array
       withJavaUtilComparator:(id<JavaUtilComparator>)comparator;
+ (void)sortWithJavaLangShortArray:(IOSShortArray *)array;
+ (void)sortWithJavaLangShortArray:(IOSShortArray *)array
                           withInt:(int)start
                           withInt:(int)end;
+ (void)sortWithInt:(int)start
            withInt:(int)end
withJavaLangShortArray:(IOSShortArray *)array;
+ (NSString *)toStringWithJavaLangBooleanArray:(IOSBooleanArray *)array;
+ (NSString *)toStringWithJavaLangByteArray:(IOSByteArray *)array;
+ (NSString *)toStringWithJavaLangCharacterArray:(IOSCharArray *)array;
+ (NSString *)toStringWithJavaLangDoubleArray:(IOSDoubleArray *)array;
+ (NSString *)toStringWithJavaLangFloatArray:(IOSFloatArray *)array;
+ (NSString *)toStringWithJavaLangIntegerArray:(IOSIntArray *)array;
+ (NSString *)toStringWithJavaLangLongArray:(IOSLongArray *)array;
+ (NSString *)toStringWithJavaLangShortArray:(IOSShortArray *)array;
+ (NSString *)toStringWithNSObjectArray:(IOSObjectArray *)array;
+ (NSString *)deepToStringWithNSObjectArray:(IOSObjectArray *)array;
+ (void)deepToStringImplWithNSObjectArray:(IOSObjectArray *)array
                        withNSObjectArray:(IOSObjectArray *)origArrays
                withJavaLangStringBuilder:(JavaLangStringBuilder *)sb;
+ (BOOL)deepToStringImplContainsWithNSObjectArray:(IOSObjectArray *)origArrays
                                           withId:(id)array;
+ (IOSBooleanArray *)copyOfWithJavaLangBooleanArray:(IOSBooleanArray *)original
                                            withInt:(int)newLength OBJC_METHOD_FAMILY_NONE;
+ (IOSByteArray *)copyOfWithJavaLangByteArray:(IOSByteArray *)original
                                      withInt:(int)newLength OBJC_METHOD_FAMILY_NONE;
+ (IOSCharArray *)copyOfWithJavaLangCharacterArray:(IOSCharArray *)original
                                           withInt:(int)newLength OBJC_METHOD_FAMILY_NONE;
+ (IOSDoubleArray *)copyOfWithJavaLangDoubleArray:(IOSDoubleArray *)original
                                          withInt:(int)newLength OBJC_METHOD_FAMILY_NONE;
+ (IOSFloatArray *)copyOfWithJavaLangFloatArray:(IOSFloatArray *)original
                                        withInt:(int)newLength OBJC_METHOD_FAMILY_NONE;
+ (IOSIntArray *)copyOfWithJavaLangIntegerArray:(IOSIntArray *)original
                                        withInt:(int)newLength OBJC_METHOD_FAMILY_NONE;
+ (IOSLongArray *)copyOfWithJavaLangLongArray:(IOSLongArray *)original
                                      withInt:(int)newLength OBJC_METHOD_FAMILY_NONE;
+ (IOSShortArray *)copyOfWithJavaLangShortArray:(IOSShortArray *)original
                                        withInt:(int)newLength OBJC_METHOD_FAMILY_NONE;
+ (IOSObjectArray *)copyOfWithNSObjectArray:(IOSObjectArray *)original
                                    withInt:(int)newLength OBJC_METHOD_FAMILY_NONE;
+ (IOSObjectArray *)copyOfWithNSObjectArray:(IOSObjectArray *)original
                                    withInt:(int)newLength
                               withIOSClass:(IOSClass *)newType OBJC_METHOD_FAMILY_NONE;
+ (IOSBooleanArray *)copyOfRangeWithJavaLangBooleanArray:(IOSBooleanArray *)original
                                                 withInt:(int)start
                                                 withInt:(int)end OBJC_METHOD_FAMILY_NONE;
+ (IOSByteArray *)copyOfRangeWithJavaLangByteArray:(IOSByteArray *)original
                                           withInt:(int)start
                                           withInt:(int)end OBJC_METHOD_FAMILY_NONE;
+ (IOSCharArray *)copyOfRangeWithJavaLangCharacterArray:(IOSCharArray *)original
                                                withInt:(int)start
                                                withInt:(int)end OBJC_METHOD_FAMILY_NONE;
+ (IOSDoubleArray *)copyOfRangeWithJavaLangDoubleArray:(IOSDoubleArray *)original
                                               withInt:(int)start
                                               withInt:(int)end OBJC_METHOD_FAMILY_NONE;
+ (IOSFloatArray *)copyOfRangeWithJavaLangFloatArray:(IOSFloatArray *)original
                                             withInt:(int)start
                                             withInt:(int)end OBJC_METHOD_FAMILY_NONE;
+ (IOSIntArray *)copyOfRangeWithJavaLangIntegerArray:(IOSIntArray *)original
                                             withInt:(int)start
                                             withInt:(int)end OBJC_METHOD_FAMILY_NONE;
+ (IOSLongArray *)copyOfRangeWithJavaLangLongArray:(IOSLongArray *)original
                                           withInt:(int)start
                                           withInt:(int)end OBJC_METHOD_FAMILY_NONE;
+ (IOSShortArray *)copyOfRangeWithJavaLangShortArray:(IOSShortArray *)original
                                             withInt:(int)start
                                             withInt:(int)end OBJC_METHOD_FAMILY_NONE;
+ (IOSObjectArray *)copyOfRangeWithNSObjectArray:(IOSObjectArray *)original
                                         withInt:(int)start
                                         withInt:(int)end OBJC_METHOD_FAMILY_NONE;
+ (IOSObjectArray *)copyOfRangeWithNSObjectArray:(IOSObjectArray *)original
                                         withInt:(int)start
                                         withInt:(int)end
                                    withIOSClass:(IOSClass *)newType OBJC_METHOD_FAMILY_NONE;
@end

#define JavaUtilArrays_ArrayList_serialVersionUID -2764017481108945198

@interface JavaUtilArrays_ArrayList : JavaUtilAbstractList < JavaUtilList, JavaIoSerializable, JavaUtilRandomAccess > {
 @public
  IOSObjectArray *a_;
}

@property (nonatomic, retain) IOSObjectArray *a;

- (id)initWithNSObjectArray:(IOSObjectArray *)storage;
- (BOOL)containsWithId:(id)object;
- (id)getWithInt:(int)location;
- (int)indexOfWithId:(id)object;
- (int)lastIndexOfWithId:(id)object;
- (id)setWithInt:(int)location
          withId:(id)object;
- (int)size;
@end
