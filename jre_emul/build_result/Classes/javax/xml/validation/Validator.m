//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/javax/xml/validation/Validator.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSClass.h"
#include "java/io/IOException.h"
#include "java/lang/NullPointerException.h"
#include "javax/xml/transform/Result.h"
#include "javax/xml/transform/Source.h"
#include "javax/xml/validation/Validator.h"
#include "org/w3c/dom/ls/LSResourceResolver.h"
#include "org/xml/sax/ErrorHandler.h"
#include "org/xml/sax/SAXException.h"
#include "org/xml/sax/SAXNotRecognizedException.h"
#include "org/xml/sax/SAXNotSupportedException.h"

@implementation JavaxXmlValidationValidator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)reset {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)validateWithJavaxXmlTransformSource:(id<JavaxXmlTransformSource>)source {
  [self validateWithJavaxXmlTransformSource:source withJavaxXmlTransformResult:nil];
}

+ (IOSObjectArray *)__exceptions_validateWithJavaxXmlTransformSource_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass], [JavaIoIOException getClass] } count:2 type:[IOSClass getClass]];
}

- (void)validateWithJavaxXmlTransformSource:(id<JavaxXmlTransformSource>)source
                withJavaxXmlTransformResult:(id<JavaxXmlTransformResult>)result {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (IOSObjectArray *)__exceptions_validateWithJavaxXmlTransformSource_withJavaxXmlTransformResult_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [OrgXmlSaxSAXException getClass], [JavaIoIOException getClass] } count:2 type:[IOSClass getClass]];
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

@end
