//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/concurrent/atomic/AtomicLong.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaUtilConcurrentAtomicAtomicLong_H_
#define _JavaUtilConcurrentAtomicAtomicLong_H_

#import "JreEmulation.h"
#include "java/io/Serializable.h"

#define JavaUtilConcurrentAtomicAtomicLong_serialVersionUID 1927816293512124184

@interface JavaUtilConcurrentAtomicAtomicLong : NSNumber < JavaIoSerializable > {
 @public
  long long int value_;
}

- (id)initWithLong:(long long int)initialValue;
- (id)init;
- (long long int)get;
- (void)setWithLong:(long long int)newValue;
- (void)lazySetWithLong:(long long int)newValue;
- (long long int)getAndSetWithLong:(long long int)newValue;
- (BOOL)compareAndSetWithLong:(long long int)expect
                     withLong:(long long int)update;
- (BOOL)weakCompareAndSetWithLong:(long long int)expect
                         withLong:(long long int)update;
- (long long int)getAndIncrement;
- (long long int)getAndDecrement;
- (long long int)getAndAddWithLong:(long long int)delta;
- (long long int)incrementAndGet;
- (long long int)decrementAndGet;
- (long long int)addAndGetWithLong:(long long int)delta;
- (NSString *)description;
- (int)intValue;
- (long long int)longLongValue;
- (float)floatValue;
- (double)doubleValue;
+ (void)memoryBarrier;
- (BOOL)compareAndSwapValueWithLong:(long long int)oldValue
                           withLong:(long long int)newValue;
- (void)copyAllFieldsTo:(JavaUtilConcurrentAtomicAtomicLong *)other;
@end

#endif // _JavaUtilConcurrentAtomicAtomicLong_H_
