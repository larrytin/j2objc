//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/javax/xml/parsers/SAXParserFactory.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaxXmlParsersSAXParserFactory_H_
#define _JavaxXmlParsersSAXParserFactory_H_

@class JavaLangClassLoader;
@class JavaxXmlParsersSAXParser;
@class JavaxXmlValidationSchema;

#import "JreEmulation.h"

@interface JavaxXmlParsersSAXParserFactory : NSObject {
 @public
  BOOL validating_;
  BOOL namespaceAware_;
}

- (id)init;
+ (JavaxXmlParsersSAXParserFactory *)newInstance OBJC_METHOD_FAMILY_NONE;
+ (JavaxXmlParsersSAXParserFactory *)newInstanceWithNSString:(NSString *)factoryClassName
                                     withJavaLangClassLoader:(JavaLangClassLoader *)classLoader OBJC_METHOD_FAMILY_NONE;
- (JavaxXmlParsersSAXParser *)newSAXParser OBJC_METHOD_FAMILY_NONE;
- (void)setNamespaceAwareWithBoolean:(BOOL)awareness;
- (void)setValidatingWithBoolean:(BOOL)validating;
- (BOOL)isNamespaceAware;
- (BOOL)isValidating;
- (void)setFeatureWithNSString:(NSString *)name
                   withBoolean:(BOOL)value;
- (BOOL)getFeatureWithNSString:(NSString *)name;
- (JavaxXmlValidationSchema *)getSchema;
- (void)setSchemaWithJavaxXmlValidationSchema:(JavaxXmlValidationSchema *)schema;
- (void)setXIncludeAwareWithBoolean:(BOOL)state;
- (BOOL)isXIncludeAware;
- (void)copyAllFieldsTo:(JavaxXmlParsersSAXParserFactory *)other;
@end

#endif // _JavaxXmlParsersSAXParserFactory_H_
