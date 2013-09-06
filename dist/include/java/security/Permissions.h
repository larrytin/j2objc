//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/security/Permissions.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaSecurityPermissions_H_
#define _JavaSecurityPermissions_H_

@class JavaSecurityPermission;
@protocol JavaUtilEnumeration;

#import "JreEmulation.h"
#include "java/io/Serializable.h"
#include "java/security/PermissionCollection.h"

@interface JavaSecurityPermissions : JavaSecurityPermissionCollection < JavaIoSerializable > {
}

- (void)addWithJavaSecurityPermission:(JavaSecurityPermission *)permission;
- (id<JavaUtilEnumeration>)elements;
- (BOOL)impliesWithJavaSecurityPermission:(JavaSecurityPermission *)permission;
- (id)init;
@end

#endif // _JavaSecurityPermissions_H_
