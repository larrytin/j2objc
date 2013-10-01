//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSCharArray.h"
#include "IOSClass.h"
#include "java/io/IOException.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Locale.h"
#include "org/xml/sax/Attributes.h"
#include "org/xml/sax/DTDHandler.h"
#include "org/xml/sax/DocumentHandler.h"
#include "org/xml/sax/EntityResolver.h"
#include "org/xml/sax/ErrorHandler.h"
#include "org/xml/sax/InputSource.h"
#include "org/xml/sax/Locator.h"
#include "org/xml/sax/SAXException.h"
#include "org/xml/sax/SAXNotSupportedException.h"
#include "org/xml/sax/XMLReader.h"
#include "org/xml/sax/helpers/XMLReaderAdapter.h"
#include "org/xml/sax/helpers/XMLReaderFactory.h"

@implementation OrgXmlSaxHelpersXMLReaderAdapter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  if (self = [super init]) {
    [self setupWithOrgXmlSaxXMLReader:[OrgXmlSaxHelpersXMLReaderFactory createXMLReader]];
    JreMemDebugAdd(self);
  }
  return self;
}

+ (IOSObjectArray *)__exceptions_OrgXmlSaxHelpersXMLReaderAdapter {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (id)initWithOrgXmlSaxXMLReader:(id<OrgXmlSaxXMLReader>)xmlReader {
  if (self = [super init]) {
    [self setupWithOrgXmlSaxXMLReader:xmlReader];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)setupWithOrgXmlSaxXMLReader:(id<OrgXmlSaxXMLReader>)xmlReader {
  if (xmlReader == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"XMLReader must not be null"] autorelease];
  }
  OrgXmlSaxHelpersXMLReaderAdapter_set_xmlReader_(self, xmlReader);
  OrgXmlSaxHelpersXMLReaderAdapter_set_qAtts_(self, [[[OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter alloc] init] autorelease]);
}

- (void)setLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale {
  @throw [[[OrgXmlSaxSAXNotSupportedException alloc] initWithNSString:@"setLocale not supported"] autorelease];
}

+ (IOSObjectArray *)__exceptions_setLocaleWithJavaUtilLocale_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)setEntityResolverWithOrgXmlSaxEntityResolver:(id<OrgXmlSaxEntityResolver>)resolver {
  [((id<OrgXmlSaxXMLReader>) nil_chk(xmlReader_)) setEntityResolverWithOrgXmlSaxEntityResolver:resolver];
}

- (void)setDTDHandlerWithOrgXmlSaxDTDHandler:(id<OrgXmlSaxDTDHandler>)handler {
  [((id<OrgXmlSaxXMLReader>) nil_chk(xmlReader_)) setDTDHandlerWithOrgXmlSaxDTDHandler:handler];
}

- (void)setDocumentHandlerWithOrgXmlSaxDocumentHandler:(id<OrgXmlSaxDocumentHandler>)handler {
  OrgXmlSaxHelpersXMLReaderAdapter_set_documentHandler_(self, handler);
}

- (void)setErrorHandlerWithOrgXmlSaxErrorHandler:(id<OrgXmlSaxErrorHandler>)handler {
  [((id<OrgXmlSaxXMLReader>) nil_chk(xmlReader_)) setErrorHandlerWithOrgXmlSaxErrorHandler:handler];
}

- (void)parseWithNSString:(NSString *)systemId {
  [self parseWithOrgXmlSaxInputSource:[[[OrgXmlSaxInputSource alloc] initWithNSString:systemId] autorelease]];
}

+ (IOSObjectArray *)__exceptions_parseWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass], [OrgXmlSaxSAXException getClass] } count:2 type:[IOSClass getClass]];
}

- (void)parseWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)input {
  [self setupXMLReader];
  [((id<OrgXmlSaxXMLReader>) nil_chk(xmlReader_)) parseWithOrgXmlSaxInputSource:input];
}

+ (IOSObjectArray *)__exceptions_parseWithOrgXmlSaxInputSource_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass], [OrgXmlSaxSAXException getClass] } count:2 type:[IOSClass getClass]];
}

- (void)setupXMLReader {
  [((id<OrgXmlSaxXMLReader>) nil_chk(xmlReader_)) setFeatureWithNSString:@"http://xml.org/sax/features/namespace-prefixes" withBoolean:YES];
  @try {
    [xmlReader_ setFeatureWithNSString:@"http://xml.org/sax/features/namespaces" withBoolean:NO];
  }
  @catch (OrgXmlSaxSAXException *e) {
  }
  [xmlReader_ setContentHandlerWithOrgXmlSaxContentHandler:self];
}

+ (IOSObjectArray *)__exceptions_setupXMLReader {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator {
  if (documentHandler_ != nil) [documentHandler_ setDocumentLocatorWithOrgXmlSaxLocator:locator];
}

- (void)startDocument {
  if (documentHandler_ != nil) [documentHandler_ startDocument];
}

+ (IOSObjectArray *)__exceptions_startDocument {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)endDocument {
  if (documentHandler_ != nil) [documentHandler_ endDocument];
}

+ (IOSObjectArray *)__exceptions_endDocument {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)startPrefixMappingWithNSString:(NSString *)prefix
                          withNSString:(NSString *)uri {
}

- (void)endPrefixMappingWithNSString:(NSString *)prefix {
}

- (void)startElementWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts {
  if (documentHandler_ != nil) {
    [((OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter *) nil_chk(qAtts_)) setAttributesWithOrgXmlSaxAttributes:atts];
    [documentHandler_ startElementWithNSString:qName withOrgXmlSaxAttributeList:qAtts_];
  }
}

+ (IOSObjectArray *)__exceptions_startElementWithNSString_withNSString_withNSString_withOrgXmlSaxAttributes_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)endElementWithNSString:(NSString *)uri
                  withNSString:(NSString *)localName
                  withNSString:(NSString *)qName {
  if (documentHandler_ != nil) [documentHandler_ endElementWithNSString:qName];
}

+ (IOSObjectArray *)__exceptions_endElementWithNSString_withNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)charactersWithCharArray:(IOSCharArray *)ch
                        withInt:(int)start
                        withInt:(int)length {
  if (documentHandler_ != nil) [documentHandler_ charactersWithCharArray:ch withInt:start withInt:length];
}

+ (IOSObjectArray *)__exceptions_charactersWithCharArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)ignorableWhitespaceWithCharArray:(IOSCharArray *)ch
                                 withInt:(int)start
                                 withInt:(int)length {
  if (documentHandler_ != nil) [documentHandler_ ignorableWhitespaceWithCharArray:ch withInt:start withInt:length];
}

+ (IOSObjectArray *)__exceptions_ignorableWhitespaceWithCharArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data {
  if (documentHandler_ != nil) [documentHandler_ processingInstructionWithNSString:target withNSString:data];
}

+ (IOSObjectArray *)__exceptions_processingInstructionWithNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)skippedEntityWithNSString:(NSString *)name {
}

+ (IOSObjectArray *)__exceptions_skippedEntityWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  OrgXmlSaxHelpersXMLReaderAdapter_set_qAtts_(self, nil);
  OrgXmlSaxHelpersXMLReaderAdapter_set_documentHandler_(self, nil);
  OrgXmlSaxHelpersXMLReaderAdapter_set_xmlReader_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgXmlSaxHelpersXMLReaderAdapter *)other {
  [super copyAllFieldsTo:other];
  OrgXmlSaxHelpersXMLReaderAdapter_set_documentHandler_(other, documentHandler_);
  OrgXmlSaxHelpersXMLReaderAdapter_set_qAtts_(other, qAtts_);
  OrgXmlSaxHelpersXMLReaderAdapter_set_xmlReader_(other, xmlReader_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:xmlReader_ name:@"xmlReader"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:documentHandler_ name:@"documentHandler"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:qAtts_ name:@"qAtts"]];
  return result;
}

@end
@implementation OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)setAttributesWithOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)attributes {
  OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter_set_attributes_(self, attributes);
}

- (int)getLength {
  return [((id<OrgXmlSaxAttributes>) nil_chk(attributes_)) getLength];
}

- (NSString *)getNameWithInt:(int)i {
  return [((id<OrgXmlSaxAttributes>) nil_chk(attributes_)) getQNameWithInt:i];
}

- (NSString *)getTypeWithInt:(int)i {
  return [((id<OrgXmlSaxAttributes>) nil_chk(attributes_)) getTypeWithInt:i];
}

- (NSString *)getValueWithInt:(int)i {
  return [((id<OrgXmlSaxAttributes>) nil_chk(attributes_)) getValueWithInt:i];
}

- (NSString *)getTypeWithNSString:(NSString *)qName {
  return [((id<OrgXmlSaxAttributes>) nil_chk(attributes_)) getTypeWithNSString:qName];
}

- (NSString *)getValueWithNSString:(NSString *)qName {
  return [((id<OrgXmlSaxAttributes>) nil_chk(attributes_)) getValueWithNSString:qName];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter_set_attributes_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter *)other {
  [super copyAllFieldsTo:other];
  OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter_set_attributes_(other, attributes_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:attributes_ name:@"attributes"]];
  return result;
}

@end
