//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/Properties.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaUtilProperties_H_
#define _JavaUtilProperties_H_

@class IOSCharArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@class JavaIoPrintStream;
@class JavaIoPrintWriter;
@class JavaIoReader;
@class JavaIoWriter;
@class JavaLangStringBuilder;
@protocol JavaLangAppendable;
@protocol JavaUtilEnumeration;
@protocol JavaUtilSet;
@protocol OrgXmlSaxAttributes;

#import "JreEmulation.h"
#include "java/util/Hashtable.h"
#include "org/xml/sax/helpers/DefaultHandler.h"

#define JavaUtilProperties_CONTINUE 3
#define JavaUtilProperties_IGNORE 5
#define JavaUtilProperties_KEY_DONE 4
#define JavaUtilProperties_NONE 0
#define JavaUtilProperties_SLASH 1
#define JavaUtilProperties_UNICODE 2
#define JavaUtilProperties_serialVersionUID 4112578634029874840

@interface JavaUtilProperties : JavaUtilHashtable {
 @public
  JavaUtilProperties *defaults_;
}

+ (NSString *)PROP_DTD_NAME;
+ (NSString *)PROP_DTD;
- (id)init;
- (id)initWithJavaUtilProperties:(JavaUtilProperties *)properties;
- (void)dumpStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer
                               withNSString:(NSString *)string
                                   withBOOL:(BOOL)key;
- (NSString *)getPropertyWithNSString:(NSString *)name;
- (NSString *)getPropertyWithNSString:(NSString *)name
                         withNSString:(NSString *)defaultValue;
- (void)listWithJavaIoPrintStream:(JavaIoPrintStream *)outArg;
- (void)listWithJavaIoPrintWriter:(JavaIoPrintWriter *)outArg;
- (void)listToAppendableWithJavaLangAppendable:(id<JavaLangAppendable>)outArg;
- (void)load__WithJavaIoInputStream:(JavaIoInputStream *)inArg;
- (void)load__WithJavaIoReader:(JavaIoReader *)inArg;
- (id<JavaUtilEnumeration>)propertyNames;
- (id<JavaUtilSet>)stringPropertyNames;
- (void)selectPropertiesWithJavaUtilHashtable:(JavaUtilHashtable *)selectProperties
                                     withBOOL:(BOOL)isStringOnly;
- (void)saveWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                      withNSString:(NSString *)comment;
- (id)setPropertyWithNSString:(NSString *)name
                 withNSString:(NSString *)value;
- (void)storeWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                       withNSString:(NSString *)comment;
- (void)storeWithJavaIoWriter:(JavaIoWriter *)writer
                 withNSString:(NSString *)comment;
- (void)loadFromXMLWithJavaIoInputStream:(JavaIoInputStream *)inArg;
- (void)storeToXMLWithJavaIoOutputStream:(JavaIoOutputStream *)os
                            withNSString:(NSString *)comment;
- (void)storeToXMLWithJavaIoOutputStream:(JavaIoOutputStream *)os
                            withNSString:(NSString *)comment
                            withNSString:(NSString *)encoding;
- (NSString *)substitutePredefinedEntriesWithNSString:(NSString *)s;
- (void)copyAllFieldsTo:(JavaUtilProperties *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilProperties, defaults_, JavaUtilProperties *)

@interface JavaUtilProperties_$1 : OrgXmlSaxHelpersDefaultHandler {
 @public
  JavaUtilProperties *this$0_;
  NSString *key_;
}

- (void)startElementWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)attributes;
- (void)charactersWithCharArray:(IOSCharArray *)ch
                        withInt:(int)start
                        withInt:(int)length;
- (id)initWithJavaUtilProperties:(JavaUtilProperties *)outer$;
- (void)copyAllFieldsTo:(JavaUtilProperties_$1 *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilProperties_$1, this$0_, JavaUtilProperties *)
J2OBJC_FIELD_SETTER(JavaUtilProperties_$1, key_, NSString *)

#endif // _JavaUtilProperties_H_
