//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/SAXParseException.java
//
//  Created by retechretech on 13-4-26.
//

@class JavaLangException;
@protocol OrgXmlSaxLocator;

#import "JreEmulation.h"
#import "org/xml/sax/SAXException.h"

@interface OrgXmlSaxSAXParseException : OrgXmlSaxSAXException {
 @public
  NSString *publicId_;
  NSString *systemId_;
  int lineNumber_;
  int columnNumber_;
}

@property (nonatomic, copy) NSString *publicId;
@property (nonatomic, copy) NSString *systemId;
@property (nonatomic, assign) int lineNumber;
@property (nonatomic, assign) int columnNumber;

- (id)initWithNSString:(NSString *)message
  withOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator;
- (id)initWithNSString:(NSString *)message
  withOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator
 withJavaLangException:(JavaLangException *)e;
- (id)initWithNSString:(NSString *)message
          withNSString:(NSString *)publicId
          withNSString:(NSString *)systemId
               withInt:(int)lineNumber
               withInt:(int)columnNumber;
- (id)initWithNSString:(NSString *)message
          withNSString:(NSString *)publicId
          withNSString:(NSString *)systemId
               withInt:(int)lineNumber
               withInt:(int)columnNumber
 withJavaLangException:(JavaLangException *)e;
- (void)init__WithNSString:(NSString *)publicId
              withNSString:(NSString *)systemId
                   withInt:(int)lineNumber
                   withInt:(int)columnNumber OBJC_METHOD_FAMILY_NONE;
- (NSString *)getPublicId;
- (NSString *)getSystemId;
- (int)getLineNumber;
- (int)getColumnNumber;
@end
