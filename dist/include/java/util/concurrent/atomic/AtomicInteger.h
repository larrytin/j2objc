//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/concurrent/atomic/AtomicInteger.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaUtilConcurrentAtomicAtomicInteger_H_
#define _JavaUtilConcurrentAtomicAtomicInteger_H_

#import "JreEmulation.h"
#include "java/io/Serializable.h"

#define JavaUtilConcurrentAtomicAtomicInteger_serialVersionUID 6214790243416807050

@interface JavaUtilConcurrentAtomicAtomicInteger : NSNumber < JavaIoSerializable > {
 @public
  int value_;
}

- (id)initWithInt:(int)initialValue;
- (id)init;
- (int)get;
- (void)setWithInt:(int)newValue;
- (void)lazySetWithInt:(int)newValue;
- (int)getAndSetWithInt:(int)newValue;
- (BOOL)compareAndSetWithInt:(int)expect
                     withInt:(int)update;
- (BOOL)weakCompareAndSetWithInt:(int)expect
                         withInt:(int)update;
- (int)getAndIncrement;
- (int)getAndDecrement;
- (int)getAndAddWithInt:(int)delta;
- (int)incrementAndGet;
- (int)decrementAndGet;
- (int)addAndGetWithInt:(int)delta;
- (NSString *)description;
- (int)intValue;
- (long long int)longLongValue;
- (float)floatValue;
- (double)doubleValue;
+ (void)memoryBarrier;
- (BOOL)compareAndSwapValueWithInt:(int)oldValue
                           withInt:(int)newValue;
- (void)copyAllFieldsTo:(JavaUtilConcurrentAtomicAtomicInteger *)other;
@end

#endif // _JavaUtilConcurrentAtomicAtomicInteger_H_
