//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Long.h"
#include "java/lang/System.h"
#include "java/lang/ref/Reference.h"
#include "java/lang/ref/ReferenceQueue.h"

@implementation JavaLangRefReferenceQueue

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangRefReferenceQueue_unenqueued_ name:@"JavaLangRefReferenceQueue_unenqueued_"]];
  return result;
}

static JavaLangRefReference * JavaLangRefReferenceQueue_unenqueued_;

+ (JavaLangRefReference *)unenqueued {
  return JavaLangRefReferenceQueue_unenqueued_;
}

+ (void)setUnenqueued:(JavaLangRefReference *)unenqueued {
  JreOperatorRetainedAssign(&JavaLangRefReferenceQueue_unenqueued_, nil, unenqueued);
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (JavaLangRefReference *)poll {
  @synchronized(self) {
    {
      if (head_ == nil) {
        return nil;
      }
      JavaLangRefReference *ret;
      ret = head_;
      if (head_ == ((JavaLangRefReference *) nil_chk(head_))->queueNext_) {
        JavaLangRefReferenceQueue_set_head_(self, nil);
      }
      else {
        JavaLangRefReferenceQueue_set_head_(self, head_->queueNext_);
      }
      JavaLangRefReference_set_queueNext_(nil_chk(ret), nil);
      [ret weakenReferent];
      return ret;
    }
  }
}

- (JavaLangRefReference *)remove {
  return [self removeWithLong:0LL];
}

+ (IOSObjectArray *)__exceptions_remove {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangInterruptedException getClass] } count:1 type:[IOSClass getClass]];
}

- (JavaLangRefReference *)removeWithLong:(long long int)timeoutMillis {
  @synchronized(self) {
    {
      if (timeoutMillis < 0) {
        @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"timeout < 0: %lld", timeoutMillis]] autorelease];
      }
      if (head_ != nil) {
        return [self poll];
      }
      if (timeoutMillis == 0 || (timeoutMillis > JavaLangLong_MAX_VALUE / JavaLangRefReferenceQueue_NANOS_PER_MILLI)) {
        do {
          [self waitWithLong:0];
        }
        while (head_ == nil);
        return [self poll];
      }
      long long int nanosToWait = timeoutMillis * JavaLangRefReferenceQueue_NANOS_PER_MILLI;
      int timeoutNanos = 0;
      long long int startTime = [JavaLangSystem nanoTime];
      while (YES) {
        [self waitWithLong:timeoutMillis withInt:timeoutNanos];
        if (head_ != nil) {
          break;
        }
        long long int nanosElapsed = [JavaLangSystem nanoTime] - startTime;
        long long int nanosRemaining = nanosToWait - nanosElapsed;
        if (nanosRemaining <= 0) {
          break;
        }
        timeoutMillis = nanosRemaining / JavaLangRefReferenceQueue_NANOS_PER_MILLI;
        timeoutNanos = (int) (nanosRemaining - timeoutMillis * JavaLangRefReferenceQueue_NANOS_PER_MILLI);
      }
      return [self poll];
    }
  }
}

+ (IOSObjectArray *)__exceptions_removeWithLong_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangInterruptedException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)enqueueWithJavaLangRefReference:(JavaLangRefReference *)reference {
  @synchronized(self) {
    {
      if (head_ == nil) {
        JavaLangRefReference_set_queueNext_(nil_chk(reference), reference);
      }
      else {
        JavaLangRefReference_set_queueNext_(nil_chk(reference), head_);
      }
      JavaLangRefReferenceQueue_set_head_(self, reference);
      [((JavaLangRefReference *) nil_chk(reference)) strengthenReferent];
      [self notify];
    }
  }
}

+ (void)addWithJavaLangRefReference:(JavaLangRefReference *)list {
  @synchronized ([IOSClass classWithClass:[JavaLangRefReferenceQueue class]]) {
    if (JavaLangRefReferenceQueue_unenqueued_ == nil) {
      JreOperatorRetainedAssign(&JavaLangRefReferenceQueue_unenqueued_, nil, list);
    }
    else {
      JavaLangRefReference *next = JavaLangRefReferenceQueue_unenqueued_->pendingNext_;
      JavaLangRefReference_set_pendingNext_(JavaLangRefReferenceQueue_unenqueued_, ((JavaLangRefReference *) nil_chk(list))->pendingNext_);
      JavaLangRefReference_set_pendingNext_(list, next);
    }
    [[IOSClass classWithClass:[JavaLangRefReferenceQueue class]] notifyAll];
  }
}

+ (void)initialize {
  if (self == [JavaLangRefReferenceQueue class]) {
    JreOperatorRetainedAssign(&JavaLangRefReferenceQueue_unenqueued_, nil, nil);
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaLangRefReferenceQueue_set_head_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaLangRefReferenceQueue *)other {
  [super copyAllFieldsTo:other];
  JavaLangRefReferenceQueue_set_head_(other, head_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:head_ name:@"head"]];
  return result;
}

@end
