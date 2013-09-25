//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/concurrent/atomic/AtomicMarkableReference.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaUtilConcurrentAtomicAtomicMarkableReference_H_
#define _JavaUtilConcurrentAtomicAtomicMarkableReference_H_

@class IOSBooleanArray;
@class JavaUtilConcurrentAtomicAtomicMarkableReference_Pair;

#import "JreEmulation.h"

@interface JavaUtilConcurrentAtomicAtomicMarkableReference : NSObject {
 @public
  JavaUtilConcurrentAtomicAtomicMarkableReference_Pair *pair_;
}

- (id)initWithId:(id)initialRef
     withBoolean:(BOOL)initialMark;
- (id)getReference;
- (BOOL)isMarked;
- (id)getWithBooleanArray:(IOSBooleanArray *)markHolder;
- (BOOL)weakCompareAndSetWithId:(id)expectedReference
                         withId:(id)newReference
                    withBoolean:(BOOL)expectedMark
                    withBoolean:(BOOL)newMark;
- (BOOL)compareAndSetWithId:(id)expectedReference
                     withId:(id)newReference
                withBoolean:(BOOL)expectedMark
                withBoolean:(BOOL)newMark;
- (void)setWithId:(id)newReference
      withBoolean:(BOOL)newMark;
- (BOOL)attemptMarkWithId:(id)expectedReference
              withBoolean:(BOOL)newMark;
- (BOOL)casPairWithJavaUtilConcurrentAtomicAtomicMarkableReference_Pair:(JavaUtilConcurrentAtomicAtomicMarkableReference_Pair *)cmp
               withJavaUtilConcurrentAtomicAtomicMarkableReference_Pair:(JavaUtilConcurrentAtomicAtomicMarkableReference_Pair *)val;
- (void)copyAllFieldsTo:(JavaUtilConcurrentAtomicAtomicMarkableReference *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilConcurrentAtomicAtomicMarkableReference, pair_, JavaUtilConcurrentAtomicAtomicMarkableReference_Pair *)

@interface JavaUtilConcurrentAtomicAtomicMarkableReference_Pair : NSObject {
 @public
  id reference_;
  BOOL mark_;
}

- (id)initWithId:(id)reference
     withBoolean:(BOOL)mark;
+ (JavaUtilConcurrentAtomicAtomicMarkableReference_Pair *)ofWithId:(id)reference
                                                       withBoolean:(BOOL)mark;
- (void)copyAllFieldsTo:(JavaUtilConcurrentAtomicAtomicMarkableReference_Pair *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilConcurrentAtomicAtomicMarkableReference_Pair, reference_, id)

#endif // _JavaUtilConcurrentAtomicAtomicMarkableReference_H_
