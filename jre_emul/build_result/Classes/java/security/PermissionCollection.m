//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "java/security/Permission.h"
#include "java/security/PermissionCollection.h"
#include "java/util/Enumeration.h"

@implementation JavaSecurityPermissionCollection

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (void)addWithJavaSecurityPermission:(JavaSecurityPermission *)permission {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id<JavaUtilEnumeration>)elements {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)impliesWithJavaSecurityPermission:(JavaSecurityPermission *)permission {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)isReadOnly {
  return YES;
}

- (void)setReadOnly {
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

@end
