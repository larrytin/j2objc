//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaUtilConcurrentAtomicAtomicLongArray_H_
#define _JavaUtilConcurrentAtomicAtomicLongArray_H_

@class IOSLongArray;

#import "JreEmulation.h"
#include "java/io/Serializable.h"

#define JavaUtilConcurrentAtomicAtomicLongArray_serialVersionUID -2308431214976778248

@interface JavaUtilConcurrentAtomicAtomicLongArray : NSObject < JavaIoSerializable > {
 @public
  IOSLongArray *array_;
}

- (id)initWithInt:(int)length;
- (id)initWithLongArray:(IOSLongArray *)array;
- (int)length;
- (long long int)getWithInt:(int)i;
- (void)setWithInt:(int)i
          withLong:(long long int)newValue;
- (void)lazySetWithInt:(int)i
              withLong:(long long int)newValue;
- (long long int)getAndSetWithInt:(int)i
                         withLong:(long long int)newValue;
- (BOOL)compareAndSetWithInt:(int)i
                    withLong:(long long int)expect
                    withLong:(long long int)update;
- (BOOL)weakCompareAndSetWithInt:(int)i
                        withLong:(long long int)expect
                        withLong:(long long int)update;
- (long long int)getAndIncrementWithInt:(int)i;
- (long long int)getAndDecrementWithInt:(int)i;
- (long long int)getAndAddWithInt:(int)i
                         withLong:(long long int)delta;
- (long long int)incrementAndGetWithInt:(int)i;
- (long long int)decrementAndGetWithInt:(int)i;
- (long long int)addAndGetWithInt:(int)i
                         withLong:(long long int)delta;
- (NSString *)description;
+ (void)memoryBarrier;
- (BOOL)compareAndSetRawWithInt:(int)i
                       withLong:(long long int)expect
                       withLong:(long long int)update;
- (void)copyAllFieldsTo:(JavaUtilConcurrentAtomicAtomicLongArray *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilConcurrentAtomicAtomicLongArray, array_, IOSLongArray *)

#endif // _JavaUtilConcurrentAtomicAtomicLongArray_H_
