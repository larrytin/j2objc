//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/Classes/java/util/concurrent/Future.java
//
//  Created by retechretech on 13-3-15.
//

@class JavaUtilConcurrentTimeUnitEnum;

#import "JreEmulation.h"

@protocol JavaUtilConcurrentFuture < NSObject >
- (BOOL)cancelWithBOOL:(BOOL)mayInterruptIfRunning;
- (BOOL)isCancelled;
- (BOOL)isDone;
- (id)get;
- (id)getWithLongInt:(long long int)timeout
withJavaUtilConcurrentTimeUnitEnum:(JavaUtilConcurrentTimeUnitEnum *)unit;
@end