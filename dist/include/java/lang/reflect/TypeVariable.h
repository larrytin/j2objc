//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/lang/reflect/TypeVariable.java
//
//  Created by retechretech on 13-3-15.
//

@class IOSObjectArray;
@protocol JavaLangReflectGenericDeclaration;

#import "JreEmulation.h"
#import "java/lang/reflect/Type.h"

@protocol JavaLangReflectTypeVariable < JavaLangReflectType, NSObject >
- (IOSObjectArray *)getBounds;
- (id)getGenericDeclaration;
- (NSString *)getName;
@end