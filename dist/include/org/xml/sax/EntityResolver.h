//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/EntityResolver.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _OrgXmlSaxEntityResolver_H_
#define _OrgXmlSaxEntityResolver_H_

@class OrgXmlSaxInputSource;

#import "JreEmulation.h"

@protocol OrgXmlSaxEntityResolver < NSObject, JavaObject >
- (OrgXmlSaxInputSource *)resolveEntityWithNSString:(NSString *)publicId
                                       withNSString:(NSString *)systemId;
@end

#endif // _OrgXmlSaxEntityResolver_H_
