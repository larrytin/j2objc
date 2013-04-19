//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/AbstractMap.java
//
//  Created by retechretech on 13-4-19.
//

#import "java/lang/ClassCastException.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/StringBuilder.h"
#import "java/lang/UnsupportedOperationException.h"
#import "java/util/AbstractMap.h"
#import "java/util/Collection.h"
#import "java/util/Iterator.h"
#import "java/util/Map.h"
#import "java/util/Set.h"

@implementation JavaUtilAbstractMap

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id<JavaUtilSet>)keySet_ {
  return keySet__;
}
- (void)setKeySet_:(id<JavaUtilSet>)keySet_ {
  JreOperatorRetainedAssign(&keySet__, keySet_);
}
@synthesize keySet_ = keySet__;
- (id<JavaUtilCollection>)valuesCollection {
  return valuesCollection_;
}
- (void)setValuesCollection:(id<JavaUtilCollection>)valuesCollection {
  JreOperatorRetainedAssign(&valuesCollection_, valuesCollection);
}
@synthesize valuesCollection = valuesCollection_;

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)clear {
  [((id<JavaUtilSet>) [self entrySet]) clear];
}

- (BOOL)containsKeyWithId:(id)key {
  id<JavaUtilIterator> it = ((id<JavaUtilIterator>) [[self entrySet] iterator]);
  if (key != nil) {
    while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
      if ([key isEqual:[((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(it)) next]) getKey]]) {
        return YES;
      }
    }
  }
  else {
    while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
      if ([((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(it)) next]) getKey] == nil) {
        return YES;
      }
    }
  }
  return NO;
}

- (BOOL)containsValueWithId:(id)value {
  id<JavaUtilIterator> it = ((id<JavaUtilIterator>) [[self entrySet] iterator]);
  if (value != nil) {
    while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
      if ([value isEqual:[((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(it)) next]) getValue]]) {
        return YES;
      }
    }
  }
  else {
    while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
      if ([((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(it)) next]) getValue] == nil) {
        return YES;
      }
    }
  }
  return NO;
}

- (id<JavaUtilSet>)entrySet {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)isEqual:(id)object {
  if (self == object) {
    return YES;
  }
  if ([object conformsToProtocol: @protocol(JavaUtilMap)]) {
    id<JavaUtilMap> map = (id<JavaUtilMap>) object;
    if ([self size] != [((id<JavaUtilMap>) NIL_CHK(map)) size]) {
      return NO;
    }
    @try {
      {
        id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [[self entrySet] iterator]);
        while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
          id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
          id key = [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey];
          id mine = [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue];
          id theirs = [((id<JavaUtilMap>) NIL_CHK(map)) getWithId:key];
          if (mine == nil) {
            if (theirs != nil || ![((id<JavaUtilMap>) NIL_CHK(map)) containsKeyWithId:key]) {
              return NO;
            }
          }
          else if (![mine isEqual:theirs]) {
            return NO;
          }
        }
      }
    }
    @catch (JavaLangNullPointerException *ignored) {
      return NO;
    }
    @catch (JavaLangClassCastException *ignored) {
      return NO;
    }
    return YES;
  }
  return NO;
}

- (id)getWithId:(id)key {
  id<JavaUtilIterator> it = ((id<JavaUtilIterator>) [[self entrySet] iterator]);
  if (key != nil) {
    while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
      id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(it)) next]);
      if ([key isEqual:[((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey]]) {
        return [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue];
      }
    }
  }
  else {
    while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
      id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(it)) next]);
      if ([((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey] == nil) {
        return [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue];
      }
    }
  }
  return nil;
}

- (NSUInteger)hash {
  int result = 0;
  id<JavaUtilIterator> it = ((id<JavaUtilIterator>) [[self entrySet] iterator]);
  while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
    result += [((id<JavaUtilMap_Entry>) ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(it)) next])) hash];
  }
  return result;
}

- (BOOL)isEmpty {
  return [self size] == 0;
}

- (id<JavaUtilSet>)keySet {
  if (keySet__ == nil) {
    JreOperatorRetainedAssign(&keySet__, [[[JavaUtilAbstractMap_KeySet alloc] initWithJavaUtilAbstractMap:self] autorelease]);
  }
  return keySet__;
}

- (id)putWithId:(id)key
         withId:(id)value {
  @throw [[[JavaLangUnsupportedOperationException alloc] init] autorelease];
}

- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map {
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilSet>) [((id<JavaUtilMap>) NIL_CHK(map)) entrySet]) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [self putWithId:((id) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey]) withId:((id) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue])];
    }
  }
}

- (id)removeWithId:(id)key {
  id<JavaUtilIterator> it = ((id<JavaUtilIterator>) [[self entrySet] iterator]);
  if (key != nil) {
    while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
      id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(it)) next]);
      if ([key isEqual:[((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey]]) {
        [((id<JavaUtilIterator>) NIL_CHK(it)) remove];
        return [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue];
      }
    }
  }
  else {
    while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
      id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(it)) next]);
      if ([((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey] == nil) {
        [((id<JavaUtilIterator>) NIL_CHK(it)) remove];
        return [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue];
      }
    }
  }
  return nil;
}

- (int)size {
  return [((id<JavaUtilSet>) [self entrySet]) size];
}

- (NSString *)description {
  if ([self isEmpty]) {
    return @"{}";
  }
  JavaLangStringBuilder *buffer = [[[JavaLangStringBuilder alloc] initWithInt:[self size] * 28] autorelease];
  [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithUnichar:'{'];
  id<JavaUtilIterator> it = ((id<JavaUtilIterator>) [[self entrySet] iterator]);
  while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
    id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(it)) next]);
    id key = [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey];
    if (key != self) {
      [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithId:key];
    }
    else {
      [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@"(this Map)"];
    }
    [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithUnichar:'='];
    id value = [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue];
    if (value != self) {
      [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithId:value];
    }
    else {
      [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@"(this Map)"];
    }
    if ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
      [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@", "];
    }
  }
  [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithUnichar:'}'];
  return [((JavaLangStringBuilder *) NIL_CHK(buffer)) description];
}

- (id<JavaUtilCollection>)values {
  if (valuesCollection_ == nil) {
    JreOperatorRetainedAssign(&valuesCollection_, [[[JavaUtilAbstractMap_ValuesCollection alloc] initWithJavaUtilAbstractMap:self] autorelease]);
  }
  return valuesCollection_;
}

- (id)clone {
  JavaUtilAbstractMap *result = (JavaUtilAbstractMap *) [super clone];
  ((JavaUtilAbstractMap *) NIL_CHK(result)).keySet_ = nil;
  ((JavaUtilAbstractMap *) NIL_CHK(result)).valuesCollection = nil;
  return result;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&valuesCollection_, nil);
  JreOperatorRetainedAssign(&keySet__, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilAbstractMap *typedCopy = (JavaUtilAbstractMap *) copy;
  typedCopy.keySet_ = keySet__;
  typedCopy.valuesCollection = valuesCollection_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:keySet__ name:@"keySet_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:valuesCollection_ name:@"valuesCollection"]];
  return result;
}

@end
@implementation JavaUtilAbstractMap_KeySet

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilAbstractMap *)this$0 {
  return this$0_;
}
@synthesize this$0 = this$0_;

- (BOOL)containsWithId:(id)object {
  return [this$0_ containsKeyWithId:object];
}

- (int)size {
  return [this$0_ size];
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilAbstractMap_KeySet_$1 alloc] initWithJavaUtilAbstractMap_KeySet:self] autorelease];
}

- (id)initWithJavaUtilAbstractMap:(JavaUtilAbstractMap *)outer$0 {
  if ((self = [super init])) {
    this$0_ = outer$0;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilAbstractMap_KeySet *typedCopy = (JavaUtilAbstractMap_KeySet *) copy;
  typedCopy.this$0 = this$0_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
@implementation JavaUtilAbstractMap_KeySet_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilAbstractMap_KeySet *)this$0 {
  return this$0_;
}
- (void)setThis$0:(JavaUtilAbstractMap_KeySet *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;
- (id<JavaUtilIterator>)setIterator {
  return setIterator_;
}
- (void)setSetIterator:(id<JavaUtilIterator>)setIterator {
  JreOperatorRetainedAssign(&setIterator_, setIterator);
}
@synthesize setIterator = setIterator_;

- (BOOL)hasNext {
  return [((id<JavaUtilIterator>) NIL_CHK(setIterator_)) hasNext];
}

- (id)next {
  return [((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(setIterator_)) next]) getKey];
}

- (void)remove {
  [((id<JavaUtilIterator>) NIL_CHK(setIterator_)) remove];
}

- (id)initWithJavaUtilAbstractMap_KeySet:(JavaUtilAbstractMap_KeySet *)outer$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$0);
    JreOperatorRetainedAssign(&setIterator_, ((id<JavaUtilIterator>) [[this$0_.this$0 entrySet] iterator]));
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&setIterator_, nil);
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilAbstractMap_KeySet_$1 *typedCopy = (JavaUtilAbstractMap_KeySet_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.setIterator = setIterator_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:setIterator_ name:@"setIterator"]];
  return result;
}

@end
@implementation JavaUtilAbstractMap_ValuesCollection

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilAbstractMap *)this$0 {
  return this$0_;
}
@synthesize this$0 = this$0_;

- (int)size {
  return [this$0_ size];
}

- (BOOL)containsWithId:(id)object {
  return [this$0_ containsValueWithId:object];
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilAbstractMap_ValuesCollection_$1 alloc] initWithJavaUtilAbstractMap_ValuesCollection:self] autorelease];
}

- (id)initWithJavaUtilAbstractMap:(JavaUtilAbstractMap *)outer$0 {
  if ((self = [super init])) {
    this$0_ = outer$0;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilAbstractMap_ValuesCollection *typedCopy = (JavaUtilAbstractMap_ValuesCollection *) copy;
  typedCopy.this$0 = this$0_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
@implementation JavaUtilAbstractMap_ValuesCollection_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilAbstractMap_ValuesCollection *)this$0 {
  return this$0_;
}
- (void)setThis$0:(JavaUtilAbstractMap_ValuesCollection *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;
- (id<JavaUtilIterator>)setIterator {
  return setIterator_;
}
- (void)setSetIterator:(id<JavaUtilIterator>)setIterator {
  JreOperatorRetainedAssign(&setIterator_, setIterator);
}
@synthesize setIterator = setIterator_;

- (BOOL)hasNext {
  return [((id<JavaUtilIterator>) NIL_CHK(setIterator_)) hasNext];
}

- (id)next {
  return [((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(setIterator_)) next]) getValue];
}

- (void)remove {
  [((id<JavaUtilIterator>) NIL_CHK(setIterator_)) remove];
}

- (id)initWithJavaUtilAbstractMap_ValuesCollection:(JavaUtilAbstractMap_ValuesCollection *)outer$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$0);
    JreOperatorRetainedAssign(&setIterator_, ((id<JavaUtilIterator>) [[this$0_.this$0 entrySet] iterator]));
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&setIterator_, nil);
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilAbstractMap_ValuesCollection_$1 *typedCopy = (JavaUtilAbstractMap_ValuesCollection_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.setIterator = setIterator_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:setIterator_ name:@"setIterator"]];
  return result;
}

@end
