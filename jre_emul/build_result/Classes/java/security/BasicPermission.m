//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/security/BasicPermission.java
//
//  Created by retechretech on 13-9-25.
//

#include "java/security/BasicPermission.h"
#include "java/security/Permission.h"

@implementation JavaSecurityBasicPermission

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithNSString:(NSString *)name {
  return JreMemDebugAdd([super initWithNSString:@""]);
}

- (id)initWithNSString:(NSString *)name
          withNSString:(NSString *)action {
  return JreMemDebugAdd([super initWithNSString:@""]);
}

- (NSString *)getActions {
  return nil;
}

- (BOOL)impliesWithJavaSecurityPermission:(JavaSecurityPermission *)permission {
  return YES;
}

@end
