//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/helpers/ParserFactory.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _OrgXmlSaxHelpersParserFactory_H_
#define _OrgXmlSaxHelpersParserFactory_H_

@protocol OrgXmlSaxParser;

#import "JreEmulation.h"

@interface OrgXmlSaxHelpersParserFactory : NSObject {
}

- (id)init;
+ (id<OrgXmlSaxParser>)makeParser;
+ (id<OrgXmlSaxParser>)makeParserWithNSString:(NSString *)className_;
@end

#endif // _OrgXmlSaxHelpersParserFactory_H_
