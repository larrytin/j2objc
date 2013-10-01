//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaUtilRegexMatchResultImpl_H_
#define _JavaUtilRegexMatchResultImpl_H_

@class IOSIntArray;

#import "JreEmulation.h"
#include "java/util/regex/MatchResult.h"

@interface JavaUtilRegexMatchResultImpl : NSObject < JavaUtilRegexMatchResult > {
 @public
  NSString *text_;
  IOSIntArray *offsets_;
}

- (id)initWithNSString:(NSString *)text
          withIntArray:(IOSIntArray *)offsets;
- (int)end;
- (int)endWithInt:(int)group;
- (NSString *)group;
- (NSString *)groupWithInt:(int)group;
- (int)groupCount;
- (int)start;
- (int)startWithInt:(int)group;
- (void)copyAllFieldsTo:(JavaUtilRegexMatchResultImpl *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilRegexMatchResultImpl, text_, NSString *)
J2OBJC_FIELD_SETTER(JavaUtilRegexMatchResultImpl, offsets_, IOSIntArray *)

#endif // _JavaUtilRegexMatchResultImpl_H_
