//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/Timer.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/util/Date.h"
#include "java/util/Timer.h"
#include "java/util/TimerTask.h"

@implementation JavaUtilTimer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

static long long int JavaUtilTimer_timerId_;

+ (long long int)timerId {
  return JavaUtilTimer_timerId_;
}

+ (long long int *)timerIdRef {
  return &JavaUtilTimer_timerId_;
}

+ (long long int)nextId {
  @synchronized([self class]) {
    {
      return JavaUtilTimer_timerId_++;
    }
  }
}

- (id)initJavaUtilTimerWithNSString:(NSString *)name
                        withBoolean:(BOOL)isDaemon {
  if (self = [super init]) {
    if (name == nil) {
      @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"name == null"] autorelease];
    }
    JavaUtilTimer_set_impl_(self, [[[JavaUtilTimer_TimerImpl alloc] initWithNSString:name withBoolean:isDaemon] autorelease]);
    JavaUtilTimer_set_finalizer_(self, [[[JavaUtilTimer_FinalizerHelper alloc] initWithJavaUtilTimer_TimerImpl:impl_] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)name
           withBoolean:(BOOL)isDaemon {
  return [self initJavaUtilTimerWithNSString:name withBoolean:isDaemon];
}

- (id)initWithNSString:(NSString *)name {
  return JreMemDebugAdd([self initJavaUtilTimerWithNSString:name withBoolean:NO]);
}

- (id)initJavaUtilTimerWithBoolean:(BOOL)isDaemon {
  return JreMemDebugAdd([self initJavaUtilTimerWithNSString:[NSString stringWithFormat:@"Timer-%lld", [JavaUtilTimer nextId]] withBoolean:isDaemon]);
}

- (id)initWithBoolean:(BOOL)isDaemon {
  return [self initJavaUtilTimerWithBoolean:isDaemon];
}

- (id)init {
  return JreMemDebugAdd([self initJavaUtilTimerWithBoolean:NO]);
}

- (void)cancel {
  [((JavaUtilTimer_TimerImpl *) nil_chk(impl_)) cancel];
}

- (int)purge {
  @synchronized (impl_) {
    return [((JavaUtilTimer_TimerImpl *) nil_chk(impl_)) purge];
  }
}

- (void)scheduleWithJavaUtilTimerTask:(JavaUtilTimerTask *)task
                     withJavaUtilDate:(JavaUtilDate *)when {
  if ([((JavaUtilDate *) nil_chk(when)) getTime] < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"when < 0: %lld", [when getTime]]] autorelease];
  }
  long long int delay = [when getTime] - [JavaLangSystem currentTimeMillis];
  [self scheduleImplWithJavaUtilTimerTask:task withLong:delay < 0 ? 0 : delay withLong:-1 withBoolean:NO];
}

- (void)scheduleWithJavaUtilTimerTask:(JavaUtilTimerTask *)task
                             withLong:(long long int)delay {
  if (delay < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"delay < 0: %lld", delay]] autorelease];
  }
  [self scheduleImplWithJavaUtilTimerTask:task withLong:delay withLong:-1 withBoolean:NO];
}

- (void)scheduleWithJavaUtilTimerTask:(JavaUtilTimerTask *)task
                             withLong:(long long int)delay
                             withLong:(long long int)period {
  if (delay < 0 || period <= 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  [self scheduleImplWithJavaUtilTimerTask:task withLong:delay withLong:period withBoolean:NO];
}

- (void)scheduleWithJavaUtilTimerTask:(JavaUtilTimerTask *)task
                     withJavaUtilDate:(JavaUtilDate *)when
                             withLong:(long long int)period {
  if (period <= 0 || [((JavaUtilDate *) nil_chk(when)) getTime] < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  long long int delay = [((JavaUtilDate *) nil_chk(when)) getTime] - [JavaLangSystem currentTimeMillis];
  [self scheduleImplWithJavaUtilTimerTask:task withLong:delay < 0 ? 0 : delay withLong:period withBoolean:NO];
}

- (void)scheduleAtFixedRateWithJavaUtilTimerTask:(JavaUtilTimerTask *)task
                                        withLong:(long long int)delay
                                        withLong:(long long int)period {
  if (delay < 0 || period <= 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  [self scheduleImplWithJavaUtilTimerTask:task withLong:delay withLong:period withBoolean:YES];
}

- (void)scheduleAtFixedRateWithJavaUtilTimerTask:(JavaUtilTimerTask *)task
                                withJavaUtilDate:(JavaUtilDate *)when
                                        withLong:(long long int)period {
  if (period <= 0 || [((JavaUtilDate *) nil_chk(when)) getTime] < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  long long int delay = [((JavaUtilDate *) nil_chk(when)) getTime] - [JavaLangSystem currentTimeMillis];
  [self scheduleImplWithJavaUtilTimerTask:task withLong:delay withLong:period withBoolean:YES];
}

- (void)scheduleImplWithJavaUtilTimerTask:(JavaUtilTimerTask *)task
                                 withLong:(long long int)delay
                                 withLong:(long long int)period
                              withBoolean:(BOOL)fixed {
  @synchronized (impl_) {
    if (((JavaUtilTimer_TimerImpl *) nil_chk(impl_))->cancelled_) {
      @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"Timer was canceled"] autorelease];
    }
    long long int when = delay + [JavaLangSystem currentTimeMillis];
    if (when < 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Illegal delay to start the TimerTask: %lld", when]] autorelease];
    }
    @synchronized (((JavaUtilTimerTask *) nil_chk(task))->lock_) {
      if ([task isScheduled]) {
        @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"TimerTask is scheduled already"] autorelease];
      }
      if (task->cancelled_) {
        @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"TimerTask is canceled"] autorelease];
      }
      task->when_ = when;
      task->period_ = period;
      task->fixedRate_ = fixed;
    }
    [impl_ insertTaskWithJavaUtilTimerTask:task];
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilTimer_set_finalizer_(self, nil);
  JavaUtilTimer_set_impl_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilTimer *)other {
  [super copyAllFieldsTo:other];
  JavaUtilTimer_set_finalizer_(other, finalizer_);
  JavaUtilTimer_set_impl_(other, impl_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:impl_ name:@"impl"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:finalizer_ name:@"finalizer"]];
  return result;
}

@end
@implementation JavaUtilTimer_TimerImpl

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initJavaUtilTimer_TimerImplWithNSString:(NSString *)name
                                  withBoolean:(BOOL)isDaemon {
  if (self = [super init]) {
    JavaUtilTimer_TimerImpl_set_tasks_(self, [[[JavaUtilTimer_TimerImpl_TimerHeap alloc] init] autorelease]);
    [self setNameWithNSString:name];
    [self setDaemonWithBoolean:isDaemon];
    [self start];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)name
           withBoolean:(BOOL)isDaemon {
  return [self initJavaUtilTimer_TimerImplWithNSString:name withBoolean:isDaemon];
}

- (void)run {
  while (YES) {
    JavaUtilTimerTask *task;
    @synchronized (self) {
      if (cancelled_) {
        return;
      }
      if ([((JavaUtilTimer_TimerImpl_TimerHeap *) nil_chk(tasks_)) isEmpty]) {
        if (finished_) {
          return;
        }
        @try {
          [self wait];
        }
        @catch (JavaLangInterruptedException *ignored) {
        }
        continue;
      }
      long long int currentTime = [JavaLangSystem currentTimeMillis];
      task = [tasks_ minimum];
      long long int timeToSleep;
      @synchronized (((JavaUtilTimerTask *) nil_chk(task))->lock_) {
        if (task->cancelled_) {
          [tasks_ delete__WithInt:0];
          continue;
        }
        timeToSleep = task->when_ - currentTime;
      }
      if (timeToSleep > 0) {
        @try {
          [self waitWithLong:timeToSleep];
        }
        @catch (JavaLangInterruptedException *ignored) {
        }
        continue;
      }
      @synchronized (task->lock_) {
        int pos = 0;
        if (((JavaUtilTimerTask *) nil_chk([tasks_ minimum]))->when_ != task->when_) {
          pos = [tasks_ getTaskWithJavaUtilTimerTask:task];
        }
        if (task->cancelled_) {
          [tasks_ delete__WithInt:[tasks_ getTaskWithJavaUtilTimerTask:task]];
          continue;
        }
        [task setScheduledTimeWithLong:task->when_];
        [tasks_ delete__WithInt:pos];
        if (task->period_ >= 0) {
          if (task->fixedRate_) {
            task->when_ = task->when_ + task->period_;
          }
          else {
            task->when_ = [JavaLangSystem currentTimeMillis] + task->period_;
          }
          [self insertTaskWithJavaUtilTimerTask:task];
        }
        else {
          task->when_ = 0;
        }
      }
    }
    BOOL taskCompletedNormally = NO;
    @try {
      [task run];
      taskCompletedNormally = YES;
    }
    @finally {
      if (!taskCompletedNormally) {
        @synchronized (self) {
          cancelled_ = YES;
        }
      }
    }
  }
}

- (void)insertTaskWithJavaUtilTimerTask:(JavaUtilTimerTask *)newTask {
  [((JavaUtilTimer_TimerImpl_TimerHeap *) nil_chk(tasks_)) insertWithJavaUtilTimerTask:newTask];
  [self notify];
}

- (void)cancel {
  @synchronized(self) {
    {
      cancelled_ = YES;
      [((JavaUtilTimer_TimerImpl_TimerHeap *) nil_chk(tasks_)) reset];
      [self notify];
    }
  }
}

- (int)purge {
  if ([((JavaUtilTimer_TimerImpl_TimerHeap *) nil_chk(tasks_)) isEmpty]) {
    return 0;
  }
  tasks_->deletedCancelledNumber_ = 0;
  [tasks_ deleteIfCancelled];
  return tasks_->deletedCancelledNumber_;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilTimer_TimerImpl_set_tasks_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilTimer_TimerImpl *)other {
  [super copyAllFieldsTo:other];
  other->cancelled_ = cancelled_;
  other->finished_ = finished_;
  JavaUtilTimer_TimerImpl_set_tasks_(other, tasks_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:tasks_ name:@"tasks"]];
  return result;
}

@end
@implementation JavaUtilTimer_TimerImpl_TimerHeap

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilTimerTask *)minimum {
  return IOSObjectArray_Get(nil_chk(timers_), 0);
}

- (BOOL)isEmpty {
  return size_ == 0;
}

- (void)insertWithJavaUtilTimerTask:(JavaUtilTimerTask *)task {
  if ((int) [((IOSObjectArray *) nil_chk(timers_)) count] == size_) {
    IOSObjectArray *appendedTimers = [IOSObjectArray arrayWithLength:size_ * 2 type:[IOSClass classWithClass:[JavaUtilTimerTask class]]];
    [JavaLangSystem arraycopyWithId:timers_ withInt:0 withId:appendedTimers withInt:0 withInt:size_];
    JavaUtilTimer_TimerImpl_TimerHeap_set_timers_(self, appendedTimers);
  }
  IOSObjectArray_Set(timers_, size_++, task);
  [self upHeap];
}

- (void)delete__WithInt:(int)pos {
  if (pos >= 0 && pos < size_) {
    IOSObjectArray_Set(nil_chk(timers_), pos, IOSObjectArray_Get(timers_, --size_));
    IOSObjectArray_Set(timers_, size_, nil);
    [self downHeapWithInt:pos];
  }
}

- (void)upHeap {
  int current = size_ - 1;
  int parent = (current - 1) / 2;
  while (((JavaUtilTimerTask *) nil_chk(IOSObjectArray_Get(nil_chk(timers_), current)))->when_ < ((JavaUtilTimerTask *) nil_chk(IOSObjectArray_Get(timers_, parent)))->when_) {
    JavaUtilTimerTask *tmp = IOSObjectArray_Get(timers_, current);
    IOSObjectArray_Set(timers_, current, IOSObjectArray_Get(timers_, parent));
    IOSObjectArray_Set(timers_, parent, tmp);
    current = parent;
    parent = (current - 1) / 2;
  }
}

- (void)downHeapWithInt:(int)pos {
  int current = pos;
  int child = 2 * current + 1;
  while (child < size_ && size_ > 0) {
    if (child + 1 < size_ && ((JavaUtilTimerTask *) nil_chk(IOSObjectArray_Get(nil_chk(timers_), child + 1)))->when_ < ((JavaUtilTimerTask *) nil_chk(IOSObjectArray_Get(timers_, child)))->when_) {
      child++;
    }
    if (((JavaUtilTimerTask *) nil_chk(IOSObjectArray_Get(nil_chk(timers_), current)))->when_ < ((JavaUtilTimerTask *) nil_chk(IOSObjectArray_Get(timers_, child)))->when_) {
      break;
    }
    JavaUtilTimerTask *tmp = IOSObjectArray_Get(timers_, current);
    IOSObjectArray_Set(timers_, current, IOSObjectArray_Get(timers_, child));
    IOSObjectArray_Set(timers_, child, tmp);
    current = child;
    child = 2 * current + 1;
  }
}

- (void)reset {
  JavaUtilTimer_TimerImpl_TimerHeap_set_timers_(self, [IOSObjectArray arrayWithLength:DEFAULT_HEAP_SIZE_ type:[IOSClass classWithClass:[JavaUtilTimerTask class]]]);
  size_ = 0;
}

- (void)adjustMinimum {
  [self downHeapWithInt:0];
}

- (void)deleteIfCancelled {
  for (int i = 0; i < size_; i++) {
    if (((JavaUtilTimerTask *) nil_chk(IOSObjectArray_Get(nil_chk(timers_), i)))->cancelled_) {
      deletedCancelledNumber_++;
      [self delete__WithInt:i];
      i--;
    }
  }
}

- (int)getTaskWithJavaUtilTimerTask:(JavaUtilTimerTask *)task {
  for (int i = 0; i < (int) [((IOSObjectArray *) nil_chk(timers_)) count]; i++) {
    if (IOSObjectArray_Get(timers_, i) == task) {
      return i;
    }
  }
  return -1;
}

- (id)init {
  if (self = [super init]) {
    DEFAULT_HEAP_SIZE_ = 256;
    JavaUtilTimer_TimerImpl_TimerHeap_set_timers_(self, [IOSObjectArray arrayWithLength:DEFAULT_HEAP_SIZE_ type:[IOSClass classWithClass:[JavaUtilTimerTask class]]]);
    size_ = 0;
    deletedCancelledNumber_ = 0;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilTimer_TimerImpl_TimerHeap_set_timers_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilTimer_TimerImpl_TimerHeap *)other {
  [super copyAllFieldsTo:other];
  other->DEFAULT_HEAP_SIZE_ = DEFAULT_HEAP_SIZE_;
  other->deletedCancelledNumber_ = deletedCancelledNumber_;
  other->size_ = size_;
  JavaUtilTimer_TimerImpl_TimerHeap_set_timers_(other, timers_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:timers_ name:@"timers"]];
  return result;
}

@end
@implementation JavaUtilTimer_FinalizerHelper

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaUtilTimer_TimerImpl:(JavaUtilTimer_TimerImpl *)impl {
  if (self = [super init]) {
    JavaUtilTimer_FinalizerHelper_set_impl_(self, impl);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  @try {
    @synchronized (impl_) {
      ((JavaUtilTimer_TimerImpl *) nil_chk(impl_))->finished_ = YES;
      [impl_ notify];
    }
    JavaUtilTimer_FinalizerHelper_set_impl_(self, nil);
  }
  @finally {
    [super dealloc];
  }
}

+ (IOSObjectArray *)__exceptions_dealloc {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangThrowable getClass] } count:1 type:[IOSClass getClass]];
}

- (void)copyAllFieldsTo:(JavaUtilTimer_FinalizerHelper *)other {
  [super copyAllFieldsTo:other];
  JavaUtilTimer_FinalizerHelper_set_impl_(other, impl_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:impl_ name:@"impl"]];
  return result;
}

@end
