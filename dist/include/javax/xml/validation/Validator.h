//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaxXmlValidationValidator_H_
#define _JavaxXmlValidationValidator_H_

@protocol JavaxXmlTransformResult;
@protocol JavaxXmlTransformSource;
@protocol OrgW3cDomLsLSResourceResolver;
@protocol OrgXmlSaxErrorHandler;

#import "JreEmulation.h"

@interface JavaxXmlValidationValidator : NSObject {
}

- (id)init;
- (void)reset;
- (void)validateWithJavaxXmlTransformSource:(id<JavaxXmlTransformSource>)source;
- (void)validateWithJavaxXmlTransformSource:(id<JavaxXmlTransformSource>)source
                withJavaxXmlTransformResult:(id<JavaxXmlTransformResult>)result;
- (void)setErrorHandlerWithOrgXmlSaxErrorHandler:(id<OrgXmlSaxErrorHandler>)errorHandler;
- (id<OrgXmlSaxErrorHandler>)getErrorHandler;
- (void)setResourceResolverWithOrgW3cDomLsLSResourceResolver:(id<OrgW3cDomLsLSResourceResolver>)resourceResolver;
- (id<OrgW3cDomLsLSResourceResolver>)getResourceResolver;
- (BOOL)getFeatureWithNSString:(NSString *)name;
- (void)setFeatureWithNSString:(NSString *)name
                   withBoolean:(BOOL)value;
- (void)setPropertyWithNSString:(NSString *)name
                         withId:(id)object;
- (id)getPropertyWithNSString:(NSString *)name;
@end

#endif // _JavaxXmlValidationValidator_H_
