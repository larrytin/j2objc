//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/math/src/main/java/java/math/Logical.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSIntArray.h"
#include "java/lang/Math.h"
#include "java/math/BigInteger.h"
#include "java/math/Logical.h"

@implementation JavaMathLogical

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (JavaMathBigInteger *)not__WithJavaMathBigInteger:(JavaMathBigInteger *)val {
  if (((JavaMathBigInteger *) nil_chk(val))->sign_ == 0) {
    return [JavaMathBigInteger MINUS_ONE];
  }
  if ([val isEqual:[JavaMathBigInteger MINUS_ONE]]) {
    return [JavaMathBigInteger ZERO];
  }
  IOSIntArray *resDigits = [IOSIntArray arrayWithLength:val->numberLength_ + 1];
  int i;
  if (val->sign_ > 0) {
    if ([((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:val->numberLength_ - 1] != -1) {
      for (i = 0; [val->digits_ intAtIndex:i] == -1; i++) {
        ;
      }
    }
    else {
      for (i = 0; (i < val->numberLength_) && ([val->digits_ intAtIndex:i] == -1); i++) {
        ;
      }
      if (i == val->numberLength_) {
        (*[resDigits intRefAtIndex:i]) = 1;
        return [[[JavaMathBigInteger alloc] initWithInt:-val->sign_ withInt:i + 1 withIntArray:resDigits] autorelease];
      }
    }
  }
  else {
    for (i = 0; [((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:i] == 0; i++) {
      (*[resDigits intRefAtIndex:i]) = -1;
    }
  }
  (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:i] + val->sign_;
  for (i++; i < val->numberLength_; i++) {
    (*[resDigits intRefAtIndex:i]) = [val->digits_ intAtIndex:i];
  }
  return [[[JavaMathBigInteger alloc] initWithInt:-val->sign_ withInt:i withIntArray:resDigits] autorelease];
}

+ (JavaMathBigInteger *)andWithJavaMathBigInteger:(JavaMathBigInteger *)val
                           withJavaMathBigInteger:(JavaMathBigInteger *)that {
  if (((JavaMathBigInteger *) nil_chk(that))->sign_ == 0 || ((JavaMathBigInteger *) nil_chk(val))->sign_ == 0) {
    return [JavaMathBigInteger ZERO];
  }
  if ([that isEqual:[JavaMathBigInteger MINUS_ONE]]) {
    return val;
  }
  if ([((JavaMathBigInteger *) nil_chk(val)) isEqual:[JavaMathBigInteger MINUS_ONE]]) {
    return that;
  }
  if (val->sign_ > 0) {
    if (that->sign_ > 0) {
      return [JavaMathLogical andPositiveWithJavaMathBigInteger:val withJavaMathBigInteger:that];
    }
    else {
      return [JavaMathLogical andDiffSignsWithJavaMathBigInteger:val withJavaMathBigInteger:that];
    }
  }
  else {
    if (that->sign_ > 0) {
      return [JavaMathLogical andDiffSignsWithJavaMathBigInteger:that withJavaMathBigInteger:val];
    }
    else if (val->numberLength_ > that->numberLength_) {
      return [JavaMathLogical andNegativeWithJavaMathBigInteger:val withJavaMathBigInteger:that];
    }
    else {
      return [JavaMathLogical andNegativeWithJavaMathBigInteger:that withJavaMathBigInteger:val];
    }
  }
}

+ (JavaMathBigInteger *)andPositiveWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                   withJavaMathBigInteger:(JavaMathBigInteger *)that {
  int resLength = [JavaLangMath minWithInt:((JavaMathBigInteger *) nil_chk(val))->numberLength_ withInt:((JavaMathBigInteger *) nil_chk(that))->numberLength_];
  int i = [JavaLangMath maxWithInt:[val getFirstNonzeroDigit] withInt:[that getFirstNonzeroDigit]];
  if (i >= resLength) {
    return [JavaMathBigInteger ZERO];
  }
  IOSIntArray *resDigits = [IOSIntArray arrayWithLength:resLength];
  for (; i < resLength; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:i] & [that->digits_ intAtIndex:i];
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:1 withInt:resLength withIntArray:resDigits] autorelease];
  [result cutOffLeadingZeroes];
  return result;
}

+ (JavaMathBigInteger *)andDiffSignsWithJavaMathBigInteger:(JavaMathBigInteger *)positive
                                    withJavaMathBigInteger:(JavaMathBigInteger *)negative {
  int iPos = [((JavaMathBigInteger *) nil_chk(positive)) getFirstNonzeroDigit];
  int iNeg = [((JavaMathBigInteger *) nil_chk(negative)) getFirstNonzeroDigit];
  if (iNeg >= positive->numberLength_) {
    return [JavaMathBigInteger ZERO];
  }
  int resLength = positive->numberLength_;
  IOSIntArray *resDigits = [IOSIntArray arrayWithLength:resLength];
  int i = [JavaLangMath maxWithInt:iPos withInt:iNeg];
  if (i == iNeg) {
    (*[resDigits intRefAtIndex:i]) = -[((IOSIntArray *) nil_chk(negative->digits_)) intAtIndex:i] & [positive->digits_ intAtIndex:i];
    i++;
  }
  int limit = [JavaLangMath minWithInt:negative->numberLength_ withInt:positive->numberLength_];
  for (; i < limit; i++) {
    (*[resDigits intRefAtIndex:i]) = ~[((IOSIntArray *) nil_chk(negative->digits_)) intAtIndex:i] & [positive->digits_ intAtIndex:i];
  }
  if (i >= negative->numberLength_) {
    for (; i < positive->numberLength_; i++) {
      (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(positive->digits_)) intAtIndex:i];
    }
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:1 withInt:resLength withIntArray:resDigits] autorelease];
  [result cutOffLeadingZeroes];
  return result;
}

+ (JavaMathBigInteger *)andNegativeWithJavaMathBigInteger:(JavaMathBigInteger *)longer
                                   withJavaMathBigInteger:(JavaMathBigInteger *)shorter {
  int iLonger = [((JavaMathBigInteger *) nil_chk(longer)) getFirstNonzeroDigit];
  int iShorter = [((JavaMathBigInteger *) nil_chk(shorter)) getFirstNonzeroDigit];
  if (iLonger >= shorter->numberLength_) {
    return longer;
  }
  int resLength;
  IOSIntArray *resDigits;
  int i = [JavaLangMath maxWithInt:iShorter withInt:iLonger];
  int digit;
  if (iShorter > iLonger) {
    digit = -[((IOSIntArray *) nil_chk(shorter->digits_)) intAtIndex:i] & ~[longer->digits_ intAtIndex:i];
  }
  else if (iShorter < iLonger) {
    digit = ~[((IOSIntArray *) nil_chk(shorter->digits_)) intAtIndex:i] & -[longer->digits_ intAtIndex:i];
  }
  else {
    digit = -[((IOSIntArray *) nil_chk(shorter->digits_)) intAtIndex:i] & -[longer->digits_ intAtIndex:i];
  }
  if (digit == 0) {
    for (i++; i < shorter->numberLength_ && (digit = ~([((IOSIntArray *) nil_chk(longer->digits_)) intAtIndex:i] | [shorter->digits_ intAtIndex:i])) == 0; i++) ;
    if (digit == 0) {
      for (; i < longer->numberLength_ && (digit = ~[((IOSIntArray *) nil_chk(longer->digits_)) intAtIndex:i]) == 0; i++) ;
      if (digit == 0) {
        resLength = longer->numberLength_ + 1;
        resDigits = [IOSIntArray arrayWithLength:resLength];
        (*[resDigits intRefAtIndex:resLength - 1]) = 1;
        JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:-1 withInt:resLength withIntArray:resDigits] autorelease];
        return result;
      }
    }
  }
  resLength = longer->numberLength_;
  resDigits = [IOSIntArray arrayWithLength:resLength];
  (*[resDigits intRefAtIndex:i]) = -digit;
  for (i++; i < shorter->numberLength_; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(longer->digits_)) intAtIndex:i] | [shorter->digits_ intAtIndex:i];
  }
  for (; i < longer->numberLength_; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(longer->digits_)) intAtIndex:i];
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:-1 withInt:resLength withIntArray:resDigits] autorelease];
  return result;
}

+ (JavaMathBigInteger *)andNotWithJavaMathBigInteger:(JavaMathBigInteger *)val
                              withJavaMathBigInteger:(JavaMathBigInteger *)that {
  if (((JavaMathBigInteger *) nil_chk(that))->sign_ == 0) {
    return val;
  }
  if (((JavaMathBigInteger *) nil_chk(val))->sign_ == 0) {
    return [JavaMathBigInteger ZERO];
  }
  if ([val isEqual:[JavaMathBigInteger MINUS_ONE]]) {
    return [that not__];
  }
  if ([that isEqual:[JavaMathBigInteger MINUS_ONE]]) {
    return [JavaMathBigInteger ZERO];
  }
  if (val->sign_ > 0) {
    if (that->sign_ > 0) {
      return [JavaMathLogical andNotPositiveWithJavaMathBigInteger:val withJavaMathBigInteger:that];
    }
    else {
      return [JavaMathLogical andNotPositiveNegativeWithJavaMathBigInteger:val withJavaMathBigInteger:that];
    }
  }
  else {
    if (that->sign_ > 0) {
      return [JavaMathLogical andNotNegativePositiveWithJavaMathBigInteger:val withJavaMathBigInteger:that];
    }
    else {
      return [JavaMathLogical andNotNegativeWithJavaMathBigInteger:val withJavaMathBigInteger:that];
    }
  }
}

+ (JavaMathBigInteger *)andNotPositiveWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                      withJavaMathBigInteger:(JavaMathBigInteger *)that {
  IOSIntArray *resDigits = [IOSIntArray arrayWithLength:((JavaMathBigInteger *) nil_chk(val))->numberLength_];
  int limit = [JavaLangMath minWithInt:val->numberLength_ withInt:((JavaMathBigInteger *) nil_chk(that))->numberLength_];
  int i;
  for (i = [val getFirstNonzeroDigit]; i < limit; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:i] & ~[that->digits_ intAtIndex:i];
  }
  for (; i < val->numberLength_; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:i];
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:1 withInt:val->numberLength_ withIntArray:resDigits] autorelease];
  [result cutOffLeadingZeroes];
  return result;
}

+ (JavaMathBigInteger *)andNotPositiveNegativeWithJavaMathBigInteger:(JavaMathBigInteger *)positive
                                              withJavaMathBigInteger:(JavaMathBigInteger *)negative {
  int iNeg = [((JavaMathBigInteger *) nil_chk(negative)) getFirstNonzeroDigit];
  int iPos = [((JavaMathBigInteger *) nil_chk(positive)) getFirstNonzeroDigit];
  if (iNeg >= positive->numberLength_) {
    return positive;
  }
  int resLength = [JavaLangMath minWithInt:positive->numberLength_ withInt:negative->numberLength_];
  IOSIntArray *resDigits = [IOSIntArray arrayWithLength:resLength];
  int i = iPos;
  for (; i < iNeg; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(positive->digits_)) intAtIndex:i];
  }
  if (i == iNeg) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(positive->digits_)) intAtIndex:i] & ([negative->digits_ intAtIndex:i] - 1);
    i++;
  }
  for (; i < resLength; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(positive->digits_)) intAtIndex:i] & [negative->digits_ intAtIndex:i];
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:1 withInt:resLength withIntArray:resDigits] autorelease];
  [result cutOffLeadingZeroes];
  return result;
}

+ (JavaMathBigInteger *)andNotNegativePositiveWithJavaMathBigInteger:(JavaMathBigInteger *)negative
                                              withJavaMathBigInteger:(JavaMathBigInteger *)positive {
  int resLength;
  IOSIntArray *resDigits;
  int limit;
  int digit;
  int iNeg = [((JavaMathBigInteger *) nil_chk(negative)) getFirstNonzeroDigit];
  int iPos = [((JavaMathBigInteger *) nil_chk(positive)) getFirstNonzeroDigit];
  if (iNeg >= positive->numberLength_) {
    return negative;
  }
  resLength = [JavaLangMath maxWithInt:negative->numberLength_ withInt:positive->numberLength_];
  int i = iNeg;
  if (iPos > iNeg) {
    resDigits = [IOSIntArray arrayWithLength:resLength];
    limit = [JavaLangMath minWithInt:negative->numberLength_ withInt:iPos];
    for (; i < limit; i++) {
      (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(negative->digits_)) intAtIndex:i];
    }
    if (i == negative->numberLength_) {
      for (i = iPos; i < positive->numberLength_; i++) {
        (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(positive->digits_)) intAtIndex:i];
      }
    }
  }
  else {
    digit = -[((IOSIntArray *) nil_chk(negative->digits_)) intAtIndex:i] & ~[positive->digits_ intAtIndex:i];
    if (digit == 0) {
      limit = [JavaLangMath minWithInt:positive->numberLength_ withInt:negative->numberLength_];
      for (i++; i < limit && (digit = ~([negative->digits_ intAtIndex:i] | [positive->digits_ intAtIndex:i])) == 0; i++) ;
      if (digit == 0) {
        for (; i < positive->numberLength_ && (digit = ~[positive->digits_ intAtIndex:i]) == 0; i++) ;
        for (; i < negative->numberLength_ && (digit = ~[negative->digits_ intAtIndex:i]) == 0; i++) ;
        if (digit == 0) {
          resLength++;
          resDigits = [IOSIntArray arrayWithLength:resLength];
          (*[resDigits intRefAtIndex:resLength - 1]) = 1;
          JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:-1 withInt:resLength withIntArray:resDigits] autorelease];
          return result;
        }
      }
    }
    resDigits = [IOSIntArray arrayWithLength:resLength];
    (*[resDigits intRefAtIndex:i]) = -digit;
    i++;
  }
  limit = [JavaLangMath minWithInt:positive->numberLength_ withInt:negative->numberLength_];
  for (; i < limit; i++) {
    (*[((IOSIntArray *) nil_chk(resDigits)) intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(negative->digits_)) intAtIndex:i] | [positive->digits_ intAtIndex:i];
  }
  for (; i < negative->numberLength_; i++) {
    (*[((IOSIntArray *) nil_chk(resDigits)) intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(negative->digits_)) intAtIndex:i];
  }
  for (; i < positive->numberLength_; i++) {
    (*[((IOSIntArray *) nil_chk(resDigits)) intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(positive->digits_)) intAtIndex:i];
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:-1 withInt:resLength withIntArray:resDigits] autorelease];
  return result;
}

+ (JavaMathBigInteger *)andNotNegativeWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                      withJavaMathBigInteger:(JavaMathBigInteger *)that {
  int iVal = [((JavaMathBigInteger *) nil_chk(val)) getFirstNonzeroDigit];
  int iThat = [((JavaMathBigInteger *) nil_chk(that)) getFirstNonzeroDigit];
  if (iVal >= that->numberLength_) {
    return [JavaMathBigInteger ZERO];
  }
  int resLength = that->numberLength_;
  IOSIntArray *resDigits = [IOSIntArray arrayWithLength:resLength];
  int limit;
  int i = iVal;
  if (iVal < iThat) {
    (*[resDigits intRefAtIndex:i]) = -[((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:i];
    limit = [JavaLangMath minWithInt:val->numberLength_ withInt:iThat];
    for (i++; i < limit; i++) {
      (*[resDigits intRefAtIndex:i]) = ~[val->digits_ intAtIndex:i];
    }
    if (i == val->numberLength_) {
      for (; i < iThat; i++) {
        (*[resDigits intRefAtIndex:i]) = -1;
      }
      (*[resDigits intRefAtIndex:i]) = [that->digits_ intAtIndex:i] - 1;
    }
    else {
      (*[resDigits intRefAtIndex:i]) = ~[val->digits_ intAtIndex:i] & ([that->digits_ intAtIndex:i] - 1);
    }
  }
  else if (iThat < iVal) {
    (*[resDigits intRefAtIndex:i]) = -[((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:i] & [that->digits_ intAtIndex:i];
  }
  else {
    (*[resDigits intRefAtIndex:i]) = -[((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:i] & ([that->digits_ intAtIndex:i] - 1);
  }
  limit = [JavaLangMath minWithInt:val->numberLength_ withInt:that->numberLength_];
  for (i++; i < limit; i++) {
    (*[resDigits intRefAtIndex:i]) = ~[((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:i] & [that->digits_ intAtIndex:i];
  }
  for (; i < that->numberLength_; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(that->digits_)) intAtIndex:i];
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:1 withInt:resLength withIntArray:resDigits] autorelease];
  [result cutOffLeadingZeroes];
  return result;
}

+ (JavaMathBigInteger *)orWithJavaMathBigInteger:(JavaMathBigInteger *)val
                          withJavaMathBigInteger:(JavaMathBigInteger *)that {
  if ([((JavaMathBigInteger *) nil_chk(that)) isEqual:[JavaMathBigInteger MINUS_ONE]] || [((JavaMathBigInteger *) nil_chk(val)) isEqual:[JavaMathBigInteger MINUS_ONE]]) {
    return [JavaMathBigInteger MINUS_ONE];
  }
  if (that->sign_ == 0) {
    return val;
  }
  if (((JavaMathBigInteger *) nil_chk(val))->sign_ == 0) {
    return that;
  }
  if (val->sign_ > 0) {
    if (that->sign_ > 0) {
      if (val->numberLength_ > that->numberLength_) {
        return [JavaMathLogical orPositiveWithJavaMathBigInteger:val withJavaMathBigInteger:that];
      }
      else {
        return [JavaMathLogical orPositiveWithJavaMathBigInteger:that withJavaMathBigInteger:val];
      }
    }
    else {
      return [JavaMathLogical orDiffSignsWithJavaMathBigInteger:val withJavaMathBigInteger:that];
    }
  }
  else {
    if (that->sign_ > 0) {
      return [JavaMathLogical orDiffSignsWithJavaMathBigInteger:that withJavaMathBigInteger:val];
    }
    else if ([that getFirstNonzeroDigit] > [val getFirstNonzeroDigit]) {
      return [JavaMathLogical orNegativeWithJavaMathBigInteger:that withJavaMathBigInteger:val];
    }
    else {
      return [JavaMathLogical orNegativeWithJavaMathBigInteger:val withJavaMathBigInteger:that];
    }
  }
}

+ (JavaMathBigInteger *)orPositiveWithJavaMathBigInteger:(JavaMathBigInteger *)longer
                                  withJavaMathBigInteger:(JavaMathBigInteger *)shorter {
  int resLength = ((JavaMathBigInteger *) nil_chk(longer))->numberLength_;
  IOSIntArray *resDigits = [IOSIntArray arrayWithLength:resLength];
  int i = [JavaLangMath minWithInt:[longer getFirstNonzeroDigit] withInt:[((JavaMathBigInteger *) nil_chk(shorter)) getFirstNonzeroDigit]];
  for (i = 0; i < shorter->numberLength_; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(longer->digits_)) intAtIndex:i] | [shorter->digits_ intAtIndex:i];
  }
  for (; i < resLength; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(longer->digits_)) intAtIndex:i];
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:1 withInt:resLength withIntArray:resDigits] autorelease];
  return result;
}

+ (JavaMathBigInteger *)orNegativeWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                  withJavaMathBigInteger:(JavaMathBigInteger *)that {
  int iThat = [((JavaMathBigInteger *) nil_chk(that)) getFirstNonzeroDigit];
  int iVal = [((JavaMathBigInteger *) nil_chk(val)) getFirstNonzeroDigit];
  int i;
  if (iVal >= that->numberLength_) {
    return that;
  }
  else if (iThat >= val->numberLength_) {
    return val;
  }
  int resLength = [JavaLangMath minWithInt:val->numberLength_ withInt:that->numberLength_];
  IOSIntArray *resDigits = [IOSIntArray arrayWithLength:resLength];
  if (iThat == iVal) {
    (*[resDigits intRefAtIndex:iVal]) = -(-[((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:iVal] | -[that->digits_ intAtIndex:iVal]);
    i = iVal;
  }
  else {
    for (i = iThat; i < iVal; i++) {
      (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(that->digits_)) intAtIndex:i];
    }
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(that->digits_)) intAtIndex:i] & ([val->digits_ intAtIndex:i] - 1);
  }
  for (i++; i < resLength; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:i] & [that->digits_ intAtIndex:i];
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:-1 withInt:resLength withIntArray:resDigits] autorelease];
  [result cutOffLeadingZeroes];
  return result;
}

+ (JavaMathBigInteger *)orDiffSignsWithJavaMathBigInteger:(JavaMathBigInteger *)positive
                                   withJavaMathBigInteger:(JavaMathBigInteger *)negative {
  int iNeg = [((JavaMathBigInteger *) nil_chk(negative)) getFirstNonzeroDigit];
  int iPos = [((JavaMathBigInteger *) nil_chk(positive)) getFirstNonzeroDigit];
  int i;
  int limit;
  if (iPos >= negative->numberLength_) {
    return negative;
  }
  int resLength = negative->numberLength_;
  IOSIntArray *resDigits = [IOSIntArray arrayWithLength:resLength];
  if (iNeg < iPos) {
    for (i = iNeg; i < iPos; i++) {
      (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(negative->digits_)) intAtIndex:i];
    }
  }
  else if (iPos < iNeg) {
    i = iPos;
    (*[resDigits intRefAtIndex:i]) = -[((IOSIntArray *) nil_chk(positive->digits_)) intAtIndex:i];
    limit = [JavaLangMath minWithInt:positive->numberLength_ withInt:iNeg];
    for (i++; i < limit; i++) {
      (*[resDigits intRefAtIndex:i]) = ~[positive->digits_ intAtIndex:i];
    }
    if (i != positive->numberLength_) {
      (*[resDigits intRefAtIndex:i]) = ~(-[negative->digits_ intAtIndex:i] | [positive->digits_ intAtIndex:i]);
    }
    else {
      for (; i < iNeg; i++) {
        (*[resDigits intRefAtIndex:i]) = -1;
      }
      (*[resDigits intRefAtIndex:i]) = [negative->digits_ intAtIndex:i] - 1;
    }
    i++;
  }
  else {
    i = iPos;
    (*[resDigits intRefAtIndex:i]) = -(-[((IOSIntArray *) nil_chk(negative->digits_)) intAtIndex:i] | [positive->digits_ intAtIndex:i]);
    i++;
  }
  limit = [JavaLangMath minWithInt:negative->numberLength_ withInt:positive->numberLength_];
  for (; i < limit; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(negative->digits_)) intAtIndex:i] & ~[positive->digits_ intAtIndex:i];
  }
  for (; i < negative->numberLength_; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(negative->digits_)) intAtIndex:i];
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:-1 withInt:resLength withIntArray:resDigits] autorelease];
  [result cutOffLeadingZeroes];
  return result;
}

+ (JavaMathBigInteger *)xorWithJavaMathBigInteger:(JavaMathBigInteger *)val
                           withJavaMathBigInteger:(JavaMathBigInteger *)that {
  if (((JavaMathBigInteger *) nil_chk(that))->sign_ == 0) {
    return val;
  }
  if (((JavaMathBigInteger *) nil_chk(val))->sign_ == 0) {
    return that;
  }
  if ([that isEqual:[JavaMathBigInteger MINUS_ONE]]) {
    return [val not__];
  }
  if ([val isEqual:[JavaMathBigInteger MINUS_ONE]]) {
    return [that not__];
  }
  if (val->sign_ > 0) {
    if (that->sign_ > 0) {
      if (val->numberLength_ > that->numberLength_) {
        return [JavaMathLogical xorPositiveWithJavaMathBigInteger:val withJavaMathBigInteger:that];
      }
      else {
        return [JavaMathLogical xorPositiveWithJavaMathBigInteger:that withJavaMathBigInteger:val];
      }
    }
    else {
      return [JavaMathLogical xorDiffSignsWithJavaMathBigInteger:val withJavaMathBigInteger:that];
    }
  }
  else {
    if (that->sign_ > 0) {
      return [JavaMathLogical xorDiffSignsWithJavaMathBigInteger:that withJavaMathBigInteger:val];
    }
    else if ([that getFirstNonzeroDigit] > [val getFirstNonzeroDigit]) {
      return [JavaMathLogical xorNegativeWithJavaMathBigInteger:that withJavaMathBigInteger:val];
    }
    else {
      return [JavaMathLogical xorNegativeWithJavaMathBigInteger:val withJavaMathBigInteger:that];
    }
  }
}

+ (JavaMathBigInteger *)xorPositiveWithJavaMathBigInteger:(JavaMathBigInteger *)longer
                                   withJavaMathBigInteger:(JavaMathBigInteger *)shorter {
  int resLength = ((JavaMathBigInteger *) nil_chk(longer))->numberLength_;
  IOSIntArray *resDigits = [IOSIntArray arrayWithLength:resLength];
  int i = [JavaLangMath minWithInt:[longer getFirstNonzeroDigit] withInt:[((JavaMathBigInteger *) nil_chk(shorter)) getFirstNonzeroDigit]];
  for (; i < shorter->numberLength_; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(longer->digits_)) intAtIndex:i] ^ [shorter->digits_ intAtIndex:i];
  }
  for (; i < longer->numberLength_; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(longer->digits_)) intAtIndex:i];
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:1 withInt:resLength withIntArray:resDigits] autorelease];
  [result cutOffLeadingZeroes];
  return result;
}

+ (JavaMathBigInteger *)xorNegativeWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                   withJavaMathBigInteger:(JavaMathBigInteger *)that {
  int resLength = [JavaLangMath maxWithInt:((JavaMathBigInteger *) nil_chk(val))->numberLength_ withInt:((JavaMathBigInteger *) nil_chk(that))->numberLength_];
  IOSIntArray *resDigits = [IOSIntArray arrayWithLength:resLength];
  int iVal = [val getFirstNonzeroDigit];
  int iThat = [that getFirstNonzeroDigit];
  int i = iThat;
  int limit;
  if (iVal == iThat) {
    (*[resDigits intRefAtIndex:i]) = -[((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:i] ^ -[that->digits_ intAtIndex:i];
  }
  else {
    (*[resDigits intRefAtIndex:i]) = -[((IOSIntArray *) nil_chk(that->digits_)) intAtIndex:i];
    limit = [JavaLangMath minWithInt:that->numberLength_ withInt:iVal];
    for (i++; i < limit; i++) {
      (*[resDigits intRefAtIndex:i]) = ~[that->digits_ intAtIndex:i];
    }
    if (i == that->numberLength_) {
      for (; i < iVal; i++) {
        (*[resDigits intRefAtIndex:i]) = -1;
      }
      (*[resDigits intRefAtIndex:i]) = [val->digits_ intAtIndex:i] - 1;
    }
    else {
      (*[resDigits intRefAtIndex:i]) = -[val->digits_ intAtIndex:i] ^ ~[that->digits_ intAtIndex:i];
    }
  }
  limit = [JavaLangMath minWithInt:val->numberLength_ withInt:that->numberLength_];
  for (i++; i < limit; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:i] ^ [that->digits_ intAtIndex:i];
  }
  for (; i < val->numberLength_; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(val->digits_)) intAtIndex:i];
  }
  for (; i < that->numberLength_; i++) {
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(that->digits_)) intAtIndex:i];
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:1 withInt:resLength withIntArray:resDigits] autorelease];
  [result cutOffLeadingZeroes];
  return result;
}

+ (JavaMathBigInteger *)xorDiffSignsWithJavaMathBigInteger:(JavaMathBigInteger *)positive
                                    withJavaMathBigInteger:(JavaMathBigInteger *)negative {
  int resLength = [JavaLangMath maxWithInt:((JavaMathBigInteger *) nil_chk(negative))->numberLength_ withInt:((JavaMathBigInteger *) nil_chk(positive))->numberLength_];
  IOSIntArray *resDigits;
  int iNeg = [negative getFirstNonzeroDigit];
  int iPos = [positive getFirstNonzeroDigit];
  int i;
  int limit;
  if (iNeg < iPos) {
    resDigits = [IOSIntArray arrayWithLength:resLength];
    i = iNeg;
    (*[resDigits intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(negative->digits_)) intAtIndex:i];
    limit = [JavaLangMath minWithInt:negative->numberLength_ withInt:iPos];
    for (i++; i < limit; i++) {
      (*[resDigits intRefAtIndex:i]) = [negative->digits_ intAtIndex:i];
    }
    if (i == negative->numberLength_) {
      for (; i < positive->numberLength_; i++) {
        (*[resDigits intRefAtIndex:i]) = [positive->digits_ intAtIndex:i];
      }
    }
  }
  else if (iPos < iNeg) {
    resDigits = [IOSIntArray arrayWithLength:resLength];
    i = iPos;
    (*[resDigits intRefAtIndex:i]) = -[((IOSIntArray *) nil_chk(positive->digits_)) intAtIndex:i];
    limit = [JavaLangMath minWithInt:positive->numberLength_ withInt:iNeg];
    for (i++; i < limit; i++) {
      (*[resDigits intRefAtIndex:i]) = ~[positive->digits_ intAtIndex:i];
    }
    if (i == iNeg) {
      (*[resDigits intRefAtIndex:i]) = ~([positive->digits_ intAtIndex:i] ^ -[negative->digits_ intAtIndex:i]);
      i++;
    }
    else {
      for (; i < iNeg; i++) {
        (*[resDigits intRefAtIndex:i]) = -1;
      }
      for (; i < negative->numberLength_; i++) {
        (*[resDigits intRefAtIndex:i]) = [negative->digits_ intAtIndex:i];
      }
    }
  }
  else {
    int digit;
    i = iNeg;
    digit = [((IOSIntArray *) nil_chk(positive->digits_)) intAtIndex:i] ^ -[negative->digits_ intAtIndex:i];
    if (digit == 0) {
      limit = [JavaLangMath minWithInt:positive->numberLength_ withInt:negative->numberLength_];
      for (i++; i < limit && (digit = [positive->digits_ intAtIndex:i] ^ ~[negative->digits_ intAtIndex:i]) == 0; i++) ;
      if (digit == 0) {
        for (; i < positive->numberLength_ && (digit = ~[positive->digits_ intAtIndex:i]) == 0; i++) ;
        for (; i < negative->numberLength_ && (digit = ~[negative->digits_ intAtIndex:i]) == 0; i++) ;
        if (digit == 0) {
          resLength = resLength + 1;
          resDigits = [IOSIntArray arrayWithLength:resLength];
          (*[resDigits intRefAtIndex:resLength - 1]) = 1;
          JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:-1 withInt:resLength withIntArray:resDigits] autorelease];
          return result;
        }
      }
    }
    resDigits = [IOSIntArray arrayWithLength:resLength];
    (*[resDigits intRefAtIndex:i]) = -digit;
    i++;
  }
  limit = [JavaLangMath minWithInt:negative->numberLength_ withInt:positive->numberLength_];
  for (; i < limit; i++) {
    (*[((IOSIntArray *) nil_chk(resDigits)) intRefAtIndex:i]) = ~(~[((IOSIntArray *) nil_chk(negative->digits_)) intAtIndex:i] ^ [positive->digits_ intAtIndex:i]);
  }
  for (; i < positive->numberLength_; i++) {
    (*[((IOSIntArray *) nil_chk(resDigits)) intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(positive->digits_)) intAtIndex:i];
  }
  for (; i < negative->numberLength_; i++) {
    (*[((IOSIntArray *) nil_chk(resDigits)) intRefAtIndex:i]) = [((IOSIntArray *) nil_chk(negative->digits_)) intAtIndex:i];
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:-1 withInt:resLength withIntArray:resDigits] autorelease];
  [result cutOffLeadingZeroes];
  return result;
}

@end
