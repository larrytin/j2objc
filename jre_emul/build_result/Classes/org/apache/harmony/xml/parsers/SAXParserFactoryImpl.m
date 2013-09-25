//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/apache/harmony/xml/parsers/SAXParserFactoryImpl.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Boolean.h"
#include "java/lang/Exception.h"
#include "java/lang/NullPointerException.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "javax/xml/parsers/ParserConfigurationException.h"
#include "javax/xml/parsers/SAXParser.h"
#include "org/apache/harmony/xml/parsers/SAXParserFactoryImpl.h"
#include "org/apache/harmony/xml/parsers/SAXParserImpl.h"
#include "org/xml/sax/SAXNotRecognizedException.h"

@implementation OrgApacheHarmonyXmlParsersSAXParserFactoryImpl

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_NAMESPACES_ name:@"OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_NAMESPACES_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_VALIDATION_ name:@"OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_VALIDATION_"]];
  return result;
}

static NSString * OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_NAMESPACES_ = @"http://xml.org/sax/features/namespaces";
static NSString * OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_VALIDATION_ = @"http://xml.org/sax/features/validation";

+ (NSString *)NAMESPACES {
  return OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_NAMESPACES_;
}

+ (NSString *)VALIDATION {
  return OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_VALIDATION_;
}

- (BOOL)getFeatureWithNSString:(NSString *)name {
  if (name == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"name == null"] autorelease];
  }
  if (![((NSString *) nil_chk(name)) hasPrefix:@"http://xml.org/sax/features/"]) {
    @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:name] autorelease];
  }
  return [((JavaLangBoolean *) nil_chk([JavaLangBoolean getTRUE])) isEqual:[((id<JavaUtilMap>) nil_chk(features_)) getWithId:name]];
}

+ (IOSObjectArray *)__exceptions_getFeatureWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXNotRecognizedException getClass] } count:1 type:[IOSClass getClass]];
}

- (BOOL)isNamespaceAware {
  @try {
    return [self getFeatureWithNSString:OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_NAMESPACES_];
  }
  @catch (OrgXmlSaxSAXNotRecognizedException *ex) {
    @throw [[[JavaLangAssertionError alloc] initWithId:ex] autorelease];
  }
}

- (BOOL)isValidating {
  @try {
    return [self getFeatureWithNSString:OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_VALIDATION_];
  }
  @catch (OrgXmlSaxSAXNotRecognizedException *ex) {
    @throw [[[JavaLangAssertionError alloc] initWithId:ex] autorelease];
  }
}

- (JavaxXmlParsersSAXParser *)newSAXParser {
  if ([self isValidating]) {
    @throw [[[JavaxXmlParsersParserConfigurationException alloc] initWithNSString:@"No validating SAXParser implementation available"] autorelease];
  }
  @try {
    return [[[OrgApacheHarmonyXmlParsersSAXParserImpl alloc] initWithJavaUtilMap:features_] autorelease];
  }
  @catch (JavaLangException *ex) {
    @throw [[[JavaxXmlParsersParserConfigurationException alloc] initWithNSString:[((JavaLangException *) nil_chk(ex)) description]] autorelease];
  }
}

+ (IOSObjectArray *)__exceptions_newSAXParser {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaxXmlParsersParserConfigurationException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)setFeatureWithNSString:(NSString *)name
                   withBoolean:(BOOL)value {
  if (name == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"name == null"] autorelease];
  }
  if (![((NSString *) nil_chk(name)) hasPrefix:@"http://xml.org/sax/features/"]) {
    @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:name] autorelease];
  }
  if (value) {
    [((id<JavaUtilMap>) nil_chk(features_)) putWithId:name withId:[JavaLangBoolean getTRUE]];
  }
  else {
    [((id<JavaUtilMap>) nil_chk(features_)) putWithId:name withId:[JavaLangBoolean getFALSE]];
  }
}

+ (IOSObjectArray *)__exceptions_setFeatureWithNSString_withBoolean_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXNotRecognizedException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)setNamespaceAwareWithBoolean:(BOOL)value {
  @try {
    [self setFeatureWithNSString:OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_NAMESPACES_ withBoolean:value];
  }
  @catch (OrgXmlSaxSAXNotRecognizedException *ex) {
    @throw [[[JavaLangAssertionError alloc] initWithId:ex] autorelease];
  }
}

- (void)setValidatingWithBoolean:(BOOL)value {
  @try {
    [self setFeatureWithNSString:OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_VALIDATION_ withBoolean:value];
  }
  @catch (OrgXmlSaxSAXNotRecognizedException *ex) {
    @throw [[[JavaLangAssertionError alloc] initWithId:ex] autorelease];
  }
}

- (id)init {
  if (self = [super init]) {
    OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_set_features_(self, [[[JavaUtilHashMap alloc] init] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_set_features_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgApacheHarmonyXmlParsersSAXParserFactoryImpl *)other {
  [super copyAllFieldsTo:other];
  OrgApacheHarmonyXmlParsersSAXParserFactoryImpl_set_features_(other, features_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:features_ name:@"features"]];
  return result;
}

@end
