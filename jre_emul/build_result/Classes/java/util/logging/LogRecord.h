//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/util/logging/LogRecord.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaUtilLoggingLogRecord_H_
#define _JavaUtilLoggingLogRecord_H_

@class JavaLangThrowable;
@class JavaUtilLoggingLevel;

#import "JreEmulation.h"
#include "java/io/Serializable.h"

@interface JavaUtilLoggingLogRecord : NSObject < JavaIoSerializable > {
 @public
  JavaUtilLoggingLevel *level_;
  NSString *loggerName_;
  NSString *msg_;
  JavaLangThrowable *thrown_;
  long long int millis_;
}

- (id)initWithJavaUtilLoggingLevel:(JavaUtilLoggingLevel *)level
                      withNSString:(NSString *)msg;
- (id)init;
- (JavaUtilLoggingLevel *)getLevel;
- (NSString *)getLoggerName;
- (NSString *)getMessage;
- (long long int)getMillis;
- (JavaLangThrowable *)getThrown;
- (void)setLevelWithJavaUtilLoggingLevel:(JavaUtilLoggingLevel *)newLevel;
- (void)setLoggerNameWithNSString:(NSString *)newName;
- (void)setMessageWithNSString:(NSString *)newMessage;
- (void)setMillisWithLongInt:(long long int)newMillis;
- (void)setThrownWithJavaLangThrowable:(JavaLangThrowable *)newThrown;
- (void)copyAllFieldsTo:(JavaUtilLoggingLogRecord *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilLoggingLogRecord, level_, JavaUtilLoggingLevel *)
J2OBJC_FIELD_SETTER(JavaUtilLoggingLogRecord, loggerName_, NSString *)
J2OBJC_FIELD_SETTER(JavaUtilLoggingLogRecord, msg_, NSString *)
J2OBJC_FIELD_SETTER(JavaUtilLoggingLogRecord, thrown_, JavaLangThrowable *)

#endif // _JavaUtilLoggingLogRecord_H_
