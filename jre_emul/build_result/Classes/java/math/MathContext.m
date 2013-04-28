//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/math/src/main/java/java/math/MathContext.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSCharArray.h"
#import "java/lang/Character.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/StringBuilder.h"
#import "java/math/MathContext.h"
#import "java/math/RoundingMode.h"

@implementation JavaMathMathContext

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaMathMathContext_DECIMAL128_ name:@"JavaMathMathContext_DECIMAL128_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaMathMathContext_DECIMAL32_ name:@"JavaMathMathContext_DECIMAL32_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaMathMathContext_DECIMAL64_ name:@"JavaMathMathContext_DECIMAL64_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaMathMathContext_UNLIMITED_ name:@"JavaMathMathContext_UNLIMITED_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaMathMathContext_chPrecision_ name:@"JavaMathMathContext_chPrecision_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaMathMathContext_chRoundingMode_ name:@"JavaMathMathContext_chRoundingMode_"]];
  return result;
}

static JavaMathMathContext * JavaMathMathContext_DECIMAL128_;
static JavaMathMathContext * JavaMathMathContext_DECIMAL32_;
static JavaMathMathContext * JavaMathMathContext_DECIMAL64_;
static JavaMathMathContext * JavaMathMathContext_UNLIMITED_;
static IOSCharArray * JavaMathMathContext_chPrecision_;
static IOSCharArray * JavaMathMathContext_chRoundingMode_;

@synthesize precision = precision_;
- (JavaMathRoundingModeEnum *)roundingMode {
  return roundingMode_;
}
- (void)setRoundingMode:(JavaMathRoundingModeEnum *)roundingMode {
  JreOperatorRetainedAssign(&roundingMode_, roundingMode);
}
@synthesize roundingMode = roundingMode_;

+ (JavaMathMathContext *)DECIMAL128 {
  return JavaMathMathContext_DECIMAL128_;
}

+ (JavaMathMathContext *)DECIMAL32 {
  return JavaMathMathContext_DECIMAL32_;
}

+ (JavaMathMathContext *)DECIMAL64 {
  return JavaMathMathContext_DECIMAL64_;
}

+ (JavaMathMathContext *)UNLIMITED {
  return JavaMathMathContext_UNLIMITED_;
}

+ (IOSCharArray *)chPrecision {
  return JavaMathMathContext_chPrecision_;
}

+ (IOSCharArray *)chRoundingMode {
  return JavaMathMathContext_chRoundingMode_;
}

- (id)initWithInt:(int)precision {
  return JreMemDebugAdd([self initJavaMathMathContextWithInt:precision withJavaMathRoundingModeEnum:[JavaMathRoundingModeEnum HALF_UP]]);
}

- (id)initJavaMathMathContextWithInt:(int)precision
        withJavaMathRoundingModeEnum:(JavaMathRoundingModeEnum *)roundingMode {
  if ((self = [super init])) {
    if (precision < 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"Digits < 0"] autorelease];
    }
    if (roundingMode == nil) {
      @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"null RoundingMode"] autorelease];
    }
    self.precision = precision;
    self.roundingMode = roundingMode;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)precision
withJavaMathRoundingModeEnum:(JavaMathRoundingModeEnum *)roundingMode {
  return [self initJavaMathMathContextWithInt:precision withJavaMathRoundingModeEnum:roundingMode];
}

- (id)initWithNSString:(NSString *)val {
  if ((self = [super init])) {
    IOSCharArray *charVal = [NIL_CHK(val) toCharArray];
    int i;
    int j;
    int digit;
    if (((int) [((IOSCharArray *) NIL_CHK(charVal)) count] < 27) || ((int) [((IOSCharArray *) NIL_CHK(charVal)) count] > 45)) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"bad string format"] autorelease];
    }
    for (i = 0; (i < (int) [((IOSCharArray *) NIL_CHK(JavaMathMathContext_chPrecision_)) count]) && ([((IOSCharArray *) NIL_CHK(charVal)) charAtIndex:i] == [((IOSCharArray *) NIL_CHK(JavaMathMathContext_chPrecision_)) charAtIndex:i]); i++) {
      ;
    }
    if (i < (int) [((IOSCharArray *) NIL_CHK(JavaMathMathContext_chPrecision_)) count]) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"bad string format"] autorelease];
    }
    digit = [JavaLangCharacter digitWithUnichar:[((IOSCharArray *) NIL_CHK(charVal)) charAtIndex:i] withInt:10];
    if (digit == -1) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"bad string format"] autorelease];
    }
    self.precision = self.precision * 10 + digit;
    i++;
    do {
      digit = [JavaLangCharacter digitWithUnichar:[((IOSCharArray *) NIL_CHK(charVal)) charAtIndex:i] withInt:10];
      if (digit == -1) {
        if ([((IOSCharArray *) NIL_CHK(charVal)) charAtIndex:i] == ' ') {
          i++;
          break;
        }
        @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"bad string format"] autorelease];
      }
      self.precision = self.precision * 10 + digit;
      if (self.precision < 0) {
        @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"bad string format"] autorelease];
      }
      i++;
    }
    while (YES);
    for (j = 0; (j < (int) [((IOSCharArray *) NIL_CHK(JavaMathMathContext_chRoundingMode_)) count]) && ([((IOSCharArray *) NIL_CHK(charVal)) charAtIndex:i] == [((IOSCharArray *) NIL_CHK(JavaMathMathContext_chRoundingMode_)) charAtIndex:j]); i++, j++) {
      ;
    }
    if (j < (int) [((IOSCharArray *) NIL_CHK(JavaMathMathContext_chRoundingMode_)) count]) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"bad string format"] autorelease];
    }
    self.roundingMode = [JavaMathRoundingModeEnum valueOfWithNSString:[NSString valueOfChars:charVal offset:i count:(int) [((IOSCharArray *) NIL_CHK(charVal)) count] - i]];
    JreMemDebugAdd(self);
  }
  return self;
}

- (int)getPrecision {
  return precision_;
}

- (JavaMathRoundingModeEnum *)getRoundingMode {
  return roundingMode_;
}

- (BOOL)isEqual:(id)x {
  return (([x isKindOfClass:[JavaMathMathContext class]]) && ([((JavaMathMathContext *) x) getPrecision] == precision_) && ([((JavaMathMathContext *) x) getRoundingMode] == roundingMode_));
}

- (NSUInteger)hash {
  return ((precision_ << 3) | [((JavaMathRoundingModeEnum *) NIL_CHK(roundingMode_)) ordinal]);
}

- (NSString *)description {
  JavaLangStringBuilder *sb = [[[JavaLangStringBuilder alloc] initWithInt:45] autorelease];
  [((JavaLangStringBuilder *) NIL_CHK(sb)) appendWithJavaLangCharacterArray:JavaMathMathContext_chPrecision_];
  [((JavaLangStringBuilder *) NIL_CHK(sb)) appendWithInt:precision_];
  [((JavaLangStringBuilder *) NIL_CHK(sb)) appendWithUnichar:' '];
  [((JavaLangStringBuilder *) NIL_CHK(sb)) appendWithJavaLangCharacterArray:JavaMathMathContext_chRoundingMode_];
  [((JavaLangStringBuilder *) NIL_CHK(sb)) appendWithId:roundingMode_];
  return [((JavaLangStringBuilder *) NIL_CHK(sb)) description];
}

+ (void)initialize {
  if (self == [JavaMathMathContext class]) {
    JreOperatorRetainedAssign(&JavaMathMathContext_DECIMAL128_, [[[JavaMathMathContext alloc] initWithInt:34 withJavaMathRoundingModeEnum:[JavaMathRoundingModeEnum HALF_EVEN]] autorelease]);
    JreOperatorRetainedAssign(&JavaMathMathContext_DECIMAL32_, [[[JavaMathMathContext alloc] initWithInt:7 withJavaMathRoundingModeEnum:[JavaMathRoundingModeEnum HALF_EVEN]] autorelease]);
    JreOperatorRetainedAssign(&JavaMathMathContext_DECIMAL64_, [[[JavaMathMathContext alloc] initWithInt:16 withJavaMathRoundingModeEnum:[JavaMathRoundingModeEnum HALF_EVEN]] autorelease]);
    JreOperatorRetainedAssign(&JavaMathMathContext_UNLIMITED_, [[[JavaMathMathContext alloc] initWithInt:0 withJavaMathRoundingModeEnum:[JavaMathRoundingModeEnum HALF_UP]] autorelease]);
    JreOperatorRetainedAssign(&JavaMathMathContext_chPrecision_, [IOSCharArray arrayWithCharacters:(unichar[]){ 'p', 'r', 'e', 'c', 'i', 's', 'i', 'o', 'n', '=' } count:10]);
    JreOperatorRetainedAssign(&JavaMathMathContext_chRoundingMode_, [IOSCharArray arrayWithCharacters:(unichar[]){ 'r', 'o', 'u', 'n', 'd', 'i', 'n', 'g', 'M', 'o', 'd', 'e', '=' } count:13]);
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&roundingMode_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaMathMathContext *typedCopy = (JavaMathMathContext *) copy;
  typedCopy.precision = precision_;
  typedCopy.roundingMode = roundingMode_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:roundingMode_ name:@"roundingMode"]];
  return result;
}

@end
