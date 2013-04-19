//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/helpers/DefaultHandler.java
//
//  Created by retechretech on 13-4-19.
//

@class IOSCharArray;
@class OrgXmlSaxInputSource;
@class OrgXmlSaxSAXParseException;
@protocol OrgXmlSaxAttributes;
@protocol OrgXmlSaxLocator;

#import "JreEmulation.h"
#import "org/xml/sax/ContentHandler.h"
#import "org/xml/sax/DTDHandler.h"
#import "org/xml/sax/EntityResolver.h"
#import "org/xml/sax/ErrorHandler.h"

@interface OrgXmlSaxHelpersDefaultHandler : NSObject < OrgXmlSaxEntityResolver, OrgXmlSaxDTDHandler, OrgXmlSaxContentHandler, OrgXmlSaxErrorHandler > {
}

- (OrgXmlSaxInputSource *)resolveEntityWithNSString:(NSString *)publicId
                                       withNSString:(NSString *)systemId;
- (void)notationDeclWithNSString:(NSString *)name
                    withNSString:(NSString *)publicId
                    withNSString:(NSString *)systemId;
- (void)unparsedEntityDeclWithNSString:(NSString *)name
                          withNSString:(NSString *)publicId
                          withNSString:(NSString *)systemId
                          withNSString:(NSString *)notationName;
- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator;
- (void)startDocument;
- (void)endDocument;
- (void)startPrefixMappingWithNSString:(NSString *)prefix
                          withNSString:(NSString *)uri;
- (void)endPrefixMappingWithNSString:(NSString *)prefix;
- (void)startElementWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)attributes;
- (void)endElementWithNSString:(NSString *)uri
                  withNSString:(NSString *)localName
                  withNSString:(NSString *)qName;
- (void)charactersWithJavaLangCharacterArray:(IOSCharArray *)ch
                                     withInt:(int)start
                                     withInt:(int)length;
- (void)ignorableWhitespaceWithJavaLangCharacterArray:(IOSCharArray *)ch
                                              withInt:(int)start
                                              withInt:(int)length;
- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data;
- (void)skippedEntityWithNSString:(NSString *)name;
- (void)warningWithOrgXmlSaxSAXParseException:(OrgXmlSaxSAXParseException *)e;
- (void)errorWithOrgXmlSaxSAXParseException:(OrgXmlSaxSAXParseException *)e;
- (void)fatalErrorWithOrgXmlSaxSAXParseException:(OrgXmlSaxSAXParseException *)e;
- (id)init;
@end
