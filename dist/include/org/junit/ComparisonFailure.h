//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/org/junit/ComparisonFailure.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _OrgJunitComparisonFailure_H_
#define _OrgJunitComparisonFailure_H_

#import "JreEmulation.h"
#include "java/lang/AssertionError.h"

#define OrgJunitComparisonFailure_MAX_CONTEXT_LENGTH 20
#define OrgJunitComparisonFailure_serialVersionUID 1

@interface OrgJunitComparisonFailure : JavaLangAssertionError {
 @public
  NSString *fExpected_;
  NSString *fActual_;
}

- (id)initWithNSString:(NSString *)message
          withNSString:(NSString *)expected
          withNSString:(NSString *)actual;
- (NSString *)getMessage;
- (NSString *)getActual;
- (NSString *)getExpected;
- (void)copyAllFieldsTo:(OrgJunitComparisonFailure *)other;
@end

J2OBJC_FIELD_SETTER(OrgJunitComparisonFailure, fExpected_, NSString *)
J2OBJC_FIELD_SETTER(OrgJunitComparisonFailure, fActual_, NSString *)

@interface OrgJunitComparisonFailure_ComparisonCompactor : NSObject {
 @public
  int fContextLength_;
  NSString *fExpected_;
  NSString *fActual_;
  int fPrefix_;
  int fSuffix_;
}

+ (NSString *)ELLIPSIS;
+ (NSString *)DELTA_END;
+ (NSString *)DELTA_START;
- (id)initWithInt:(int)contextLength
     withNSString:(NSString *)expected
     withNSString:(NSString *)actual;
- (NSString *)compactWithNSString:(NSString *)message;
- (NSString *)compactStringWithNSString:(NSString *)source;
- (void)findCommonPrefix;
- (void)findCommonSuffix;
- (NSString *)computeCommonPrefix;
- (NSString *)computeCommonSuffix;
- (BOOL)areStringsEqual;
- (void)copyAllFieldsTo:(OrgJunitComparisonFailure_ComparisonCompactor *)other;
@end

J2OBJC_FIELD_SETTER(OrgJunitComparisonFailure_ComparisonCompactor, fExpected_, NSString *)
J2OBJC_FIELD_SETTER(OrgJunitComparisonFailure_ComparisonCompactor, fActual_, NSString *)

#endif // _OrgJunitComparisonFailure_H_
