//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/concurrent/atomic/Fences.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaUtilConcurrentAtomicFences_H_
#define _JavaUtilConcurrentAtomicFences_H_

#import "JreEmulation.h"

@interface JavaUtilConcurrentAtomicFences : NSObject {
}

- (id)init;
+ (id)orderReadsWithId:(id)ref;
+ (id)orderWritesWithId:(id)ref;
+ (id)orderAccessesWithId:(id)ref;
+ (void)reachabilityFenceWithId:(id)ref;
+ (void)memoryBarrier;
@end

#endif // _JavaUtilConcurrentAtomicFences_H_
