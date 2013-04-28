//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/javax/xml/parsers/SAXParserFactory.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSClass.h"
#import "java/lang/ClassLoader.h"
#import "java/lang/ClassNotFoundException.h"
#import "java/lang/IllegalAccessException.h"
#import "java/lang/InstantiationException.h"
#import "java/lang/UnsupportedOperationException.h"
#import "javax/xml/parsers/FactoryConfigurationError.h"
#import "javax/xml/parsers/SAXParser.h"
#import "javax/xml/parsers/SAXParserFactory.h"
#import "javax/xml/validation/Schema.h"
#import "org/apache/harmony/xml/parsers/SAXParserFactoryImpl.h"

@implementation JavaxXmlParsersSAXParserFactory

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

@synthesize validating = validating_;
@synthesize namespaceAware = namespaceAware_;

- (id)init {
  if ((self = [super init])) {
    validating_ = NO;
    namespaceAware_ = NO;
    JreMemDebugAdd(self);
  }
  return self;
}

+ (JavaxXmlParsersSAXParserFactory *)newInstance OBJC_METHOD_FAMILY_NONE {
  return [[[OrgApacheHarmonyXmlParsersSAXParserFactoryImpl alloc] init] autorelease];
}

+ (JavaxXmlParsersSAXParserFactory *)newInstanceWithNSString:(NSString *)factoryClassName
                                     withJavaLangClassLoader:(JavaLangClassLoader *)classLoader OBJC_METHOD_FAMILY_NONE {
  if (factoryClassName == nil) {
    @throw [[[JavaxXmlParsersFactoryConfigurationError alloc] initWithNSString:@"factoryClassName == null"] autorelease];
  }
  @try {
    IOSClass *type = classLoader != nil ? [((JavaLangClassLoader *) NIL_CHK(classLoader)) loadClassWithNSString:factoryClassName] : [IOSClass forName:factoryClassName];
    return (JavaxXmlParsersSAXParserFactory *) [NIL_CHK(type) newInstance];
  }
  @catch (JavaLangClassNotFoundException *e) {
    @throw [[[JavaxXmlParsersFactoryConfigurationError alloc] initWithJavaLangException:e] autorelease];
  }
  @catch (JavaLangInstantiationException *e) {
    @throw [[[JavaxXmlParsersFactoryConfigurationError alloc] initWithJavaLangException:e] autorelease];
  }
  @catch (JavaLangIllegalAccessException *e) {
    @throw [[[JavaxXmlParsersFactoryConfigurationError alloc] initWithJavaLangException:e] autorelease];
  }
}

- (JavaxXmlParsersSAXParser *)newSAXParser OBJC_METHOD_FAMILY_NONE {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)setNamespaceAwareWithBOOL:(BOOL)awareness {
  self.namespaceAware = awareness;
}

- (void)setValidatingWithBOOL:(BOOL)validating {
  self.validating = validating;
}

- (BOOL)isNamespaceAware {
  return namespaceAware_;
}

- (BOOL)isValidating {
  return validating_;
}

- (void)setFeatureWithNSString:(NSString *)name
                      withBOOL:(BOOL)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (BOOL)getFeatureWithNSString:(NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaxXmlValidationSchema *)getSchema {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"This parser does not support specification"] autorelease];
}

- (void)setSchemaWithJavaxXmlValidationSchema:(JavaxXmlValidationSchema *)schema {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"This parser does not support specification"] autorelease];
}

- (void)setXIncludeAwareWithBOOL:(BOOL)state {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"This parser does not support specification"] autorelease];
}

- (BOOL)isXIncludeAware {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"This parser does not support specification"] autorelease];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaxXmlParsersSAXParserFactory *typedCopy = (JavaxXmlParsersSAXParserFactory *) copy;
  typedCopy.validating = validating_;
  typedCopy.namespaceAware = namespaceAware_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
