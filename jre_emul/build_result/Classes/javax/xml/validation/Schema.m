//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/javax/xml/validation/Schema.java
//
//  Created by retechretech on 13-4-19.
//

#import "javax/xml/validation/Schema.h"
#import "javax/xml/validation/Validator.h"
#import "javax/xml/validation/ValidatorHandler.h"

@implementation JavaxXmlValidationSchema

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (JavaxXmlValidationValidator *)newValidator OBJC_METHOD_FAMILY_NONE {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaxXmlValidationValidatorHandler *)newValidatorHandler OBJC_METHOD_FAMILY_NONE {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
