//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/javax/xml/validation/TypeInfoProvider.java
//
//  Created by retechretech on 13-4-19.
//

#import "javax/xml/validation/TypeInfoProvider.h"
#import "org/w3c/dom/TypeInfo.h"

@implementation JavaxXmlValidationTypeInfoProvider

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (id<OrgW3cDomTypeInfo>)getElementTypeInfo {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<OrgW3cDomTypeInfo>)getAttributeTypeInfoWithInt:(int)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)isIdAttributeWithInt:(int)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)isSpecifiedWithInt:(int)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
