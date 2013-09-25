//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/helpers/LocatorImpl.java
//
//  Created by retechretech on 13-9-25.
//

#include "org/xml/sax/Locator.h"
#include "org/xml/sax/helpers/LocatorImpl.h"

@implementation OrgXmlSaxHelpersLocatorImpl

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (id)initWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator {
  if (self = [super init]) {
    [self setPublicIdWithNSString:[((id<OrgXmlSaxLocator>) nil_chk(locator)) getPublicId]];
    [self setSystemIdWithNSString:[locator getSystemId]];
    [self setLineNumberWithInt:[locator getLineNumber]];
    [self setColumnNumberWithInt:[locator getColumnNumber]];
    JreMemDebugAdd(self);
  }
  return self;
}

- (NSString *)getPublicId {
  return publicId_;
}

- (NSString *)getSystemId {
  return systemId_;
}

- (int)getLineNumber {
  return lineNumber_;
}

- (int)getColumnNumber {
  return columnNumber_;
}

- (void)setPublicIdWithNSString:(NSString *)publicId {
  OrgXmlSaxHelpersLocatorImpl_set_publicId_(self, publicId);
}

- (void)setSystemIdWithNSString:(NSString *)systemId {
  OrgXmlSaxHelpersLocatorImpl_set_systemId_(self, systemId);
}

- (void)setLineNumberWithInt:(int)lineNumber {
  self->lineNumber_ = lineNumber;
}

- (void)setColumnNumberWithInt:(int)columnNumber {
  self->columnNumber_ = columnNumber;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  OrgXmlSaxHelpersLocatorImpl_set_systemId_(self, nil);
  OrgXmlSaxHelpersLocatorImpl_set_publicId_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgXmlSaxHelpersLocatorImpl *)other {
  [super copyAllFieldsTo:other];
  other->columnNumber_ = columnNumber_;
  other->lineNumber_ = lineNumber_;
  OrgXmlSaxHelpersLocatorImpl_set_publicId_(other, publicId_);
  OrgXmlSaxHelpersLocatorImpl_set_systemId_(other, systemId_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:publicId_ name:@"publicId"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:systemId_ name:@"systemId"]];
  return result;
}

@end
