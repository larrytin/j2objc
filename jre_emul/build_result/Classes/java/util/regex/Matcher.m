//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/regex/Matcher.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "IOSIntArray.h"
#include "java/lang/ArrayIndexOutOfBoundsException.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/StringBuilder.h"
#include "java/util/regex/MatchResult.h"
#include "java/util/regex/MatchResultImpl.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"

@implementation JavaUtilRegexMatcher

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaUtilRegexPattern:(JavaUtilRegexPattern *)pattern
          withJavaLangCharSequence:(id<JavaLangCharSequence>)input {
  if (self = [super init]) {
    anchoringBounds_ = YES;
    [self usePatternWithJavaUtilRegexPattern:pattern];
    [self resetWithJavaLangCharSequence:input];
    JreMemDebugAdd(self);
  }
  return self;
}

- (JavaUtilRegexMatcher *)appendReplacementWithJavaLangStringBuffer:(JavaLangStringBuffer *)buffer
                                                       withNSString:(NSString *)replacement {
  [((JavaLangStringBuffer *) nil_chk(buffer)) appendWithNSString:[((NSString *) nil_chk(input_)) substring:appendPos_ endIndex:[self start]]];
  [self appendEvaluatedWithJavaLangStringBuffer:buffer withNSString:replacement];
  appendPos_ = [self end];
  return self;
}

- (void)appendEvaluatedWithJavaLangStringBuffer:(JavaLangStringBuffer *)buffer
                                   withNSString:(NSString *)s {
  BOOL escape = NO;
  BOOL dollar = NO;
  for (int i = 0; i < [((NSString *) nil_chk(s)) length]; i++) {
    unichar c = [s charAtWithInt:i];
    if (c == '\\' && !escape) {
      escape = YES;
    }
    else if (c == '$' && !escape) {
      dollar = YES;
    }
    else if (c >= '0' && c <= '9' && dollar) {
      [((JavaLangStringBuffer *) nil_chk(buffer)) appendWithNSString:[self groupWithInt:c - '0']];
      dollar = NO;
    }
    else {
      [((JavaLangStringBuffer *) nil_chk(buffer)) appendWithChar:c];
      dollar = NO;
      escape = NO;
    }
  }
  if (escape) {
    @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithInt:[s length]] autorelease];
  }
}

- (JavaUtilRegexMatcher *)reset {
  return [self resetWithJavaLangCharSequence:input_ withInt:0 withInt:[((NSString *) nil_chk(input_)) length]];
}

- (JavaUtilRegexMatcher *)resetWithJavaLangCharSequence:(id<JavaLangCharSequence>)input {
  return [self resetWithJavaLangCharSequence:input withInt:0 withInt:[((id<JavaLangCharSequence>) nil_chk(input)) sequenceLength]];
}

- (JavaUtilRegexMatcher *)resetWithJavaLangCharSequence:(id<JavaLangCharSequence>)input
                                                withInt:(int)start
                                                withInt:(int)end {
  if (input == nil) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  if (start < 0 || end < 0 || start > [((id<JavaLangCharSequence>) nil_chk(input)) sequenceLength] || end > [input sequenceLength] || start > end) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  JavaUtilRegexMatcher_set_input_(self, [((id<JavaLangCharSequence>) nil_chk(input)) sequenceDescription]);
  self->regionStart__ = start;
  self->regionEnd__ = end;
  matchFound_ = NO;
  findPos_ = regionStart__;
  appendPos_ = 0;
  return self;
}

- (JavaUtilRegexMatcher *)usePatternWithJavaUtilRegexPattern:(JavaUtilRegexPattern *)pattern {
  if (pattern == nil) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  JavaUtilRegexMatcher_set_pattern__(self, pattern);
  JavaUtilRegexMatcher_set_matchOffsets_(self, [IOSIntArray arrayWithLength:([self groupCount] + 1) * 2]);
  matchFound_ = NO;
  anchoringBounds_ = ([((JavaUtilRegexPattern *) nil_chk(pattern)) flags] & JavaUtilRegexPattern_MULTILINE) == 0;
  return self;
}

- (JavaUtilRegexMatcher *)regionWithInt:(int)start
                                withInt:(int)end {
  return [self resetWithJavaLangCharSequence:input_ withInt:start withInt:end];
}

- (JavaLangStringBuffer *)appendTailWithJavaLangStringBuffer:(JavaLangStringBuffer *)buffer {
  if (appendPos_ < regionEnd__) {
    [((JavaLangStringBuffer *) nil_chk(buffer)) appendWithNSString:[((NSString *) nil_chk(input_)) substring:appendPos_ endIndex:regionEnd__]];
  }
  return buffer;
}

- (NSString *)replaceFirstWithNSString:(NSString *)replacement {
  [self reset];
  JavaLangStringBuffer *buffer = [[[JavaLangStringBuffer alloc] initWithInt:[((NSString *) nil_chk(input_)) length]] autorelease];
  if ([self find]) {
    [self appendReplacementWithJavaLangStringBuffer:buffer withNSString:replacement];
  }
  return [((JavaLangStringBuffer *) nil_chk([self appendTailWithJavaLangStringBuffer:buffer])) description];
}

- (NSString *)replaceAllWithNSString:(NSString *)replacement {
  [self reset];
  JavaLangStringBuffer *buffer = [[[JavaLangStringBuffer alloc] initWithInt:[((NSString *) nil_chk(input_)) length]] autorelease];
  while ([self find]) {
    [self appendReplacementWithJavaLangStringBuffer:buffer withNSString:replacement];
  }
  return [((JavaLangStringBuffer *) nil_chk([self appendTailWithJavaLangStringBuffer:buffer])) description];
}

- (JavaUtilRegexPattern *)pattern {
  return pattern__;
}

- (NSString *)groupWithInt:(int)group {
  [self ensureMatch];
  nil_chk(matchOffsets_);
  NSInteger from = IOSIntArray_Get(matchOffsets_, group * 2);
  NSInteger to = IOSIntArray_Get(matchOffsets_, (group * 2) + 1);
  // On 64-bit systems NSNotFound gets truncated to -1 when stored in IOSIntArray.
  static const NSInteger notFound = (sizeof(int) < sizeof(NSInteger)) ? -1 : NSNotFound;
  if (from == notFound || to == notFound) {
    return nil;
  } else {
    return [nil_chk(input_) substring:from endIndex:to];
  }
}

- (NSString *)group {
  return [self groupWithInt:0];
}

- (BOOL)findWithInt:(int)start {
  findPos_ = start;
  if (findPos_ < regionStart__) {
    findPos_ = regionStart__;
  }
  else if (findPos_ >= regionEnd__) {
    matchFound_ = NO;
    return NO;
  }
  matchFound_ = [self findImplWithInt:findPos_ withBoolean:NO];
  if (matchFound_) {
    findPos_ = IOSIntArray_Get(nil_chk(matchOffsets_), 1);
  }
  return matchFound_;
}

- (BOOL)find {
  matchFound_ = [self findImplWithInt:findPos_ withBoolean:YES];
  if (matchFound_) {
    findPos_ = IOSIntArray_Get(nil_chk(matchOffsets_), 1);
  }
  return matchFound_;
}

- (BOOL)lookingAt {
  matchFound_ = [self findImplWithInt:0 withBoolean:NO];
  if (matchFound_) {
    findPos_ = IOSIntArray_Get(nil_chk(matchOffsets_), 1);
  }
  return matchFound_;
}

- (BOOL)matches {
  matchFound_ = [self matchesImpl];
  if (matchFound_) {
    findPos_ = IOSIntArray_Get(nil_chk(matchOffsets_), 1);
  }
  return matchFound_;
}

- (int)startWithInt:(int)group {
  [self ensureMatch];
  return IOSIntArray_Get(nil_chk(matchOffsets_), group * 2);
}

+ (IOSObjectArray *)__exceptions_startWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangIllegalStateException getClass] } count:1 type:[IOSClass getClass]];
}

- (int)endWithInt:(int)group {
  [self ensureMatch];
  return IOSIntArray_Get(nil_chk(matchOffsets_), (group * 2) + 1);
}

+ (NSString *)quoteReplacementWithNSString:(NSString *)s {
  JavaLangStringBuilder *result = [[[JavaLangStringBuilder alloc] initWithInt:[((NSString *) nil_chk(s)) length]] autorelease];
  for (int i = 0; i < [s length]; i++) {
    unichar c = [s charAtWithInt:i];
    if (c == '\\' || c == '$') {
      [result appendWithChar:'\\'];
    }
    [result appendWithChar:c];
  }
  return [result description];
}

- (int)start {
  return [self startWithInt:0];
}

- (int)groupCount {
  return [self groupCountImpl];
}

- (int)end {
  return [self endWithInt:0];
}

- (id<JavaUtilRegexMatchResult>)toMatchResult {
  [self ensureMatch];
  return [[[JavaUtilRegexMatchResultImpl alloc] initWithNSString:input_ withIntArray:matchOffsets_] autorelease];
}

- (JavaUtilRegexMatcher *)useAnchoringBoundsWithBoolean:(BOOL)value {
  anchoringBounds_ = value;
  return self;
}

- (BOOL)hasAnchoringBounds {
  return anchoringBounds_;
}

- (JavaUtilRegexMatcher *)useTransparentBoundsWithBoolean:(BOOL)value {
  transparentBounds_ = value;
  return self;
}

- (void)ensureMatch {
  if (!matchFound_) {
    @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"No successful match so far"] autorelease];
  }
}

- (BOOL)hasTransparentBounds {
  return transparentBounds_;
}

- (int)regionStart {
  return regionStart__;
}

- (int)regionEnd {
  return regionEnd__;
}

- (BOOL)requireEnd {
  return [self requireEndImpl];
}

- (BOOL)hitEnd {
  return [self hitEndImpl];
}

- (BOOL)findImplWithInt:(int)start
            withBoolean:(BOOL)continuing {
  NSRegularExpression *regex = (NSRegularExpression *) self->pattern__->nativePattern_;
  NSMatchingOptions options = 0;
  if (!continuing) {
    if (self->anchoringBounds_) {
      options |= NSMatchingAnchored;
    }
    if (self->transparentBounds_) {
      options |= NSMatchingWithTransparentBounds;
    }
  }
  NSRange range = NSMakeRange(start, self->regionEnd__ - start);
  
  // Use enumerateMatchesInString to get progress state.
  __block BOOL matched = NO;
  [regex enumerateMatchesInString:self->input_
  options:options
  range:range
  usingBlock:^(NSTextCheckingResult *match,
  NSMatchingFlags flags,
  BOOL *stop) {
    self->progressFlags_ = flags;
    
    // Update offsets.
    NSUInteger nGroups = [match numberOfRanges];
    for (NSUInteger i = 0; i < nGroups; i++) {
      NSRange matchRange = [match rangeAtIndex:i];
      [self->matchOffsets_ replaceIntAtIndex:i * 2
      withInt:matchRange.location];
      [self->matchOffsets_
      replaceIntAtIndex:(i * 2) + 1
      withInt:matchRange.location + matchRange.length];
    }
    
    matched = [match range].length > 0;  // No match if length is zero.
    *stop = YES;
  }];
  
  return matched;
}

- (int)groupCountImpl {
  NSRegularExpression *regex = (NSRegularExpression *) self->pattern__->nativePattern_;
  return regex.numberOfCaptureGroups;
}

- (BOOL)hitEndImpl {
  return (self->progressFlags_ | NSMatchingHitEnd) > 0;
}

- (BOOL)matchesImpl {
  NSRegularExpression *regex = (NSRegularExpression *) self->pattern__->nativePattern_;
  NSUInteger patternFlags = [regex options];
  NSMatchingOptions options = 0;
  if (self->anchoringBounds_) {
    options |= NSMatchingAnchored;
  }
  if (self->transparentBounds_ ||
  (patternFlags & NSRegularExpressionAnchorsMatchLines) > 0) {
    options |= NSMatchingWithTransparentBounds;
  }
  NSUInteger length = [self->input_ length];
  NSTextCheckingResult *match =
  [regex firstMatchInString:self->input_
  options:options
  range:NSMakeRange(0, length)];
  
  // Update offsets.
  NSUInteger nGroups = [match numberOfRanges];
  for (NSUInteger i = 0; i < nGroups; i++) {
    NSRange matchRange = [match rangeAtIndex:i];
    [self->matchOffsets_ replaceIntAtIndex:i * 2
    withInt:matchRange.location];
    [self->matchOffsets_
    replaceIntAtIndex:(i * 2) + 1
    withInt:matchRange.location + matchRange.length];
  }
  NSRange range = [match range];
  return range.location == 0 && range.length == length;
}

- (BOOL)requireEndImpl {
  return (self->progressFlags_ | NSMatchingRequiredEnd) > 0;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilRegexMatcher_set_matchOffsets_(self, nil);
  JavaUtilRegexMatcher_set_input_(self, nil);
  JavaUtilRegexMatcher_set_pattern__(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilRegexMatcher *)other {
  [super copyAllFieldsTo:other];
  other->anchoringBounds_ = anchoringBounds_;
  other->appendPos_ = appendPos_;
  other->findPos_ = findPos_;
  JavaUtilRegexMatcher_set_input_(other, input_);
  other->matchFound_ = matchFound_;
  JavaUtilRegexMatcher_set_matchOffsets_(other, matchOffsets_);
  JavaUtilRegexMatcher_set_pattern__(other, pattern__);
  other->progressFlags_ = progressFlags_;
  other->regionEnd__ = regionEnd__;
  other->regionStart__ = regionStart__;
  other->transparentBounds_ = transparentBounds_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:pattern__ name:@"pattern_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:input_ name:@"input"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:matchOffsets_ name:@"matchOffsets"]];
  return result;
}

@end
