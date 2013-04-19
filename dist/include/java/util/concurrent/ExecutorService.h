//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/util/concurrent/ExecutorService.java
//
//  Created by retechretech on 13-4-19.
//

@class JavaUtilConcurrentTimeUnitEnum;
@protocol JavaLangRunnable;
@protocol JavaUtilCollection;
@protocol JavaUtilConcurrentCallable;
@protocol JavaUtilConcurrentFuture;
@protocol JavaUtilList;

#import "JreEmulation.h"
#import "java/util/concurrent/Executor.h"

@protocol JavaUtilConcurrentExecutorService < JavaUtilConcurrentExecutor, NSObject >
- (void)shutdown;
- (id<JavaUtilList>)shutdownNow;
- (BOOL)isShutdown;
- (BOOL)isTerminated;
- (BOOL)awaitTerminationWithLongInt:(long long int)timeout
 withJavaUtilConcurrentTimeUnitEnum:(JavaUtilConcurrentTimeUnitEnum *)unit;
- (id<JavaUtilConcurrentFuture>)submitWithJavaUtilConcurrentCallable:(id<JavaUtilConcurrentCallable>)task;
- (id<JavaUtilConcurrentFuture>)submitWithJavaLangRunnable:(id<JavaLangRunnable>)task
                                                    withId:(id)result;
- (id<JavaUtilConcurrentFuture>)submitWithJavaLangRunnable:(id<JavaLangRunnable>)task;
- (id<JavaUtilList>)invokeAllWithJavaUtilCollection:(id<JavaUtilCollection>)tasks;
- (id<JavaUtilList>)invokeAllWithJavaUtilCollection:(id<JavaUtilCollection>)tasks
                                        withLongInt:(long long int)timeout
                 withJavaUtilConcurrentTimeUnitEnum:(JavaUtilConcurrentTimeUnitEnum *)unit;
- (id)invokeAnyWithJavaUtilCollection:(id<JavaUtilCollection>)tasks;
- (id)invokeAnyWithJavaUtilCollection:(id<JavaUtilCollection>)tasks
                          withLongInt:(long long int)timeout
   withJavaUtilConcurrentTimeUnitEnum:(JavaUtilConcurrentTimeUnitEnum *)unit;
@end
