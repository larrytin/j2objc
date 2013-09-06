//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/lang/SecurityManager.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/io/FileDescriptor.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/Deprecated.h"
#include "java/lang/SecurityManager.h"
#include "java/lang/Thread.h"
#include "java/lang/ThreadGroup.h"
#include "java/security/Permission.h"

@implementation JavaLangSecurityManager

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)checkAcceptWithNSString:(NSString *)host
                        withInt:(int)port {
}

- (void)checkAccessWithJavaLangThread:(JavaLangThread *)thread {
}

- (void)checkAccessWithJavaLangThreadGroup:(JavaLangThreadGroup *)group {
}

- (void)checkConnectWithNSString:(NSString *)host
                         withInt:(int)port {
}

- (void)checkConnectWithNSString:(NSString *)host
                         withInt:(int)port
                          withId:(id)context {
}

- (void)checkCreateClassLoader {
}

- (void)checkDeleteWithNSString:(NSString *)file {
}

- (void)checkExecWithNSString:(NSString *)cmd {
}

- (void)checkExitWithInt:(int)status {
}

- (void)checkLinkWithNSString:(NSString *)libName {
}

- (void)checkListenWithInt:(int)port {
}

- (void)checkMemberAccessWithIOSClass:(IOSClass *)cls
                              withInt:(int)type {
}

- (void)checkPackageAccessWithNSString:(NSString *)packageName {
}

- (void)checkPackageDefinitionWithNSString:(NSString *)packageName {
}

- (void)checkPropertiesAccess {
}

- (void)checkPropertyAccessWithNSString:(NSString *)key {
}

- (void)checkReadWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd {
}

- (void)checkReadWithNSString:(NSString *)file {
}

- (void)checkReadWithNSString:(NSString *)file
                       withId:(id)context {
}

- (void)checkSecurityAccessWithNSString:(NSString *)target {
}

- (void)checkSetFactory {
}

- (BOOL)checkTopLevelWindowWithId:(id)window {
  return YES;
}

- (void)checkSystemClipboardAccess {
}

- (void)checkAwtEventQueueAccess {
}

- (void)checkPrintJobAccess {
}

- (void)checkWriteWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd {
}

- (void)checkWriteWithNSString:(NSString *)file {
}

- (BOOL)getInCheck {
  return inCheck_;
}

- (IOSObjectArray *)getClassContext {
  return nil;
}

- (JavaLangClassLoader *)currentClassLoader {
  return nil;
}

- (int)classLoaderDepth {
  return -1;
}

- (IOSClass *)currentLoadedClass {
  return nil;
}

- (int)classDepthWithNSString:(NSString *)name {
  return -1;
}

- (BOOL)inClassWithNSString:(NSString *)name {
  return NO;
}

- (BOOL)inClassLoader {
  return NO;
}

- (JavaLangThreadGroup *)getThreadGroup {
  return [((JavaLangThread *) nil_chk([JavaLangThread currentThread])) getThreadGroup];
}

- (id)getSecurityContext {
  return nil;
}

- (void)checkPermissionWithJavaSecurityPermission:(JavaSecurityPermission *)permission {
}

- (void)checkPermissionWithJavaSecurityPermission:(JavaSecurityPermission *)permission
                                           withId:(id)context {
}

- (void)copyAllFieldsTo:(JavaLangSecurityManager *)other {
  [super copyAllFieldsTo:other];
  other->inCheck_ = inCheck_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

+ (IOSObjectArray *)__annotations_getInCheck {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_currentClassLoader {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_classLoaderDepth {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_currentLoadedClass {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_classDepthWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_inClassWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_inClassLoader {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_inCheck_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

@end
