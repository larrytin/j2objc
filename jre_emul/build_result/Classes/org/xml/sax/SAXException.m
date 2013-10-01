//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "java/lang/Exception.h"
#include "org/xml/sax/SAXException.h"

@implementation OrgXmlSaxSAXException

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  if (self = [super init]) {
    OrgXmlSaxSAXException_set_exception_(self, nil);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)message {
  if (self = [super initWithNSString:message]) {
    OrgXmlSaxSAXException_set_exception_(self, nil);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaLangException:(JavaLangException *)e {
  if (self = [super init]) {
    OrgXmlSaxSAXException_set_exception_(self, e);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)message
 withJavaLangException:(JavaLangException *)e {
  if (self = [super initWithNSString:message]) {
    OrgXmlSaxSAXException_set_exception_(self, e);
    JreMemDebugAdd(self);
  }
  return self;
}

- (NSString *)getMessage {
  NSString *message = [super getMessage];
  if (message == nil && exception_ != nil) {
    return [exception_ getMessage];
  }
  else {
    return message;
  }
}

- (JavaLangException *)getException {
  return exception_;
}

- (NSString *)description {
  if (exception_ != nil) {
    return [exception_ description];
  }
  else {
    return [super description];
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  OrgXmlSaxSAXException_set_exception_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgXmlSaxSAXException *)other {
  [super copyAllFieldsTo:other];
  OrgXmlSaxSAXException_set_exception_(other, exception_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:exception_ name:@"exception"]];
  return result;
}

@end
