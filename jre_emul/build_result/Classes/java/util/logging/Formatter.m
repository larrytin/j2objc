//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/util/logging/Formatter.java
//
//  Created by retechretech on 13-9-4.
//

#include "java/util/logging/Formatter.h"
#include "java/util/logging/LogRecord.h"

@implementation JavaUtilLoggingFormatter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (NSString *)formatWithJavaUtilLoggingLogRecord:(JavaUtilLoggingLogRecord *)record {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)formatMessageWithJavaUtilLoggingLogRecord:(JavaUtilLoggingLogRecord *)record {
  return [self formatWithJavaUtilLoggingLogRecord:record];
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

@end
