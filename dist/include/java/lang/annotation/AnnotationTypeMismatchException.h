//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/lang/annotation/AnnotationTypeMismatchException.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaLangAnnotationAnnotationTypeMismatchException_H_
#define _JavaLangAnnotationAnnotationTypeMismatchException_H_

@class JavaLangReflectMethod;

#import "JreEmulation.h"
#include "java/lang/RuntimeException.h"

#define JavaLangAnnotationAnnotationTypeMismatchException_serialVersionUID 8125925355765570191

@interface JavaLangAnnotationAnnotationTypeMismatchException : JavaLangRuntimeException {
 @public
  JavaLangReflectMethod *element__;
  NSString *foundType__;
}

- (id)initWithJavaLangReflectMethod:(JavaLangReflectMethod *)element
                       withNSString:(NSString *)foundType;
- (JavaLangReflectMethod *)element;
- (NSString *)foundType;
- (void)copyAllFieldsTo:(JavaLangAnnotationAnnotationTypeMismatchException *)other;
@end

J2OBJC_FIELD_SETTER(JavaLangAnnotationAnnotationTypeMismatchException, element__, JavaLangReflectMethod *)
J2OBJC_FIELD_SETTER(JavaLangAnnotationAnnotationTypeMismatchException, foundType__, NSString *)

#endif // _JavaLangAnnotationAnnotationTypeMismatchException_H_
