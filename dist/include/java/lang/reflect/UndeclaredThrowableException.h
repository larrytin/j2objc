//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/lang/reflect/UndeclaredThrowableException.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaLangReflectUndeclaredThrowableException_H_
#define _JavaLangReflectUndeclaredThrowableException_H_

@class JavaLangThrowable;

#import "JreEmulation.h"
#include "java/lang/RuntimeException.h"

#define JavaLangReflectUndeclaredThrowableException_serialVersionUID 330127114055056639

@interface JavaLangReflectUndeclaredThrowableException : JavaLangRuntimeException {
 @public
  JavaLangThrowable *undeclaredThrowable_;
}

- (id)initWithJavaLangThrowable:(JavaLangThrowable *)exception;
- (id)initWithJavaLangThrowable:(JavaLangThrowable *)exception
                   withNSString:(NSString *)detailMessage;
- (JavaLangThrowable *)getUndeclaredThrowable;
- (JavaLangThrowable *)getCause;
- (void)copyAllFieldsTo:(JavaLangReflectUndeclaredThrowableException *)other;
@end

J2OBJC_FIELD_SETTER(JavaLangReflectUndeclaredThrowableException, undeclaredThrowable_, JavaLangThrowable *)

#endif // _JavaLangReflectUndeclaredThrowableException_H_
