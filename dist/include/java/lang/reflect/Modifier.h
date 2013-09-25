//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/lang/reflect/Modifier.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaLangReflectModifier_H_
#define _JavaLangReflectModifier_H_

#import "JreEmulation.h"

#define JavaLangReflectModifier_ABSTRACT 1024
#define JavaLangReflectModifier_ANNOTATION 8192
#define JavaLangReflectModifier_BRIDGE 64
#define JavaLangReflectModifier_ENUM 16384
#define JavaLangReflectModifier_FINAL 16
#define JavaLangReflectModifier_INTERFACE 512
#define JavaLangReflectModifier_NATIVE 256
#define JavaLangReflectModifier_PRIVATE 2
#define JavaLangReflectModifier_PROTECTED 4
#define JavaLangReflectModifier_PUBLIC 1
#define JavaLangReflectModifier_STATIC 8
#define JavaLangReflectModifier_STRICT 2048
#define JavaLangReflectModifier_SYNCHRONIZED 32
#define JavaLangReflectModifier_SYNTHETIC 4096
#define JavaLangReflectModifier_TRANSIENT 128
#define JavaLangReflectModifier_VARARGS 128
#define JavaLangReflectModifier_VOLATILE 64

@interface JavaLangReflectModifier : NSObject {
}

+ (int)PUBLIC;
+ (int)PRIVATE;
+ (int)PROTECTED;
+ (int)STATIC;
+ (int)FINAL;
+ (int)SYNCHRONIZED;
+ (int)VOLATILE;
+ (int)TRANSIENT;
+ (int)NATIVE;
+ (int)INTERFACE;
+ (int)ABSTRACT;
+ (int)STRICT;
+ (int)BRIDGE;
+ (int)VARARGS;
+ (int)SYNTHETIC;
+ (int)ANNOTATION;
+ (int)ENUM;
- (id)init;
+ (int)classModifiers;
+ (int)constructorModifiers;
+ (int)fieldModifiers;
+ (int)interfaceModifiers;
+ (int)methodModifiers;
+ (BOOL)isAbstractWithInt:(int)modifiers;
+ (BOOL)isFinalWithInt:(int)modifiers;
+ (BOOL)isInterfaceWithInt:(int)modifiers;
+ (BOOL)isNativeWithInt:(int)modifiers;
+ (BOOL)isPrivateWithInt:(int)modifiers;
+ (BOOL)isProtectedWithInt:(int)modifiers;
+ (BOOL)isPublicWithInt:(int)modifiers;
+ (BOOL)isStaticWithInt:(int)modifiers;
+ (BOOL)isStrictWithInt:(int)modifiers;
+ (BOOL)isSynchronizedWithInt:(int)modifiers;
+ (BOOL)isTransientWithInt:(int)modifiers;
+ (BOOL)isVolatileWithInt:(int)modifiers;
+ (NSString *)toStringWithInt:(int)modifiers;
@end

#endif // _JavaLangReflectModifier_H_
