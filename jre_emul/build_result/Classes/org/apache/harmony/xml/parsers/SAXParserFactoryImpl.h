//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/apache/harmony/xml/parsers/SAXParserFactoryImpl.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_H_
#define _OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_H_

@class JavaxXmlParsersSAXParser;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#include "javax/xml/parsers/SAXParserFactory.h"

@interface OrgApacheHarmonyXmlParsersSAXParserFactoryImpl : JavaxXmlParsersSAXParserFactory {
 @public
  id<JavaUtilMap> features_;
}

+ (NSString *)NAMESPACES;
+ (NSString *)VALIDATION;
- (BOOL)getFeatureWithNSString:(NSString *)name;
- (BOOL)isNamespaceAware;
- (BOOL)isValidating;
- (JavaxXmlParsersSAXParser *)newSAXParser OBJC_METHOD_FAMILY_NONE;
- (void)setFeatureWithNSString:(NSString *)name
                      withBOOL:(BOOL)value;
- (void)setNamespaceAwareWithBOOL:(BOOL)value;
- (void)setValidatingWithBOOL:(BOOL)value;
- (id)init;
- (void)copyAllFieldsTo:(OrgApacheHarmonyXmlParsersSAXParserFactoryImpl *)other;
@end

J2OBJC_FIELD_SETTER(OrgApacheHarmonyXmlParsersSAXParserFactoryImpl, features_, id<JavaUtilMap>)

#endif // _OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_H_
