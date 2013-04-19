//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/ext/DefaultHandler2.java
//
//  Created by retechretech on 13-4-19.
//

@class IOSCharArray;
@class OrgXmlSaxInputSource;

#import "JreEmulation.h"
#import "org/xml/sax/ext/DeclHandler.h"
#import "org/xml/sax/ext/EntityResolver2.h"
#import "org/xml/sax/ext/LexicalHandler.h"
#import "org/xml/sax/helpers/DefaultHandler.h"

@interface OrgXmlSaxExtDefaultHandler2 : OrgXmlSaxHelpersDefaultHandler < OrgXmlSaxExtLexicalHandler, OrgXmlSaxExtDeclHandler, OrgXmlSaxExtEntityResolver2 > {
}

- (id)init;
- (void)startCDATA;
- (void)endCDATA;
- (void)startDTDWithNSString:(NSString *)name
                withNSString:(NSString *)publicId
                withNSString:(NSString *)systemId;
- (void)endDTD;
- (void)startEntityWithNSString:(NSString *)name;
- (void)endEntityWithNSString:(NSString *)name;
- (void)commentWithJavaLangCharacterArray:(IOSCharArray *)ch
                                  withInt:(int)start
                                  withInt:(int)length;
- (void)attributeDeclWithNSString:(NSString *)eName
                     withNSString:(NSString *)aName
                     withNSString:(NSString *)type
                     withNSString:(NSString *)mode
                     withNSString:(NSString *)value;
- (void)elementDeclWithNSString:(NSString *)name
                   withNSString:(NSString *)model;
- (void)externalEntityDeclWithNSString:(NSString *)name
                          withNSString:(NSString *)publicId
                          withNSString:(NSString *)systemId;
- (void)internalEntityDeclWithNSString:(NSString *)name
                          withNSString:(NSString *)value;
- (OrgXmlSaxInputSource *)getExternalSubsetWithNSString:(NSString *)name
                                           withNSString:(NSString *)baseURI;
- (OrgXmlSaxInputSource *)resolveEntityWithNSString:(NSString *)name
                                       withNSString:(NSString *)publicId
                                       withNSString:(NSString *)baseURI
                                       withNSString:(NSString *)systemId;
- (OrgXmlSaxInputSource *)resolveEntityWithNSString:(NSString *)publicId
                                       withNSString:(NSString *)systemId;
@end
