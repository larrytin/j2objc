//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _OrgKxml2IoKXmlSerializer_H_
#define _OrgKxml2IoKXmlSerializer_H_

@class IOSBooleanArray;
@class IOSCharArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaIoBufferedWriter;
@class JavaIoOutputStream;
@class JavaIoWriter;
@class JavaLangBoolean;

#import "JreEmulation.h"
#include "org/xmlpull/v1/XmlSerializer.h"

#define OrgKxml2IoKXmlSerializer_WRITE_BUFFER_SIZE 500

@interface OrgKxml2IoKXmlSerializer : NSObject < OrgXmlpullV1XmlSerializer > {
 @public
  JavaIoBufferedWriter *writer_;
  BOOL pending_;
  int auto__;
  int depth_;
  IOSObjectArray *elementStack_;
  IOSIntArray *nspCounts_;
  IOSObjectArray *nspStack_;
  IOSBooleanArray *indent_;
  BOOL unicode_;
  NSString *encoding_;
}

- (void)checkWithBoolean:(BOOL)close;
- (void)writeEscapedWithNSString:(NSString *)s
                         withInt:(int)quot;
+ (void)reportInvalidCharacterWithChar:(unichar)ch;
- (void)docdeclWithNSString:(NSString *)dd;
- (void)endDocument;
- (void)entityRefWithNSString:(NSString *)name;
- (BOOL)getFeatureWithNSString:(NSString *)name;
- (NSString *)getPrefixWithNSString:(NSString *)namespace_
                        withBoolean:(BOOL)create;
- (NSString *)getPrefixWithNSString:(NSString *)namespace_
                        withBoolean:(BOOL)includeDefault
                        withBoolean:(BOOL)create;
- (id)getPropertyWithNSString:(NSString *)name;
- (void)ignorableWhitespaceWithNSString:(NSString *)s;
- (void)setFeatureWithNSString:(NSString *)name
                   withBoolean:(BOOL)value;
- (void)setPropertyWithNSString:(NSString *)name
                         withId:(id)value;
- (void)setPrefixWithNSString:(NSString *)prefix
                 withNSString:(NSString *)namespace_;
- (void)setOutputWithJavaIoWriter:(JavaIoWriter *)writer;
- (void)setOutputWithJavaIoOutputStream:(JavaIoOutputStream *)os
                           withNSString:(NSString *)encoding;
- (void)startDocumentWithNSString:(NSString *)encoding
              withJavaLangBoolean:(JavaLangBoolean *)standalone;
- (id<OrgXmlpullV1XmlSerializer>)startTagWithNSString:(NSString *)namespace_
                                         withNSString:(NSString *)name;
- (id<OrgXmlpullV1XmlSerializer>)attributeWithNSString:(NSString *)namespace_
                                          withNSString:(NSString *)name
                                          withNSString:(NSString *)value;
- (void)flush;
- (id<OrgXmlpullV1XmlSerializer>)endTagWithNSString:(NSString *)namespace_
                                       withNSString:(NSString *)name;
- (NSString *)getNamespace;
- (NSString *)getName;
- (int)getDepth;
- (id<OrgXmlpullV1XmlSerializer>)textWithNSString:(NSString *)text;
- (id<OrgXmlpullV1XmlSerializer>)textWithCharArray:(IOSCharArray *)text
                                           withInt:(int)start
                                           withInt:(int)len;
- (void)cdsectWithNSString:(NSString *)data;
- (void)commentWithNSString:(NSString *)comment;
- (void)processingInstructionWithNSString:(NSString *)pi;
- (id)init;
- (void)copyAllFieldsTo:(OrgKxml2IoKXmlSerializer *)other;
@end

J2OBJC_FIELD_SETTER(OrgKxml2IoKXmlSerializer, writer_, JavaIoBufferedWriter *)
J2OBJC_FIELD_SETTER(OrgKxml2IoKXmlSerializer, elementStack_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgKxml2IoKXmlSerializer, nspCounts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgKxml2IoKXmlSerializer, nspStack_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgKxml2IoKXmlSerializer, indent_, IOSBooleanArray *)
J2OBJC_FIELD_SETTER(OrgKxml2IoKXmlSerializer, encoding_, NSString *)

#endif // _OrgKxml2IoKXmlSerializer_H_
