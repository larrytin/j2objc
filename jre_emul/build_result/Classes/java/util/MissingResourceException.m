//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/MissingResourceException.java
//
//  Created by retechretech on 13-9-25.
//

#include "java/util/MissingResourceException.h"

@implementation JavaUtilMissingResourceException

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithNSString:(NSString *)detailMessage
          withNSString:(NSString *)className_
          withNSString:(NSString *)resourceName {
  if (self = [super initWithNSString:detailMessage]) {
    JavaUtilMissingResourceException_set_className__(self, className_);
    JavaUtilMissingResourceException_set_key_(self, resourceName);
    JreMemDebugAdd(self);
  }
  return self;
}

- (NSString *)getClassName {
  return className__;
}

- (NSString *)getKey {
  return key_;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilMissingResourceException_set_key_(self, nil);
  JavaUtilMissingResourceException_set_className__(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilMissingResourceException *)other {
  [super copyAllFieldsTo:other];
  JavaUtilMissingResourceException_set_className__(other, className__);
  JavaUtilMissingResourceException_set_key_(other, key_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:className__ name:@"className_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:key_ name:@"key"]];
  return result;
}

@end
