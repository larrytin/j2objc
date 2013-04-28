//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/helpers/XMLFilterImpl.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSCharArray.h"
#import "java/lang/NullPointerException.h"
#import "org/xml/sax/Attributes.h"
#import "org/xml/sax/ContentHandler.h"
#import "org/xml/sax/DTDHandler.h"
#import "org/xml/sax/EntityResolver.h"
#import "org/xml/sax/ErrorHandler.h"
#import "org/xml/sax/InputSource.h"
#import "org/xml/sax/Locator.h"
#import "org/xml/sax/SAXNotRecognizedException.h"
#import "org/xml/sax/SAXParseException.h"
#import "org/xml/sax/XMLReader.h"
#import "org/xml/sax/helpers/XMLFilterImpl.h"

@implementation OrgXmlSaxHelpersXMLFilterImpl

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id<OrgXmlSaxXMLReader>)parent {
  return parent_;
}
- (void)setParent:(id<OrgXmlSaxXMLReader>)parent {
  JreOperatorRetainedAssign(&parent_, parent);
}
@synthesize parent = parent_;
- (id<OrgXmlSaxLocator>)locator {
  return locator_;
}
- (void)setLocator:(id<OrgXmlSaxLocator>)locator {
  JreOperatorRetainedAssign(&locator_, locator);
}
@synthesize locator = locator_;
- (id<OrgXmlSaxEntityResolver>)entityResolver {
  return entityResolver_;
}
- (void)setEntityResolver:(id<OrgXmlSaxEntityResolver>)entityResolver {
  JreOperatorRetainedAssign(&entityResolver_, entityResolver);
}
@synthesize entityResolver = entityResolver_;
- (id<OrgXmlSaxDTDHandler>)dtdHandler {
  return dtdHandler_;
}
- (void)setDtdHandler:(id<OrgXmlSaxDTDHandler>)dtdHandler {
  JreOperatorRetainedAssign(&dtdHandler_, dtdHandler);
}
@synthesize dtdHandler = dtdHandler_;
- (id<OrgXmlSaxContentHandler>)contentHandler {
  return contentHandler_;
}
- (void)setContentHandler:(id<OrgXmlSaxContentHandler>)contentHandler {
  JreOperatorRetainedAssign(&contentHandler_, contentHandler);
}
@synthesize contentHandler = contentHandler_;
- (id<OrgXmlSaxErrorHandler>)errorHandler {
  return errorHandler_;
}
- (void)setErrorHandler:(id<OrgXmlSaxErrorHandler>)errorHandler {
  JreOperatorRetainedAssign(&errorHandler_, errorHandler);
}
@synthesize errorHandler = errorHandler_;

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&parent_, nil);
    JreOperatorRetainedAssign(&locator_, nil);
    JreOperatorRetainedAssign(&entityResolver_, nil);
    JreOperatorRetainedAssign(&dtdHandler_, nil);
    JreOperatorRetainedAssign(&contentHandler_, nil);
    JreOperatorRetainedAssign(&errorHandler_, nil);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithOrgXmlSaxXMLReader:(id<OrgXmlSaxXMLReader>)parent {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&parent_, nil);
    JreOperatorRetainedAssign(&locator_, nil);
    JreOperatorRetainedAssign(&entityResolver_, nil);
    JreOperatorRetainedAssign(&dtdHandler_, nil);
    JreOperatorRetainedAssign(&contentHandler_, nil);
    JreOperatorRetainedAssign(&errorHandler_, nil);
    [self setParentWithOrgXmlSaxXMLReader:parent];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)setParentWithOrgXmlSaxXMLReader:(id<OrgXmlSaxXMLReader>)parent {
  self.parent = parent;
}

- (id<OrgXmlSaxXMLReader>)getParent {
  return parent_;
}

- (void)setFeatureWithNSString:(NSString *)name
                      withBOOL:(BOOL)value {
  if (parent_ != nil) {
    [parent_ setFeatureWithNSString:name withBOOL:value];
  }
  else {
    @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:[NSString stringWithFormat:@"Feature: %@", name]] autorelease];
  }
}

- (BOOL)getFeatureWithNSString:(NSString *)name {
  if (parent_ != nil) {
    return [parent_ getFeatureWithNSString:name];
  }
  else {
    @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:[NSString stringWithFormat:@"Feature: %@", name]] autorelease];
  }
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

- (id)getPropertyWithNSString:(NSString *)name {
  if (parent_ != nil) {
    return [parent_ getPropertyWithNSString:name];
  }
  else {
    @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:[NSString stringWithFormat:@"Property: %@", name]] autorelease];
  }
}

- (void)setEntityResolverWithOrgXmlSaxEntityResolver:(id<OrgXmlSaxEntityResolver>)resolver {
  JreOperatorRetainedAssign(&entityResolver_, resolver);
}

- (id<OrgXmlSaxEntityResolver>)getEntityResolver {
  return entityResolver_;
}

- (void)setDTDHandlerWithOrgXmlSaxDTDHandler:(id<OrgXmlSaxDTDHandler>)handler {
  JreOperatorRetainedAssign(&dtdHandler_, handler);
}

- (id<OrgXmlSaxDTDHandler>)getDTDHandler {
  return dtdHandler_;
}

- (void)setContentHandlerWithOrgXmlSaxContentHandler:(id<OrgXmlSaxContentHandler>)handler {
  JreOperatorRetainedAssign(&contentHandler_, handler);
}

- (id<OrgXmlSaxContentHandler>)getContentHandler {
  return contentHandler_;
}

- (void)setErrorHandlerWithOrgXmlSaxErrorHandler:(id<OrgXmlSaxErrorHandler>)handler {
  JreOperatorRetainedAssign(&errorHandler_, handler);
}

- (id<OrgXmlSaxErrorHandler>)getErrorHandler {
  return errorHandler_;
}

- (void)parseWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)input {
  [self setupParse];
  [((id<OrgXmlSaxXMLReader>) NIL_CHK(parent_)) parseWithOrgXmlSaxInputSource:input];
}

- (void)parseWithNSString:(NSString *)systemId {
  [self parseWithOrgXmlSaxInputSource:[[[OrgXmlSaxInputSource alloc] initWithNSString:systemId] autorelease]];
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

- (void)notationDeclWithNSString:(NSString *)name
                    withNSString:(NSString *)publicId
                    withNSString:(NSString *)systemId {
  if (dtdHandler_ != nil) {
    [dtdHandler_ notationDeclWithNSString:name withNSString:publicId withNSString:systemId];
  }
}

- (void)unparsedEntityDeclWithNSString:(NSString *)name
                          withNSString:(NSString *)publicId
                          withNSString:(NSString *)systemId
                          withNSString:(NSString *)notationName {
  if (dtdHandler_ != nil) {
    [dtdHandler_ unparsedEntityDeclWithNSString:name withNSString:publicId withNSString:systemId withNSString:notationName];
  }
}

- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator {
  self.locator = locator;
  if (contentHandler_ != nil) {
    [contentHandler_ setDocumentLocatorWithOrgXmlSaxLocator:locator];
  }
}

- (void)startDocument {
  if (contentHandler_ != nil) {
    [contentHandler_ startDocument];
  }
}

- (void)endDocument {
  if (contentHandler_ != nil) {
    [contentHandler_ endDocument];
  }
}

- (void)startPrefixMappingWithNSString:(NSString *)prefix
                          withNSString:(NSString *)uri {
  if (contentHandler_ != nil) {
    [contentHandler_ startPrefixMappingWithNSString:prefix withNSString:uri];
  }
}

- (void)endPrefixMappingWithNSString:(NSString *)prefix {
  if (contentHandler_ != nil) {
    [contentHandler_ endPrefixMappingWithNSString:prefix];
  }
}

- (void)startElementWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts {
  if (contentHandler_ != nil) {
    [contentHandler_ startElementWithNSString:uri withNSString:localName withNSString:qName withOrgXmlSaxAttributes:atts];
  }
}

- (void)endElementWithNSString:(NSString *)uri
                  withNSString:(NSString *)localName
                  withNSString:(NSString *)qName {
  if (contentHandler_ != nil) {
    [contentHandler_ endElementWithNSString:uri withNSString:localName withNSString:qName];
  }
}

- (void)charactersWithJavaLangCharacterArray:(IOSCharArray *)ch
                                     withInt:(int)start
                                     withInt:(int)length {
  if (contentHandler_ != nil) {
    [contentHandler_ charactersWithJavaLangCharacterArray:ch withInt:start withInt:length];
  }
}

- (void)ignorableWhitespaceWithJavaLangCharacterArray:(IOSCharArray *)ch
                                              withInt:(int)start
                                              withInt:(int)length {
  if (contentHandler_ != nil) {
    [contentHandler_ ignorableWhitespaceWithJavaLangCharacterArray:ch withInt:start withInt:length];
  }
}

- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data {
  if (contentHandler_ != nil) {
    [contentHandler_ processingInstructionWithNSString:target withNSString:data];
  }
}

- (void)skippedEntityWithNSString:(NSString *)name {
  if (contentHandler_ != nil) {
    [contentHandler_ skippedEntityWithNSString:name];
  }
}

- (void)warningWithOrgXmlSaxSAXParseException:(OrgXmlSaxSAXParseException *)e {
  if (errorHandler_ != nil) {
    [errorHandler_ warningWithOrgXmlSaxSAXParseException:e];
  }
}

- (void)errorWithOrgXmlSaxSAXParseException:(OrgXmlSaxSAXParseException *)e {
  if (errorHandler_ != nil) {
    [errorHandler_ errorWithOrgXmlSaxSAXParseException:e];
  }
}

- (void)fatalErrorWithOrgXmlSaxSAXParseException:(OrgXmlSaxSAXParseException *)e {
  if (errorHandler_ != nil) {
    [errorHandler_ fatalErrorWithOrgXmlSaxSAXParseException:e];
  }
}

- (void)setupParse {
  if (parent_ == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"No parent for filter"] autorelease];
  }
  [((id<OrgXmlSaxXMLReader>) NIL_CHK(parent_)) setEntityResolverWithOrgXmlSaxEntityResolver:self];
  [((id<OrgXmlSaxXMLReader>) NIL_CHK(parent_)) setDTDHandlerWithOrgXmlSaxDTDHandler:self];
  [((id<OrgXmlSaxXMLReader>) NIL_CHK(parent_)) setContentHandlerWithOrgXmlSaxContentHandler:self];
  [((id<OrgXmlSaxXMLReader>) NIL_CHK(parent_)) setErrorHandlerWithOrgXmlSaxErrorHandler:self];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&errorHandler_, nil);
  JreOperatorRetainedAssign(&contentHandler_, nil);
  JreOperatorRetainedAssign(&dtdHandler_, nil);
  JreOperatorRetainedAssign(&entityResolver_, nil);
  JreOperatorRetainedAssign(&locator_, nil);
  JreOperatorRetainedAssign(&parent_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  OrgXmlSaxHelpersXMLFilterImpl *typedCopy = (OrgXmlSaxHelpersXMLFilterImpl *) copy;
  typedCopy.parent = parent_;
  typedCopy.locator = locator_;
  typedCopy.entityResolver = entityResolver_;
  typedCopy.dtdHandler = dtdHandler_;
  typedCopy.contentHandler = contentHandler_;
  typedCopy.errorHandler = errorHandler_;
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
