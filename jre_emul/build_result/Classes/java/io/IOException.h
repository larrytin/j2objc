//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/io/IOException.java
//
//  Created by retechretech on 13-4-19.
//

@class JavaLangThrowable;

#import "JreEmulation.h"
#import "java/lang/Exception.h"

#define JavaIoIOException_serialVersionUID 7818375828146090155

@interface JavaIoIOException : JavaLangException {
}

- (id)init;
- (id)initWithNSString:(NSString *)detailMessage;
- (id)initWithNSString:(NSString *)message
 withJavaLangThrowable:(JavaLangThrowable *)cause;
- (id)initWithJavaLangThrowable:(JavaLangThrowable *)cause;
@end
