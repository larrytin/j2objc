//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/regex/PatternSyntaxException.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaUtilRegexPatternSyntaxException_H_
#define _JavaUtilRegexPatternSyntaxException_H_

#import "JreEmulation.h"
#include "java/lang/IllegalArgumentException.h"

#define JavaUtilRegexPatternSyntaxException_serialVersionUID -3864639126226059218

@interface JavaUtilRegexPatternSyntaxException : JavaLangIllegalArgumentException {
 @public
  NSString *desc_;
  NSString *pattern_;
  int index_;
}

- (id)initWithNSString:(NSString *)description_
          withNSString:(NSString *)pattern
               withInt:(int)index;
- (NSString *)getPattern;
- (NSString *)getMessage;
- (NSString *)getDescription;
- (int)getIndex;
- (void)copyAllFieldsTo:(JavaUtilRegexPatternSyntaxException *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilRegexPatternSyntaxException, desc_, NSString *)
J2OBJC_FIELD_SETTER(JavaUtilRegexPatternSyntaxException, pattern_, NSString *)

#endif // _JavaUtilRegexPatternSyntaxException_H_
