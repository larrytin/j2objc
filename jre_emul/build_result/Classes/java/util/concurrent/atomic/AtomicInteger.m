//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/util/concurrent/atomic/AtomicInteger.java
//
//  Created by retechretech on 13-9-4.
//

#include "java/io/Serializable.h"
#include "java/lang/Integer.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"

@implementation JavaUtilConcurrentAtomicAtomicInteger

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithInt:(int)initialValue {
  if ((self = [super init])) {
    value_ = initialValue;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (int)get {
  return value_;
}

- (void)setWithInt:(int)newValue {
  value_ = newValue;
}

- (void)lazySetWithInt:(int)newValue {
  [self setWithInt:newValue];
}

- (int)getAndSetWithInt:(int)newValue {
  int current = value_;
  value_ = newValue;
  return current;
}

- (BOOL)compareAndSetWithInt:(int)expect
                     withInt:(int)update {
  if (value_ == expect) {
    value_ = update;
    return YES;
  }
  else {
    return NO;
  }
}

- (int)getAndIncrement {
  return value_++;
}

- (int)getAndDecrement {
  return value_--;
}

- (int)getAndAddWithInt:(int)delta {
  int current = value_;
  value_ += delta;
  return current;
}

- (int)incrementAndGet {
  return ++value_;
}

- (int)decrementAndGet {
  return --value_;
}

- (int)addAndGetWithInt:(int)delta {
  value_ += delta;
  return value_;
}

- (NSString *)description {
  return [JavaLangInteger toStringWithInt:value_];
}

- (int)intValue {
  return value_;
}

- (long long int)longValue {
  return (long long int) value_;
}

- (float)floatValue {
  return (float) value_;
}

- (double)doubleValue {
  return (double) value_;
}

- (void)copyAllFieldsTo:(JavaUtilConcurrentAtomicAtomicInteger *)other {
  [super copyAllFieldsTo:other];
  other->value_ = value_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
