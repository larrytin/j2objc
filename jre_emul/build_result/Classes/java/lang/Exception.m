//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/lang/Exception.java
//
//  Created by retechretech on 13-3-15.
//

#import "java/lang/Exception.h"
#import "java/lang/Throwable.h"

@implementation JavaLangException

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

- (id)initWithNSString:(NSString *)detailMessage
 withJavaLangThrowable:(JavaLangThrowable *)throwable {
  return JreMemDebugAdd([super initWithNSString:detailMessage withJavaLangThrowable:throwable]);
}

- (id)initWithJavaLangThrowable:(JavaLangThrowable *)throwable {
  return JreMemDebugAdd([super initWithJavaLangThrowable:throwable]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
