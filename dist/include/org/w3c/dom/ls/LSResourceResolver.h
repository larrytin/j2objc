//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/w3c/dom/ls/LSResourceResolver.java
//
//  Created by retechretech on 13-4-19.
//

@protocol OrgW3cDomLsLSInput;

#import "JreEmulation.h"

@protocol OrgW3cDomLsLSResourceResolver < NSObject >
- (id<OrgW3cDomLsLSInput>)resolveResourceWithNSString:(NSString *)type
                                         withNSString:(NSString *)namespaceURI
                                         withNSString:(NSString *)publicId
                                         withNSString:(NSString *)systemId
                                         withNSString:(NSString *)baseURI;
@end
