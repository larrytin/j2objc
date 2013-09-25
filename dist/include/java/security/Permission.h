//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/security/Permission.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaSecurityPermission_H_
#define _JavaSecurityPermission_H_

@class JavaSecurityPermissionCollection;

#import "JreEmulation.h"
#include "java/io/Serializable.h"
#include "java/security/Guard.h"

@interface JavaSecurityPermission : NSObject < JavaSecurityGuard, JavaIoSerializable > {
}

- (id)initWithNSString:(NSString *)name;
- (NSString *)getName;
- (void)checkGuardWithId:(id)obj;
- (JavaSecurityPermissionCollection *)newPermissionCollection OBJC_METHOD_FAMILY_NONE;
- (NSString *)getActions;
- (BOOL)impliesWithJavaSecurityPermission:(JavaSecurityPermission *)permission;
@end

#endif // _JavaSecurityPermission_H_
