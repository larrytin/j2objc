//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaSecurityAllPermissionCollection_H_
#define _JavaSecurityAllPermissionCollection_H_

@class JavaSecurityPermission;
@protocol JavaUtilEnumeration;

#import "JreEmulation.h"
#include "java/security/PermissionCollection.h"

@interface JavaSecurityAllPermissionCollection : JavaSecurityPermissionCollection {
}

- (void)addWithJavaSecurityPermission:(JavaSecurityPermission *)permission;
- (id<JavaUtilEnumeration>)elements;
- (BOOL)impliesWithJavaSecurityPermission:(JavaSecurityPermission *)permission;
- (id)init;
@end

#endif // _JavaSecurityAllPermissionCollection_H_
