//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/regex/Matcher.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSIntArray.h"
#import "java/lang/ArrayIndexOutOfBoundsException.h"
#import "java/lang/CharSequence.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IllegalStateException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/StringBuffer.h"
#import "java/lang/StringBuilder.h"
#import "java/util/regex/MatchResult.h"
#import "java/util/regex/MatchResultImpl.h"
#import "java/util/regex/Matcher.h"
#import "java/util/regex/Pattern.h"

@implementation JavaUtilRegexMatcher

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilRegexPattern *)pattern_ {
  return pattern__;
}
- (void)setPattern_:(JavaUtilRegexPattern *)pattern_ {
  JreOperatorRetainedAssign(&pattern__, pattern_);
}
@synthesize pattern_ = pattern__;
- (NSString *)input {
  return input_;
}
- (void)setInput:(NSString *)input {
  JreOperatorRetainedAssign(&input_, input);
}
@synthesize input = input_;
@synthesize regionStart_ = regionStart__;
@synthesize regionEnd_ = regionEnd__;
@synthesize findPos = findPos_;
@synthesize appendPos = appendPos_;
@synthesize matchFound = matchFound_;
- (IOSIntArray *)matchOffsets {
  return matchOffsets_;
}
- (void)setMatchOffsets:(IOSIntArray *)matchOffsets {
  JreOperatorRetainedAssign(&matchOffsets_, matchOffsets);
}
@synthesize matchOffsets = matchOffsets_;
@synthesize anchoringBounds = anchoringBounds_;
@synthesize transparentBounds = transparentBounds_;
@synthesize progressFlags = progressFlags_;

- (id)initWithJavaUtilRegexPattern:(JavaUtilRegexPattern *)pattern
          withJavaLangCharSequence:(id<JavaLangCharSequence>)input {
  if ((self = [super init])) {
    anchoringBounds_ = YES;
    [self usePatternWithJavaUtilRegexPattern:pattern];
    [self resetWithJavaLangCharSequence:input];
    JreMemDebugAdd(self);
  }
  return self;
}

- (JavaUtilRegexMatcher *)appendReplacementWithJavaLangStringBuffer:(JavaLangStringBuffer *)buffer
                                                       withNSString:(NSString *)replacement {
  [((JavaLangStringBuffer *) NIL_CHK(buffer)) appendWithNSString:[NIL_CHK(input_) substring:appendPos_ endIndex:[self start]]];
  [self appendEvaluatedWithJavaLangStringBuffer:buffer withNSString:replacement];
  appendPos_ = [self end];
  return self;
}

- (void)appendEvaluatedWithJavaLangStringBuffer:(JavaLangStringBuffer *)buffer
                                   withNSString:(NSString *)s {
  BOOL escape = NO;
  BOOL dollar = NO;
  for (int i = 0; i < [NIL_CHK(s) length]; i++) {
    unichar c = [NIL_CHK(s) charAtWithInt:i];
    if (c == '\\' && !escape) {
      escape = YES;
    }
    else if (c == '$' && !escape) {
      dollar = YES;
    }
    else if (c >= '0' && c <= '9' && dollar) {
      [((JavaLangStringBuffer *) NIL_CHK(buffer)) appendWithNSString:[self groupWithInt:c - '0']];
      dollar = NO;
    }
    else {
      [((JavaLangStringBuffer *) NIL_CHK(buffer)) appendWithUnichar:c];
      dollar = NO;
      escape = NO;
    }
  }
  if (escape) {
    @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithInt:[NIL_CHK(s) length]] autorelease];
  }
}

- (JavaUtilRegexMatcher *)reset {
  return [self resetWithJavaLangCharSequence:input_ withInt:0 withInt:[NIL_CHK(input_) length]];
}

- (JavaUtilRegexMatcher *)resetWithJavaLangCharSequence:(id<JavaLangCharSequence>)input {
  return [self resetWithJavaLangCharSequence:input withInt:0 withInt:[((id<JavaLangCharSequence>) NIL_CHK(input)) sequenceLength]];
}

- (JavaUtilRegexMatcher *)resetWithJavaLangCharSequence:(id<JavaLangCharSequence>)input
                                                withInt:(int)start
                                                withInt:(int)end {
  if (input == nil) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  if (start < 0 || end < 0 || start > [((id<JavaLangCharSequence>) NIL_CHK(input)) sequenceLength] || end > [((id<JavaLangCharSequence>) NIL_CHK(input)) sequenceLength] || start > end) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  self.input = [((id<JavaLangCharSequence>) NIL_CHK(input)) sequenceDescription];
  self.regionStart_ = start;
  self.regionEnd_ = end;
  matchFound_ = NO;
  findPos_ = regionStart__;
  appendPos_ = 0;
  return self;
}

- (JavaUtilRegexMatcher *)usePatternWithJavaUtilRegexPattern:(JavaUtilRegexPattern *)pattern {
  if (pattern == nil) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  self.pattern_ = pattern;
  JreOperatorRetainedAssign(&matchOffsets_, [[[IOSIntArray alloc] initWithLength:([self groupCount] + 1) * 2] autorelease]);
  matchFound_ = NO;
  anchoringBounds_ = ([((JavaUtilRegexPattern *) NIL_CHK(pattern)) flags] & JavaUtilRegexPattern_MULTILINE) == 0;
  return self;
}

- (JavaUtilRegexMatcher *)regionWithInt:(int)start
                                withInt:(int)end {
  return [self resetWithJavaLangCharSequence:input_ withInt:start withInt:end];
}

- (JavaLangStringBuffer *)appendTailWithJavaLangStringBuffer:(JavaLangStringBuffer *)buffer {
  if (appendPos_ < regionEnd__) {
    [((JavaLangStringBuffer *) NIL_CHK(buffer)) appendWithNSString:[NIL_CHK(input_) substring:appendPos_ endIndex:regionEnd__]];
  }
  return buffer;
}

- (NSString *)replaceFirstWithNSString:(NSString *)replacement {
  [self reset];
  JavaLangStringBuffer *buffer = [[[JavaLangStringBuffer alloc] initWithInt:[NIL_CHK(input_) length]] autorelease];
  if ([self find]) {
    [self appendReplacementWithJavaLangStringBuffer:buffer withNSString:replacement];
  }
  return [[self appendTailWithJavaLangStringBuffer:buffer] description];
}

- (NSString *)replaceAllWithNSString:(NSString *)replacement {
  [self reset];
  JavaLangStringBuffer *buffer = [[[JavaLangStringBuffer alloc] initWithInt:[NIL_CHK(input_) length]] autorelease];
  while ([self find]) {
    [self appendReplacementWithJavaLangStringBuffer:buffer withNSString:replacement];
  }
  return [[self appendTailWithJavaLangStringBuffer:buffer] description];
}

- (JavaUtilRegexPattern *)pattern {
  return pattern__;
}

- (NSString *)groupWithInt:(int)group   {
    [self ensureMatch];
    NIL_CHK(matchOffsets_);
    NSInteger from = [matchOffsets_ intAtIndex:group * 2];
    NSInteger to = [matchOffsets_ intAtIndex:(group * 2) + 1];
    // On 64-bit systems NSNotFound gets truncated to -1 when stored in IOSIntArray.
    static const NSInteger notFound = (sizeof(int) < sizeof(NSInteger)) ? -1 : NSNotFound;
    if (from == notFound || to == notFound) {
      return nil;
    } else {
      return [NIL_CHK(input_) substring:from endIndex:to];
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
  matchFound_ = [self findImplWithInt:findPos_ withBOOL:NO];
  if (matchFound_) {
    findPos_ = [((IOSIntArray *) NIL_CHK(matchOffsets_)) intAtIndex:1];
  }
  return matchFound_;
}

- (BOOL)find {
  matchFound_ = [self findImplWithInt:findPos_ withBOOL:YES];
  if (matchFound_) {
    findPos_ = [((IOSIntArray *) NIL_CHK(matchOffsets_)) intAtIndex:1];
  }
  return matchFound_;
}

- (BOOL)lookingAt {
  matchFound_ = [self findImplWithInt:0 withBOOL:NO];
  if (matchFound_) {
    findPos_ = [((IOSIntArray *) NIL_CHK(matchOffsets_)) intAtIndex:1];
  }
  return matchFound_;
}

- (BOOL)matches {
  matchFound_ = [self matchesImpl];
  if (matchFound_) {
    findPos_ = [((IOSIntArray *) NIL_CHK(matchOffsets_)) intAtIndex:1];
  }
  return matchFound_;
}

- (int)startWithInt:(int)group {
  [self ensureMatch];
  return [((IOSIntArray *) NIL_CHK(matchOffsets_)) intAtIndex:group * 2];
}

- (int)endWithInt:(int)group {
  [self ensureMatch];
  return [((IOSIntArray *) NIL_CHK(matchOffsets_)) intAtIndex:(group * 2) + 1];
}

+ (NSString *)quoteReplacementWithNSString:(NSString *)s {
  JavaLangStringBuilder *result = [[[JavaLangStringBuilder alloc] initWithInt:[NIL_CHK(s) length]] autorelease];
  for (int i = 0; i < [NIL_CHK(s) length]; i++) {
    unichar c = [NIL_CHK(s) charAtWithInt:i];
    if (c == '\\' || c == '$') {
      [((JavaLangStringBuilder *) NIL_CHK(result)) appendWithUnichar:'\\'];
    }
    [((JavaLangStringBuilder *) NIL_CHK(result)) appendWithUnichar:c];
  }
  return [((JavaLangStringBuilder *) NIL_CHK(result)) description];
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
  return [[[JavaUtilRegexMatchResultImpl alloc] initWithNSString:input_ withJavaLangIntegerArray:matchOffsets_] autorelease];
}

- (JavaUtilRegexMatcher *)useAnchoringBoundsWithBOOL:(BOOL)value {
  anchoringBounds_ = value;
  return self;
}

- (BOOL)hasAnchoringBounds {
  return anchoringBounds_;
}

- (JavaUtilRegexMatcher *)useTransparentBoundsWithBOOL:(BOOL)value {
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
               withBOOL:(BOOL)continuing   {
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

- (int)groupCountImpl   {
    NSRegularExpression *regex = (NSRegularExpression *) self->pattern__->nativePattern_;
    return regex.numberOfCaptureGroups;
  }

- (BOOL)hitEndImpl   {
    return (self->progressFlags_ | NSMatchingHitEnd) > 0;
  }

- (BOOL)matchesImpl   {
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

- (BOOL)requireEndImpl   {
    return (self->progressFlags_ | NSMatchingRequiredEnd) > 0;
  }

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&matchOffsets_, nil);
  JreOperatorRetainedAssign(&input_, nil);
  JreOperatorRetainedAssign(&pattern__, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilRegexMatcher *typedCopy = (JavaUtilRegexMatcher *) copy;
  typedCopy.pattern_ = pattern__;
  typedCopy.input = input_;
  typedCopy.regionStart_ = regionStart__;
  typedCopy.regionEnd_ = regionEnd__;
  typedCopy.findPos = findPos_;
  typedCopy.appendPos = appendPos_;
  typedCopy.matchFound = matchFound_;
  typedCopy.matchOffsets = matchOffsets_;
  typedCopy.anchoringBounds = anchoringBounds_;
  typedCopy.transparentBounds = transparentBounds_;
  typedCopy.progressFlags = progressFlags_;
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
