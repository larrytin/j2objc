//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/helpers/XMLFilterImpl.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSCharArray.h"
#include "IOSClass.h"
#include "java/io/IOException.h"
#include "java/lang/NullPointerException.h"
#include "org/xml/sax/Attributes.h"
#include "org/xml/sax/ContentHandler.h"
#include "org/xml/sax/DTDHandler.h"
#include "org/xml/sax/EntityResolver.h"
#include "org/xml/sax/ErrorHandler.h"
#include "org/xml/sax/InputSource.h"
#include "org/xml/sax/Locator.h"
#include "org/xml/sax/SAXException.h"
#include "org/xml/sax/SAXNotRecognizedException.h"
#include "org/xml/sax/SAXNotSupportedException.h"
#include "org/xml/sax/SAXParseException.h"
#include "org/xml/sax/XMLReader.h"
#include "org/xml/sax/helpers/XMLFilterImpl.h"

@implementation OrgXmlSaxHelpersXMLFilterImpl

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  if (self = [super init]) {
    OrgXmlSaxHelpersXMLFilterImpl_set_parent_(self, nil);
    OrgXmlSaxHelpersXMLFilterImpl_set_locator_(self, nil);
    OrgXmlSaxHelpersXMLFilterImpl_set_entityResolver_(self, nil);
    OrgXmlSaxHelpersXMLFilterImpl_set_dtdHandler_(self, nil);
    OrgXmlSaxHelpersXMLFilterImpl_set_contentHandler_(self, nil);
    OrgXmlSaxHelpersXMLFilterImpl_set_errorHandler_(self, nil);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithOrgXmlSaxXMLReader:(id<OrgXmlSaxXMLReader>)parent {
  if (self = [super init]) {
    OrgXmlSaxHelpersXMLFilterImpl_set_parent_(self, nil);
    OrgXmlSaxHelpersXMLFilterImpl_set_locator_(self, nil);
    OrgXmlSaxHelpersXMLFilterImpl_set_entityResolver_(self, nil);
    OrgXmlSaxHelpersXMLFilterImpl_set_dtdHandler_(self, nil);
    OrgXmlSaxHelpersXMLFilterImpl_set_contentHandler_(self, nil);
    OrgXmlSaxHelpersXMLFilterImpl_set_errorHandler_(self, nil);
    [self setParentWithOrgXmlSaxXMLReader:parent];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)setParentWithOrgXmlSaxXMLReader:(id<OrgXmlSaxXMLReader>)parent {
  OrgXmlSaxHelpersXMLFilterImpl_set_parent_(self, parent);
}

- (id<OrgXmlSaxXMLReader>)getParent {
  return parent_;
}

- (void)setFeatureWithNSString:(NSString *)name
                   withBoolean:(BOOL)value {
  if (parent_ != nil) {
    [parent_ setFeatureWithNSString:name withBoolean:value];
  }
  else {
    @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:[NSString stringWithFormat:@"Feature: %@", name]] autorelease];
  }
}

+ (IOSObjectArray *)__exceptions_setFeatureWithNSString_withBoolean_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXNotRecognizedException getClass], [OrgXmlSaxSAXNotSupportedException getClass] } count:2 type:[IOSClass getClass]];
}

- (BOOL)getFeatureWithNSString:(NSString *)name {
  if (parent_ != nil) {
    return [parent_ getFeatureWithNSString:name];
  }
  else {
    @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:[NSString stringWithFormat:@"Feature: %@", name]] autorelease];
  }
}

+ (IOSObjectArray *)__exceptions_getFeatureWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXNotRecognizedException getClass], [OrgXmlSaxSAXNotSupportedException getClass] } count:2 type:[IOSClass getClass]];
}

- (void)setPropertyWithNSString:(NSString *)name
                         withId:(id)value {
  if (parent_ != nil) {
    [parent_ setPropertyWithNSString:name withId:value];
  }
  else {
    @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:[NSString stringWithFormat:@"Property: %@", name]] autorelease];
  }
}

+ (IOSObjectArray *)__exceptions_setPropertyWithNSString_withId_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXNotRecognizedException getClass], [OrgXmlSaxSAXNotSupportedException getClass] } count:2 type:[IOSClass getClass]];
}

- (id)getPropertyWithNSString:(NSString *)name {
  if (parent_ != nil) {
    return [parent_ getPropertyWithNSString:name];
  }
  else {
    @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:[NSString stringWithFormat:@"Property: %@", name]] autorelease];
  }
}

+ (IOSObjectArray *)__exceptions_getPropertyWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXNotRecognizedException getClass], [OrgXmlSaxSAXNotSupportedException getClass] } count:2 type:[IOSClass getClass]];
}

- (void)setEntityResolverWithOrgXmlSaxEntityResolver:(id<OrgXmlSaxEntityResolver>)resolver {
  OrgXmlSaxHelpersXMLFilterImpl_set_entityResolver_(self, resolver);
}

- (id<OrgXmlSaxEntityResolver>)getEntityResolver {
  return entityResolver_;
}

- (void)setDTDHandlerWithOrgXmlSaxDTDHandler:(id<OrgXmlSaxDTDHandler>)handler {
  OrgXmlSaxHelpersXMLFilterImpl_set_dtdHandler_(self, handler);
}

- (id<OrgXmlSaxDTDHandler>)getDTDHandler {
  return dtdHandler_;
}

- (void)setContentHandlerWithOrgXmlSaxContentHandler:(id<OrgXmlSaxContentHandler>)handler {
  OrgXmlSaxHelpersXMLFilterImpl_set_contentHandler_(self, handler);
}

- (id<OrgXmlSaxContentHandler>)getContentHandler {
  return contentHandler_;
}

- (void)setErrorHandlerWithOrgXmlSaxErrorHandler:(id<OrgXmlSaxErrorHandler>)handler {
  OrgXmlSaxHelpersXMLFilterImpl_set_errorHandler_(self, handler);
}

- (id<OrgXmlSaxErrorHandler>)getErrorHandler {
  return errorHandler_;
}

- (void)parseWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)input {
  [self setupParse];
  [((id<OrgXmlSaxXMLReader>) nil_chk(parent_)) parseWithOrgXmlSaxInputSource:input];
}

+ (IOSObjectArray *)__exceptions_parseWithOrgXmlSaxInputSource_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass], [JavaIoIOException getClass] } count:2 type:[IOSClass getClass]];
}

- (void)parseWithNSString:(NSString *)systemId {
  [self parseWithOrgXmlSaxInputSource:[[[OrgXmlSaxInputSource alloc] initWithNSString:systemId] autorelease]];
}

+ (IOSObjectArray *)__exceptions_parseWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass], [JavaIoIOException getClass] } count:2 type:[IOSClass getClass]];
}

- (OrgXmlSaxInputSource *)resolveEntityWithNSString:(NSString *)publicId
                                       withNSString:(NSString *)systemId {
  if (entityResolver_ != nil) {
    return [entityResolver_ resolveEntityWithNSString:publicId withNSString:systemId];
  }
  else {
    return nil;
  }
}

+ (IOSObjectArray *)__exceptions_resolveEntityWithNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass], [JavaIoIOException getClass] } count:2 type:[IOSClass getClass]];
}

- (void)notationDeclWithNSString:(NSString *)name
                    withNSString:(NSString *)publicId
                    withNSString:(NSString *)systemId {
  if (dtdHandler_ != nil) {
    [dtdHandler_ notationDeclWithNSString:name withNSString:publicId withNSString:systemId];
  }
}

+ (IOSObjectArray *)__exceptions_notationDeclWithNSString_withNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)unparsedEntityDeclWithNSString:(NSString *)name
                          withNSString:(NSString *)publicId
                          withNSString:(NSString *)systemId
                          withNSString:(NSString *)notationName {
  if (dtdHandler_ != nil) {
    [dtdHandler_ unparsedEntityDeclWithNSString:name withNSString:publicId withNSString:systemId withNSString:notationName];
  }
}

+ (IOSObjectArray *)__exceptions_unparsedEntityDeclWithNSString_withNSString_withNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator {
  OrgXmlSaxHelpersXMLFilterImpl_set_locator_(self, locator);
  if (contentHandler_ != nil) {
    [contentHandler_ setDocumentLocatorWithOrgXmlSaxLocator:locator];
  }
}

- (void)startDocument {
  if (contentHandler_ != nil) {
    [contentHandler_ startDocument];
  }
}

+ (IOSObjectArray *)__exceptions_startDocument {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)endDocument {
  if (contentHandler_ != nil) {
    [contentHandler_ endDocument];
  }
}

+ (IOSObjectArray *)__exceptions_endDocument {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)startPrefixMappingWithNSString:(NSString *)prefix
                          withNSString:(NSString *)uri {
  if (contentHandler_ != nil) {
    [contentHandler_ startPrefixMappingWithNSString:prefix withNSString:uri];
  }
}

+ (IOSObjectArray *)__exceptions_startPrefixMappingWithNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)endPrefixMappingWithNSString:(NSString *)prefix {
  if (contentHandler_ != nil) {
    [contentHandler_ endPrefixMappingWithNSString:prefix];
  }
}

+ (IOSObjectArray *)__exceptions_endPrefixMappingWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)startElementWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts {
  if (contentHandler_ != nil) {
    [contentHandler_ startElementWithNSString:uri withNSString:localName withNSString:qName withOrgXmlSaxAttributes:atts];
  }
}

+ (IOSObjectArray *)__exceptions_startElementWithNSString_withNSString_withNSString_withOrgXmlSaxAttributes_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)endElementWithNSString:(NSString *)uri
                  withNSString:(NSString *)localName
                  withNSString:(NSString *)qName {
  if (contentHandler_ != nil) {
    [contentHandler_ endElementWithNSString:uri withNSString:localName withNSString:qName];
  }
}

+ (IOSObjectArray *)__exceptions_endElementWithNSString_withNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)charactersWithCharArray:(IOSCharArray *)ch
                        withInt:(int)start
                        withInt:(int)length {
  if (contentHandler_ != nil) {
    [contentHandler_ charactersWithCharArray:ch withInt:start withInt:length];
  }
}

+ (IOSObjectArray *)__exceptions_charactersWithCharArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)ignorableWhitespaceWithCharArray:(IOSCharArray *)ch
                                 withInt:(int)start
                                 withInt:(int)length {
  if (contentHandler_ != nil) {
    [contentHandler_ ignorableWhitespaceWithCharArray:ch withInt:start withInt:length];
  }
}

+ (IOSObjectArray *)__exceptions_ignorableWhitespaceWithCharArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data {
  if (contentHandler_ != nil) {
    [contentHandler_ processingInstructionWithNSString:target withNSString:data];
  }
}

+ (IOSObjectArray *)__exceptions_processingInstructionWithNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)skippedEntityWithNSString:(NSString *)name {
  if (contentHandler_ != nil) {
    [contentHandler_ skippedEntityWithNSString:name];
  }
}

+ (IOSObjectArray *)__exceptions_skippedEntityWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)warningWithOrgXmlSaxSAXParseException:(OrgXmlSaxSAXParseException *)e {
  if (errorHandler_ != nil) {
    [errorHandler_ warningWithOrgXmlSaxSAXParseException:e];
  }
}

+ (IOSObjectArray *)__exceptions_warningWithOrgXmlSaxSAXParseException_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)errorWithOrgXmlSaxSAXParseException:(OrgXmlSaxSAXParseException *)e {
  if (errorHandler_ != nil) {
    [errorHandler_ errorWithOrgXmlSaxSAXParseException:e];
  }
}

+ (IOSObjectArray *)__exceptions_errorWithOrgXmlSaxSAXParseException_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)fatalErrorWithOrgXmlSaxSAXParseException:(OrgXmlSaxSAXParseException *)e {
  if (errorHandler_ != nil) {
    [errorHandler_ fatalErrorWithOrgXmlSaxSAXParseException:e];
  }
}

+ (IOSObjectArray *)__exceptions_fatalErrorWithOrgXmlSaxSAXParseException_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)setupParse {
  if (parent_ == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"No parent for filter"] autorelease];
  }
  [((id<OrgXmlSaxXMLReader>) nil_chk(parent_)) setEntityResolverWithOrgXmlSaxEntityResolver:self];
  [parent_ setDTDHandlerWithOrgXmlSaxDTDHandler:self];
  [parent_ setContentHandlerWithOrgXmlSaxContentHandler:self];
  [parent_ setErrorHandlerWithOrgXmlSaxErrorHandler:self];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  OrgXmlSaxHelpersXMLFilterImpl_set_errorHandler_(self, nil);
  OrgXmlSaxHelpersXMLFilterImpl_set_contentHandler_(self, nil);
  OrgXmlSaxHelpersXMLFilterImpl_set_dtdHandler_(self, nil);
  OrgXmlSaxHelpersXMLFilterImpl_set_entityResolver_(self, nil);
  OrgXmlSaxHelpersXMLFilterImpl_set_locator_(self, nil);
  OrgXmlSaxHelpersXMLFilterImpl_set_parent_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgXmlSaxHelpersXMLFilterImpl *)other {
  [super copyAllFieldsTo:other];
  OrgXmlSaxHelpersXMLFilterImpl_set_contentHandler_(other, contentHandler_);
  OrgXmlSaxHelpersXMLFilterImpl_set_dtdHandler_(other, dtdHandler_);
  OrgXmlSaxHelpersXMLFilterImpl_set_entityResolver_(other, entityResolver_);
  OrgXmlSaxHelpersXMLFilterImpl_set_errorHandler_(other, errorHandler_);
  OrgXmlSaxHelpersXMLFilterImpl_set_locator_(other, locator_);
  OrgXmlSaxHelpersXMLFilterImpl_set_parent_(other, parent_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:parent_ name:@"parent"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:locator_ name:@"locator"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:entityResolver_ name:@"entityResolver"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:dtdHandler_ name:@"dtdHandler"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:contentHandler_ name:@"contentHandler"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:errorHandler_ name:@"errorHandler"]];
  return result;
}

@end
