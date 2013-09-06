//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/helpers/ParserFactory.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSClass.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/ClassNotFoundException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/InstantiationException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/System.h"
#include "org/xml/sax/Parser.h"
#include "org/xml/sax/helpers/NewInstance.h"
#include "org/xml/sax/helpers/ParserFactory.h"

@implementation OrgXmlSaxHelpersParserFactory

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (id<OrgXmlSaxParser>)makeParser {
  NSString *className_ = [JavaLangSystem getPropertyWithNSString:@"org.xml.sax.parser"];
  if (className_ == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"No value for sax.parser property"] autorelease];
  }
  else {
    return [OrgXmlSaxHelpersParserFactory makeParserWithNSString:className_];
  }
}

+ (IOSObjectArray *)__exceptions_makeParser {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangClassNotFoundException getClass], [JavaLangIllegalAccessException getClass], [JavaLangInstantiationException getClass], [JavaLangNullPointerException getClass], [JavaLangClassCastException getClass] } count:5 type:[IOSClass getClass]];
}

+ (id<OrgXmlSaxParser>)makeParserWithNSString:(NSString *)className_ {
  return (id<OrgXmlSaxParser>) [OrgXmlSaxHelpersNewInstance newInstanceWithNSString:className_];
}

+ (IOSObjectArray *)__exceptions_makeParserWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangClassNotFoundException getClass], [JavaLangIllegalAccessException getClass], [JavaLangInstantiationException getClass], [JavaLangClassCastException getClass] } count:4 type:[IOSClass getClass]];
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

@end
