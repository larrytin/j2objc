//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/Attributes.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _OrgXmlSaxAttributes_H_
#define _OrgXmlSaxAttributes_H_

#import "JreEmulation.h"

@protocol OrgXmlSaxAttributes < NSObject, JavaObject >
- (int)getLength;
- (NSString *)getURIWithInt:(int)index;
- (NSString *)getLocalNameWithInt:(int)index;
- (NSString *)getQNameWithInt:(int)index;
- (NSString *)getTypeWithInt:(int)index;
- (NSString *)getValueWithInt:(int)index;
- (int)getIndexWithNSString:(NSString *)uri
               withNSString:(NSString *)localName;
- (int)getIndexWithNSString:(NSString *)qName;
- (NSString *)getTypeWithNSString:(NSString *)uri
                     withNSString:(NSString *)localName;
- (NSString *)getTypeWithNSString:(NSString *)qName;
- (NSString *)getValueWithNSString:(NSString *)uri
                      withNSString:(NSString *)localName;
- (NSString *)getValueWithNSString:(NSString *)qName;
@end

#endif // _OrgXmlSaxAttributes_H_
