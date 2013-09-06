//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/javax/xml/validation/ValidatorHandler.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSCharArray.h"
#include "IOSClass.h"
#include "java/lang/NullPointerException.h"
#include "javax/xml/validation/TypeInfoProvider.h"
#include "javax/xml/validation/ValidatorHandler.h"
#include "org/w3c/dom/ls/LSResourceResolver.h"
#include "org/xml/sax/Attributes.h"
#include "org/xml/sax/ContentHandler.h"
#include "org/xml/sax/ErrorHandler.h"
#include "org/xml/sax/Locator.h"
#include "org/xml/sax/SAXNotRecognizedException.h"
#include "org/xml/sax/SAXNotSupportedException.h"

@implementation JavaxXmlValidationValidatorHandler

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)setContentHandlerWithOrgXmlSaxContentHandler:(id<OrgXmlSaxContentHandler>)receiver {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id<OrgXmlSaxContentHandler>)getContentHandler {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)setErrorHandlerWithOrgXmlSaxErrorHandler:(id<OrgXmlSaxErrorHandler>)errorHandler {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id<OrgXmlSaxErrorHandler>)getErrorHandler {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)setResourceResolverWithOrgW3cDomLsLSResourceResolver:(id<OrgW3cDomLsLSResourceResolver>)resourceResolver {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id<OrgW3cDomLsLSResourceResolver>)getResourceResolver {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaxXmlValidationTypeInfoProvider *)getTypeInfoProvider {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)getFeatureWithNSString:(NSString *)name {
  if (name == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"name == null"] autorelease];
  }
  @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:name] autorelease];
}

+ (IOSObjectArray *)__exceptions_getFeatureWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXNotRecognizedException getClass], [OrgXmlSaxSAXNotSupportedException getClass] } count:2 type:[IOSClass getClass]];
}

- (void)setFeatureWithNSString:(NSString *)name
                      withBOOL:(BOOL)value {
  if (name == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"name == null"] autorelease];
  }
  @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:name] autorelease];
}

+ (IOSObjectArray *)__exceptions_setFeatureWithNSString_withBOOL_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXNotRecognizedException getClass], [OrgXmlSaxSAXNotSupportedException getClass] } count:2 type:[IOSClass getClass]];
}

- (void)setPropertyWithNSString:(NSString *)name
                         withId:(id)object {
  if (name == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"name == null"] autorelease];
  }
  @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:name] autorelease];
}

+ (IOSObjectArray *)__exceptions_setPropertyWithNSString_withId_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXNotRecognizedException getClass], [OrgXmlSaxSAXNotSupportedException getClass] } count:2 type:[IOSClass getClass]];
}

- (id)getPropertyWithNSString:(NSString *)name {
  if (name == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"name == null"] autorelease];
  }
  @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:name] autorelease];
}

+ (IOSObjectArray *)__exceptions_getPropertyWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXNotRecognizedException getClass], [OrgXmlSaxSAXNotSupportedException getClass] } count:2 type:[IOSClass getClass]];
}

- (void)charactersWithCharArray:(IOSCharArray *)param0
                        withInt:(int)param1
                        withInt:(int)param2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)endDocument {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)endElementWithNSString:(NSString *)param0
                  withNSString:(NSString *)param1
                  withNSString:(NSString *)param2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)endPrefixMappingWithNSString:(NSString *)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)ignorableWhitespaceWithCharArray:(IOSCharArray *)param0
                                 withInt:(int)param1
                                 withInt:(int)param2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)processingInstructionWithNSString:(NSString *)param0
                             withNSString:(NSString *)param1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)skippedEntityWithNSString:(NSString *)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)startDocument {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)startElementWithNSString:(NSString *)param0
                    withNSString:(NSString *)param1
                    withNSString:(NSString *)param2
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)param3 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)startPrefixMappingWithNSString:(NSString *)param0
                          withNSString:(NSString *)param1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

@end
