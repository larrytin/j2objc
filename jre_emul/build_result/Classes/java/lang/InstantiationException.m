//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/InstantiationException.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSClass.h"
#import "java/lang/InstantiationException.h"

@implementation JavaLangInstantiationException

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (id)initWithNSString:(NSString *)detailMessage {
  return JreMemDebugAdd([super initWithNSString:detailMessage]);
}

- (id)initWithIOSClass:(IOSClass *)clazz {
  return JreMemDebugAdd([super initWithNSString:[NIL_CHK(clazz) getName]]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
