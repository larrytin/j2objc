//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/Classes/java/lang/ThreadLocal.java
//
//  Created by retechretech on 13-3-15.
//

#import "java/lang/ThreadLocal.h"
#import "java/util/concurrent/atomic/AtomicInteger.h"

@implementation JavaLangThreadLocal

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangThreadLocal_KEY_PREFIX_ name:@"JavaLangThreadLocal_KEY_PREFIX_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangThreadLocal_nextId_ name:@"JavaLangThreadLocal_nextId_"]];
  return result;
}

static NSString * JavaLangThreadLocal_KEY_PREFIX_ = @"jre_tls_key";
static JavaUtilConcurrentAtomicAtomicInteger * JavaLangThreadLocal_nextId_;

- (NSString *)key {
  return [[key_ retain] autorelease];
}
- (void)setKey:(NSString *)key {
  JreOperatorRetainedAssign(&key_, key);
}
@synthesize key = key_;

+ (NSString *)KEY_PREFIX {
  return JavaLangThreadLocal_KEY_PREFIX_;
}

+ (JavaUtilConcurrentAtomicAtomicInteger *)nextId {
  return JavaLangThreadLocal_nextId_;
}

- (id)get {
  return [self getNative];
}

- (id)initialValue OBJC_METHOD_FAMILY_NONE {
  return nil;
}

- (void)remove {
  [self removeNative];
}

- (void)setWithId:(id)value {
  [self setNativeWithId:value];
}

- (id)getNative   {
    NSMutableDictionary *dict = [[NSThread currentThread] threadDictionary];
    id value = [dict objectForKey:self.key];
    if (value != nil) {
      // NSNull indicates that the value was explicitly set to null.
      return value == [NSNull null] ? nil : value;
    }
    
    id initialValue = [self initialValue];
    if (initialValue) {
      [dict setObject:initialValue forKey:self.key];
    } // else return nil to show this key's value hasn't been set.
    return initialValue;
  }

- (void)removeNative   {
    [[[NSThread currentThread] threadDictionary] removeObjectForKey:self.key];
  }

- (void)setNativeWithId:(id)value   {
    if (!value) {
      // Use NSNull singleton to show this value was explicitly set to null,
      // not just undefined.
      value = [NSNull null];
    }
    [[[NSThread currentThread] threadDictionary] setObject:value forKey:self.key];
  }

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&key_, [NSString stringWithFormat:@"jre_tls_key%d", [((JavaUtilConcurrentAtomicAtomicInteger *) NIL_CHK(JavaLangThreadLocal_nextId_)) getAndIncrement]]);
    JreMemDebugAdd(self);
  }
  return self;
}

+ (void)initialize {
  if (self == [JavaLangThreadLocal class]) {
    {
      JreOperatorRetainedAssign(&JavaLangThreadLocal_nextId_, [[[JavaUtilConcurrentAtomicAtomicInteger alloc] initWithInt:0] autorelease]);
    }
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&key_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaLangThreadLocal *typedCopy = (JavaLangThreadLocal *) copy;
  typedCopy.key = key_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:key_ name:@"key"]];
  return result;
}

@end
