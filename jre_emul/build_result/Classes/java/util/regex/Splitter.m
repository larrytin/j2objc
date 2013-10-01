//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"
#include "java/util/regex/Splitter.h"

@implementation JavaUtilRegexSplitter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaUtilRegexSplitter_METACHARACTERS_ name:@"JavaUtilRegexSplitter_METACHARACTERS_"]];
  return result;
}

static NSString * JavaUtilRegexSplitter_METACHARACTERS_ = @"\\?*+[](){}^$.|";

+ (NSString *)METACHARACTERS {
  return JavaUtilRegexSplitter_METACHARACTERS_;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (IOSObjectArray *)fastSplitWithNSString:(NSString *)re
                             withNSString:(NSString *)input
                                  withInt:(int)limit {
  int len = [((NSString *) nil_chk(re)) length];
  if (len == 0) {
    return nil;
  }
  unichar ch = [re charAtWithInt:0];
  if (len == 1 && [((NSString *) nil_chk(JavaUtilRegexSplitter_METACHARACTERS_)) indexOf:ch] == -1) {
  }
  else if (len == 2 && ch == '\\') {
    ch = [re charAtWithInt:1];
    if ([((NSString *) nil_chk(JavaUtilRegexSplitter_METACHARACTERS_)) indexOf:ch] == -1) {
      return nil;
    }
  }
  else {
    return nil;
  }
  if ([((NSString *) nil_chk(input)) isEmpty]) {
    return [IOSObjectArray arrayWithObjects:(id[]){ @"" } count:1 type:[IOSClass classWithClass:[NSString class]]];
  }
  JavaUtilArrayList *list = [[[JavaUtilArrayList alloc] init] autorelease];
  int maxSize = limit <= 0 ? JavaLangInteger_MAX_VALUE : limit;
  int begin = 0;
  int end;
  while ((end = [input indexOf:ch fromIndex:begin]) != -1 && [list size] + 1 < maxSize) {
    [list addWithId:[input substring:begin endIndex:end]];
    begin = end + 1;
  }
  return [JavaUtilRegexSplitter finishSplitWithJavaUtilList:list withNSString:input withInt:begin withInt:maxSize withInt:limit];
}

+ (IOSObjectArray *)splitWithJavaUtilRegexPattern:(JavaUtilRegexPattern *)pattern
                                     withNSString:(NSString *)re
                                     withNSString:(NSString *)input
                                          withInt:(int)limit {
  IOSObjectArray *fastResult = [JavaUtilRegexSplitter fastSplitWithNSString:re withNSString:input withInt:limit];
  if (fastResult != nil) {
    return fastResult;
  }
  if ([((NSString *) nil_chk(input)) isEmpty]) {
    return [IOSObjectArray arrayWithObjects:(id[]){ @"" } count:1 type:[IOSClass classWithClass:[NSString class]]];
  }
  JavaUtilArrayList *list = [[[JavaUtilArrayList alloc] init] autorelease];
  int maxSize = limit <= 0 ? JavaLangInteger_MAX_VALUE : limit;
  JavaUtilRegexMatcher *matcher = [[[JavaUtilRegexMatcher alloc] initWithJavaUtilRegexPattern:pattern withJavaLangCharSequence:input] autorelease];
  int begin = 0;
  while ([matcher find] && [list size] + 1 < maxSize) {
    [list addWithId:[input substring:begin endIndex:[matcher start]]];
    begin = [matcher end];
  }
  return [JavaUtilRegexSplitter finishSplitWithJavaUtilList:list withNSString:input withInt:begin withInt:maxSize withInt:limit];
}

+ (IOSObjectArray *)finishSplitWithJavaUtilList:(id<JavaUtilList>)list
                                   withNSString:(NSString *)input
                                        withInt:(int)begin
                                        withInt:(int)maxSize
                                        withInt:(int)limit {
  if (begin < [((NSString *) nil_chk(input)) length]) {
    [((id<JavaUtilList>) nil_chk(list)) addWithId:[input substring:begin]];
  }
  else if (limit != 0) {
    [((id<JavaUtilList>) nil_chk(list)) addWithId:@""];
  }
  if (limit == 0) {
    int i = [((id<JavaUtilList>) nil_chk(list)) size] - 1;
    while (i >= 0 && [((NSString *) nil_chk([list getWithInt:i])) isEmpty]) {
      [list removeWithInt:i];
      i--;
    }
  }
  return [list toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[((id<JavaUtilList>) nil_chk(list)) size] type:[IOSClass classWithClass:[NSString class]]]];
}

@end
