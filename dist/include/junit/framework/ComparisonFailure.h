//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/junit/framework/ComparisonFailure.java
//
//  Created by retechretech on 13-4-19.
//

#import "JreEmulation.h"
#import "junit/framework/AssertionFailedError.h"

#define JunitFrameworkComparisonFailure_MAX_CONTEXT_LENGTH 20
#define JunitFrameworkComparisonFailure_serialVersionUID 1

@interface JunitFrameworkComparisonFailure : JunitFrameworkAssertionFailedError {
 @public
  NSString *fExpected_;
  NSString *fActual_;
}

@property (nonatomic, copy) NSString *fExpected;
@property (nonatomic, copy) NSString *fActual;

- (id)initWithNSString:(NSString *)message
          withNSString:(NSString *)expected
          withNSString:(NSString *)actual;
- (NSString *)getMessage;
- (NSString *)getActual;
- (NSString *)getExpected;
@end
