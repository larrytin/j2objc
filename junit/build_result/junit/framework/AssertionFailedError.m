//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/junit/framework/AssertionFailedError.java
//
//  Created by retechretech on 13-9-4.
//

#include "junit/framework/AssertionFailedError.h"

@implementation JunitFrameworkAssertionFailedError

- (id)init {
  return [super init];
}

- (id)initWithNSString:(NSString *)message {
  return [super initWithId:[JunitFrameworkAssertionFailedError defaultStringWithNSString:message]];
}

+ (NSString *)defaultStringWithNSString:(NSString *)message {
  return message == nil ? @"" : message;
}

@end
