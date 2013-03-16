//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/android/libcore/luni/src/main/java/java/util/regex/PatternSyntaxException.java
//
//  Created by retechretech on 13-3-16.
//

#import "JreEmulation.h"
#import "java/lang/IllegalArgumentException.h"

#define JavaUtilRegexPatternSyntaxException_serialVersionUID -3864639126226059218

@interface JavaUtilRegexPatternSyntaxException : JavaLangIllegalArgumentException {
 @public
  NSString *desc_;
  NSString *pattern_;
  int index_;
}

@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *pattern;
@property (nonatomic, assign) int index;

- (id)initWithNSString:(NSString *)description_
          withNSString:(NSString *)pattern
               withInt:(int)index;
- (NSString *)getPattern;
- (NSString *)getMessage;
- (NSString *)getDescription;
- (int)getIndex;
@end