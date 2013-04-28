//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/apache/harmony/xml/parsers/SAXParserImpl.java
//
//  Created by retechretech on 13-4-26.
//

@protocol JavaUtilMap;
@protocol OrgXmlSaxParser;
@protocol OrgXmlSaxXMLReader;

#import "JreEmulation.h"
#import "javax/xml/parsers/SAXParser.h"

@interface OrgApacheHarmonyXmlParsersSAXParserImpl : JavaxXmlParsersSAXParser {
 @public
  id<JavaUtilMap> initialFeatures_;
  id<OrgXmlSaxXMLReader> reader_;
  id<OrgXmlSaxParser> parser_;
}

@property (nonatomic, retain) id<JavaUtilMap> initialFeatures;
- (id<JavaUtilMap>)initialFeatures OBJC_METHOD_FAMILY_NONE;
@property (nonatomic, retain) id<OrgXmlSaxXMLReader> reader;
@property (nonatomic, retain) id<OrgXmlSaxParser> parser;

- (id)initWithJavaUtilMap:(id<JavaUtilMap>)initialFeatures;
- (void)resetInternal;
- (void)reset;
- (id<OrgXmlSaxParser>)getParser;
- (id)getPropertyWithNSString:(NSString *)name;
- (id<OrgXmlSaxXMLReader>)getXMLReader;
- (BOOL)isNamespaceAware;
- (BOOL)isValidating;
- (void)setPropertyWithNSString:(NSString *)name
                         withId:(id)value;
@end
