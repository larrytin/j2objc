//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/InvalidPropertiesFormatException.java
//
//  Created by retechretech on 13-4-19.
//

#import "java/lang/Throwable.h"
#import "java/util/InvalidPropertiesFormatException.h"

@implementation JavaUtilInvalidPropertiesFormatException

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithNSString:(NSString *)m {
  return JreMemDebugAdd([super initWithNSString:m]);
}

- (id)initWithJavaLangThrowable:(JavaLangThrowable *)c {
  if ((self = [super init])) {
    [self initCauseWithJavaLangThrowable:c];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
