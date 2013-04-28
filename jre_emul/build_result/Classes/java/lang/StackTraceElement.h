//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/lang/StackTraceElement.java
//
//  Created by retechretech on 13-4-26.
//

#import "JreEmulation.h"

@interface JavaLangStackTraceElement : NSObject {
 @public
  NSString *className__;
  NSString *methodName_;
  NSString *fileName_;
  int lineNumber_;
}

@property (nonatomic, copy) NSString *className_;
@property (nonatomic, copy) NSString *methodName;
@property (nonatomic, copy) NSString *fileName;
@property (nonatomic, assign) int lineNumber;

- (NSString *)getClassName;
- (NSString *)getMethodName;
- (NSString *)getFileName;
- (int)getLineNumber;
- (id)initWithNSString:(NSString *)className_
          withNSString:(NSString *)methodName
          withNSString:(NSString *)fileName
               withInt:(int)lineNumber;
- (NSString *)description;
@end
