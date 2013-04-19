//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/net/URISyntaxException.java
//
//  Created by retechretech on 13-4-19.
//

#import "java/lang/IllegalArgumentException.h"
#import "java/lang/NullPointerException.h"
#import "java/net/URISyntaxException.h"

@implementation JavaNetURISyntaxException

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (NSString *)input {
  return input_;
}
- (void)setInput:(NSString *)input {
  JreOperatorRetainedAssign(&input_, input);
}
@synthesize input = input_;
@synthesize index = index_;

- (id)initWithNSString:(NSString *)input
          withNSString:(NSString *)reason
               withInt:(int)index {
  if ((self = [super initWithNSString:reason])) {
    if (input == nil || reason == nil) {
      @throw [[[JavaLangNullPointerException alloc] init] autorelease];
    }
    if (index < -1) {
      @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    }
    self.input = input;
    self.index = index;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)input
          withNSString:(NSString *)reason {
  if ((self = [super initWithNSString:reason])) {
    if (input == nil || reason == nil) {
      @throw [[[JavaLangNullPointerException alloc] init] autorelease];
    }
    self.input = input;
    index_ = -1;
    JreMemDebugAdd(self);
  }
  return self;
}

- (int)getIndex {
  return index_;
}

- (NSString *)getReason {
  return (NSString *) [super getMessage];
}

- (NSString *)getInput {
  return input_;
}

- (NSString *)getMessage {
  NSString *reason = [super getMessage];
  if (index_ != -1) {
    return [NSString stringWithFormat:@"%@ at index %d: %@", reason, index_, input_];
  }
  return [NSString stringWithFormat:@"%@: %@", reason, input_];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&input_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaNetURISyntaxException *typedCopy = (JavaNetURISyntaxException *) copy;
  typedCopy.input = input_;
  typedCopy.index = index_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:input_ name:@"input"]];
  return result;
}

@end
