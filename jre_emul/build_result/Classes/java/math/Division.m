//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/math/src/main/java/java/math/Division.java
//
//  Created by retechretech on 13-4-19.
//

#import "IOSIntArray.h"
#import "IOSObjectArray.h"
#import "java/lang/ArithmeticException.h"
#import "java/lang/Integer.h"
#import "java/lang/Long.h"
#import "java/lang/Math.h"
#import "java/lang/System.h"
#import "java/math/BigInteger.h"
#import "java/math/BitLevel.h"
#import "java/math/Division.h"
#import "java/math/Elementary.h"
#import "java/math/Multiplication.h"

@implementation JavaMathDivision

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (IOSIntArray *)divideWithJavaLangIntegerArray:(IOSIntArray *)quot
                                        withInt:(int)quotLength
                       withJavaLangIntegerArray:(IOSIntArray *)a
                                        withInt:(int)aLength
                       withJavaLangIntegerArray:(IOSIntArray *)b
                                        withInt:(int)bLength {
  IOSIntArray *normA = [[[IOSIntArray alloc] initWithLength:aLength + 1] autorelease];
  IOSIntArray *normB = [[[IOSIntArray alloc] initWithLength:bLength + 1] autorelease];
  int normBLength = bLength;
  int divisorShift = [JavaLangInteger numberOfLeadingZerosWithInt:[((IOSIntArray *) NIL_CHK(b)) intAtIndex:bLength - 1]];
  if (divisorShift != 0) {
    [JavaMathBitLevel shiftLeftWithJavaLangIntegerArray:normB withJavaLangIntegerArray:b withInt:0 withInt:divisorShift];
    [JavaMathBitLevel shiftLeftWithJavaLangIntegerArray:normA withJavaLangIntegerArray:a withInt:0 withInt:divisorShift];
  }
  else {
    [JavaLangSystem arraycopyWithId:a withInt:0 withId:normA withInt:0 withInt:aLength];
    [JavaLangSystem arraycopyWithId:b withInt:0 withId:normB withInt:0 withInt:bLength];
  }
  int firstDivisorDigit = [((IOSIntArray *) NIL_CHK(normB)) intAtIndex:normBLength - 1];
  int i = quotLength - 1;
  int j = aLength;
  while (i >= 0) {
    int guessDigit = 0;
    if ([((IOSIntArray *) NIL_CHK(normA)) intAtIndex:j] == firstDivisorDigit) {
      guessDigit = -1;
    }
    else {
      long long int product = ((([((IOSIntArray *) NIL_CHK(normA)) intAtIndex:j] & (long long) 0xffffffffLL) << 32) + ([((IOSIntArray *) NIL_CHK(normA)) intAtIndex:j - 1] & (long long) 0xffffffffLL));
      long long int res = [JavaMathDivision divideLongByIntWithLongInt:product withInt:firstDivisorDigit];
      guessDigit = (int) res;
      int rem = (int) (res >> 32);
      if (guessDigit != 0) {
        long long int leftHand = 0;
        long long int rightHand = 0;
        BOOL rOverflowed = NO;
        guessDigit++;
        do {
          guessDigit--;
          if (rOverflowed) {
            break;
          }
          leftHand = (guessDigit & (long long) 0xffffffffLL) * ([((IOSIntArray *) NIL_CHK(normB)) intAtIndex:normBLength - 2] & (long long) 0xffffffffLL);
          rightHand = ((long long int) rem << 32) + ([((IOSIntArray *) NIL_CHK(normA)) intAtIndex:j - 2] & (long long) 0xffffffffLL);
          long long int longR = (rem & (long long) 0xffffffffLL) + (firstDivisorDigit & (long long) 0xffffffffLL);
          if ([JavaLangInteger numberOfLeadingZerosWithInt:(int) ((long long) (((unsigned long long) longR) >> 32))] < 32) {
            rOverflowed = YES;
          }
          else {
            rem = (int) longR;
          }
        }
        while (((leftHand ^ -0x7fffffffffffffffLL - 1) > (rightHand ^ -0x7fffffffffffffffLL - 1)));
      }
    }
    if (guessDigit != 0) {
      int borrow = [JavaMathDivision multiplyAndSubtractWithJavaLangIntegerArray:normA withInt:j - normBLength withJavaLangIntegerArray:normB withInt:normBLength withInt:guessDigit];
      if (borrow != 0) {
        guessDigit--;
        long long int carry = 0;
        for (int k = 0; k < normBLength; k++) {
          carry += ([((IOSIntArray *) NIL_CHK(normA)) intAtIndex:j - normBLength + k] & (long long) 0xffffffffLL) + ([((IOSIntArray *) NIL_CHK(normB)) intAtIndex:k] & (long long) 0xffffffffLL);
          [((IOSIntArray *) NIL_CHK(normA)) replaceIntAtIndex:j - normBLength + k withInt:(int) carry];
          carry = (long long) (((unsigned long long) carry) >> 32);
        }
      }
    }
    if (quot != nil) {
      [quot replaceIntAtIndex:i withInt:guessDigit];
    }
    j--;
    i--;
  }
  if (divisorShift != 0) {
    [JavaMathBitLevel shiftRightWithJavaLangIntegerArray:normB withInt:normBLength withJavaLangIntegerArray:normA withInt:0 withInt:divisorShift];
    return normB;
  }
  [JavaLangSystem arraycopyWithId:normA withInt:0 withId:normB withInt:0 withInt:bLength];
  return normA;
}

+ (int)divideArrayByIntWithJavaLangIntegerArray:(IOSIntArray *)dest
                       withJavaLangIntegerArray:(IOSIntArray *)src
                                        withInt:(int)srcLength
                                        withInt:(int)divisor {
  long long int rem = 0;
  long long int bLong = divisor & (long long) 0xffffffffLL;
  for (int i = srcLength - 1; i >= 0; i--) {
    long long int temp = (rem << 32) | ([((IOSIntArray *) NIL_CHK(src)) intAtIndex:i] & (long long) 0xffffffffLL);
    long long int quot;
    if (temp >= 0) {
      quot = (temp / bLong);
      rem = (temp % bLong);
    }
    else {
      long long int aPos = (long long) (((unsigned long long) temp) >> 1);
      long long int bPos = (int) (((unsigned int) divisor) >> 1);
      quot = aPos / bPos;
      rem = aPos % bPos;
      rem = (rem << 1) + (temp & 1);
      if ((divisor & 1) != 0) {
        if (quot <= rem) {
          rem -= quot;
        }
        else {
          if (quot - rem <= bLong) {
            rem += bLong - quot;
            quot -= 1;
          }
          else {
            rem += (bLong << 1) - quot;
            quot -= 2;
          }
        }
      }
    }
    [((IOSIntArray *) NIL_CHK(dest)) replaceIntAtIndex:i withInt:(int) (quot & (long long) 0xffffffffLL)];
  }
  return (int) rem;
}

+ (int)remainderArrayByIntWithJavaLangIntegerArray:(IOSIntArray *)src
                                           withInt:(int)srcLength
                                           withInt:(int)divisor {
  long long int result = 0;
  for (int i = srcLength - 1; i >= 0; i--) {
    long long int temp = (result << 32) + ([((IOSIntArray *) NIL_CHK(src)) intAtIndex:i] & (long long) 0xffffffffLL);
    long long int res = [JavaMathDivision divideLongByIntWithLongInt:temp withInt:divisor];
    result = (int) (res >> 32);
  }
  return (int) result;
}

+ (int)remainderWithJavaMathBigInteger:(JavaMathBigInteger *)dividend
                               withInt:(int)divisor {
  return [JavaMathDivision remainderArrayByIntWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(dividend)).digits withInt:((JavaMathBigInteger *) NIL_CHK(dividend)).numberLength withInt:divisor];
}

+ (long long int)divideLongByIntWithLongInt:(long long int)a
                                    withInt:(int)b {
  long long int quot;
  long long int rem;
  long long int bLong = b & (long long) 0xffffffffLL;
  if (a >= 0) {
    quot = (a / bLong);
    rem = (a % bLong);
  }
  else {
    long long int aPos = (long long) (((unsigned long long) a) >> 1);
    long long int bPos = (int) (((unsigned int) b) >> 1);
    quot = aPos / bPos;
    rem = aPos % bPos;
    rem = (rem << 1) + (a & 1);
    if ((b & 1) != 0) {
      if (quot <= rem) {
        rem -= quot;
      }
      else {
        if (quot - rem <= bLong) {
          rem += bLong - quot;
          quot -= 1;
        }
        else {
          rem += (bLong << 1) - quot;
          quot -= 2;
        }
      }
    }
  }
  return (rem << 32) | (quot & (long long) 0xffffffffLL);
}

+ (IOSObjectArray *)divideAndRemainderByIntegerWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                                              withInt:(int)divisor
                                                              withInt:(int)divisorSign {
  IOSIntArray *valDigits = ((JavaMathBigInteger *) NIL_CHK(val)).digits;
  int valLen = ((JavaMathBigInteger *) NIL_CHK(val)).numberLength;
  int valSign = ((JavaMathBigInteger *) NIL_CHK(val)).sign;
  if (valLen == 1) {
    long long int a = ([((IOSIntArray *) NIL_CHK(valDigits)) intAtIndex:0] & (long long) 0xffffffffLL);
    long long int b = (divisor & (long long) 0xffffffffLL);
    long long int quo = a / b;
    long long int rem = a % b;
    if (valSign != divisorSign) {
      quo = -quo;
    }
    if (valSign < 0) {
      rem = -rem;
    }
    return [IOSObjectArray arrayWithObjects:(id[]){ [JavaMathBigInteger valueOfWithLongInt:quo], [JavaMathBigInteger valueOfWithLongInt:rem] } count:2 type:[IOSClass classWithClass:[JavaMathBigInteger class]]];
  }
  int quotientLength = valLen;
  int quotientSign = ((valSign == divisorSign) ? 1 : -1);
  IOSIntArray *quotientDigits = [[[IOSIntArray alloc] initWithLength:quotientLength] autorelease];
  IOSIntArray *remainderDigits;
  remainderDigits = [IOSIntArray arrayWithInts:(int[]){ [JavaMathDivision divideArrayByIntWithJavaLangIntegerArray:quotientDigits withJavaLangIntegerArray:valDigits withInt:valLen withInt:divisor] } count:1];
  JavaMathBigInteger *result0 = [[[JavaMathBigInteger alloc] initWithInt:quotientSign withInt:quotientLength withJavaLangIntegerArray:quotientDigits] autorelease];
  JavaMathBigInteger *result1 = [[[JavaMathBigInteger alloc] initWithInt:valSign withInt:1 withJavaLangIntegerArray:remainderDigits] autorelease];
  [((JavaMathBigInteger *) NIL_CHK(result0)) cutOffLeadingZeroes];
  [((JavaMathBigInteger *) NIL_CHK(result1)) cutOffLeadingZeroes];
  return [IOSObjectArray arrayWithObjects:(id[]){ result0, result1 } count:2 type:[IOSClass classWithClass:[JavaMathBigInteger class]]];
}

+ (int)multiplyAndSubtractWithJavaLangIntegerArray:(IOSIntArray *)a
                                           withInt:(int)start
                          withJavaLangIntegerArray:(IOSIntArray *)b
                                           withInt:(int)bLen
                                           withInt:(int)c {
  long long int carry0 = 0;
  long long int carry1 = 0;
  for (int i = 0; i < bLen; i++) {
    carry0 = [JavaMathMultiplication unsignedMultAddAddWithInt:[((IOSIntArray *) NIL_CHK(b)) intAtIndex:i] withInt:c withInt:(int) carry0 withInt:0];
    carry1 = ([((IOSIntArray *) NIL_CHK(a)) intAtIndex:start + i] & (long long) 0xffffffffLL) - (carry0 & (long long) 0xffffffffLL) + carry1;
    [((IOSIntArray *) NIL_CHK(a)) replaceIntAtIndex:start + i withInt:(int) carry1];
    carry1 >>= 32;
    carry0 = (long long) (((unsigned long long) carry0) >> 32);
  }
  carry1 = ([((IOSIntArray *) NIL_CHK(a)) intAtIndex:start + bLen] & (long long) 0xffffffffLL) - carry0 + carry1;
  [((IOSIntArray *) NIL_CHK(a)) replaceIntAtIndex:start + bLen withInt:(int) carry1];
  return (int) (carry1 >> 32);
}

+ (JavaMathBigInteger *)gcdBinaryWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                                 withJavaMathBigInteger:(JavaMathBigInteger *)op2 {
  int lsb1 = [((JavaMathBigInteger *) NIL_CHK(op1)) getLowestSetBit];
  int lsb2 = [((JavaMathBigInteger *) NIL_CHK(op2)) getLowestSetBit];
  int pow2Count = [JavaLangMath minWithInt:lsb1 withInt:lsb2];
  [JavaMathBitLevel inplaceShiftRightWithJavaMathBigInteger:op1 withInt:lsb1];
  [JavaMathBitLevel inplaceShiftRightWithJavaMathBigInteger:op2 withInt:lsb2];
  JavaMathBigInteger *swap;
  if ([((JavaMathBigInteger *) NIL_CHK(op1)) compareToWithId:op2] == JavaMathBigInteger_GREATER) {
    swap = op1;
    op1 = op2;
    op2 = swap;
  }
  do {
    if ((((JavaMathBigInteger *) NIL_CHK(op2)).numberLength == 1) || ((((JavaMathBigInteger *) NIL_CHK(op2)).numberLength == 2) && ([((IOSIntArray *) NIL_CHK(op2.digits)) intAtIndex:1] > 0))) {
      op2 = [JavaMathBigInteger valueOfWithLongInt:[JavaMathDivision gcdBinaryWithLongInt:[((JavaMathBigInteger *) NIL_CHK(op1)) longValue] withLongInt:[((JavaMathBigInteger *) NIL_CHK(op2)) longValue]]];
      break;
    }
    if (((JavaMathBigInteger *) NIL_CHK(op2)).numberLength > ((JavaMathBigInteger *) NIL_CHK(op1)).numberLength * 1.2) {
      op2 = [((JavaMathBigInteger *) NIL_CHK(op2)) remainderWithJavaMathBigInteger:op1];
      if ([((JavaMathBigInteger *) NIL_CHK(op2)) signum] != 0) {
        [JavaMathBitLevel inplaceShiftRightWithJavaMathBigInteger:op2 withInt:[((JavaMathBigInteger *) NIL_CHK(op2)) getLowestSetBit]];
      }
    }
    else {
      do {
        [JavaMathElementary inplaceSubtractWithJavaMathBigInteger:op2 withJavaMathBigInteger:op1];
        [JavaMathBitLevel inplaceShiftRightWithJavaMathBigInteger:op2 withInt:[((JavaMathBigInteger *) NIL_CHK(op2)) getLowestSetBit]];
      }
      while ([((JavaMathBigInteger *) NIL_CHK(op2)) compareToWithId:op1] >= JavaMathBigInteger_EQUALS);
    }
    swap = op2;
    op2 = op1;
    op1 = swap;
  }
  while (((JavaMathBigInteger *) NIL_CHK(op1)).sign != 0);
  return [((JavaMathBigInteger *) NIL_CHK(op2)) shiftLeftWithInt:pow2Count];
}

+ (long long int)gcdBinaryWithLongInt:(long long int)op1
                          withLongInt:(long long int)op2 {
  int lsb1 = [JavaLangLong numberOfTrailingZerosWithLongInt:op1];
  int lsb2 = [JavaLangLong numberOfTrailingZerosWithLongInt:op2];
  int pow2Count = [JavaLangMath minWithInt:lsb1 withInt:lsb2];
  if (lsb1 != 0) {
    op1 = (long long) (((unsigned long long) op1) >> lsb1);
  }
  if (lsb2 != 0) {
    op2 = (long long) (((unsigned long long) op2) >> lsb2);
  }
  do {
    if (op1 >= op2) {
      op1 -= op2;
      op1 = (long long) (((unsigned long long) op1) >> [JavaLangLong numberOfTrailingZerosWithLongInt:op1]);
    }
    else {
      op2 -= op1;
      op2 = (long long) (((unsigned long long) op2) >> [JavaLangLong numberOfTrailingZerosWithLongInt:op2]);
    }
  }
  while (op1 != 0);
  return (op2 << pow2Count);
}

+ (JavaMathBigInteger *)modInverseMontgomeryWithJavaMathBigInteger:(JavaMathBigInteger *)a
                                            withJavaMathBigInteger:(JavaMathBigInteger *)p {
  if (((JavaMathBigInteger *) NIL_CHK(a)).sign == 0) {
    @throw [[[JavaLangArithmeticException alloc] initWithNSString:@"BigInteger not invertible"] autorelease];
  }
  if (![((JavaMathBigInteger *) NIL_CHK(p)) testBitWithInt:0]) {
    return [JavaMathDivision modInverseHarsWithJavaMathBigInteger:a withJavaMathBigInteger:p];
  }
  int m = ((JavaMathBigInteger *) NIL_CHK(p)).numberLength * 32;
  JavaMathBigInteger *u, *v, *r, *s;
  u = [((JavaMathBigInteger *) NIL_CHK(p)) copy__];
  v = [((JavaMathBigInteger *) NIL_CHK(a)) copy__];
  int max = [JavaLangMath maxWithInt:((JavaMathBigInteger *) NIL_CHK(v)).numberLength withInt:((JavaMathBigInteger *) NIL_CHK(u)).numberLength];
  r = [[[JavaMathBigInteger alloc] initWithInt:1 withInt:1 withJavaLangIntegerArray:[[[IOSIntArray alloc] initWithLength:max + 1] autorelease]] autorelease];
  s = [[[JavaMathBigInteger alloc] initWithInt:1 withInt:1 withJavaLangIntegerArray:[[[IOSIntArray alloc] initWithLength:max + 1] autorelease]] autorelease];
  [((IOSIntArray *) NIL_CHK(s.digits)) replaceIntAtIndex:0 withInt:1];
  int k = 0;
  int lsbu = [((JavaMathBigInteger *) NIL_CHK(u)) getLowestSetBit];
  int lsbv = [((JavaMathBigInteger *) NIL_CHK(v)) getLowestSetBit];
  int toShift;
  if (lsbu > lsbv) {
    [JavaMathBitLevel inplaceShiftRightWithJavaMathBigInteger:u withInt:lsbu];
    [JavaMathBitLevel inplaceShiftRightWithJavaMathBigInteger:v withInt:lsbv];
    [JavaMathBitLevel inplaceShiftLeftWithJavaMathBigInteger:r withInt:lsbv];
    k += lsbu - lsbv;
  }
  else {
    [JavaMathBitLevel inplaceShiftRightWithJavaMathBigInteger:u withInt:lsbu];
    [JavaMathBitLevel inplaceShiftRightWithJavaMathBigInteger:v withInt:lsbv];
    [JavaMathBitLevel inplaceShiftLeftWithJavaMathBigInteger:s withInt:lsbu];
    k += lsbv - lsbu;
  }
  ((JavaMathBigInteger *) NIL_CHK(r)).sign = 1;
  while ([((JavaMathBigInteger *) NIL_CHK(v)) signum] > 0) {
    while ([((JavaMathBigInteger *) NIL_CHK(u)) compareToWithId:v] > JavaMathBigInteger_EQUALS) {
      [JavaMathElementary inplaceSubtractWithJavaMathBigInteger:u withJavaMathBigInteger:v];
      toShift = [((JavaMathBigInteger *) NIL_CHK(u)) getLowestSetBit];
      [JavaMathBitLevel inplaceShiftRightWithJavaMathBigInteger:u withInt:toShift];
      [JavaMathElementary inplaceAddWithJavaMathBigInteger:r withJavaMathBigInteger:s];
      [JavaMathBitLevel inplaceShiftLeftWithJavaMathBigInteger:s withInt:toShift];
      k += toShift;
    }
    while ([((JavaMathBigInteger *) NIL_CHK(u)) compareToWithId:v] <= JavaMathBigInteger_EQUALS) {
      [JavaMathElementary inplaceSubtractWithJavaMathBigInteger:v withJavaMathBigInteger:u];
      if ([((JavaMathBigInteger *) NIL_CHK(v)) signum] == 0) break;
      toShift = [((JavaMathBigInteger *) NIL_CHK(v)) getLowestSetBit];
      [JavaMathBitLevel inplaceShiftRightWithJavaMathBigInteger:v withInt:toShift];
      [JavaMathElementary inplaceAddWithJavaMathBigInteger:s withJavaMathBigInteger:r];
      [JavaMathBitLevel inplaceShiftLeftWithJavaMathBigInteger:r withInt:toShift];
      k += toShift;
    }
  }
  if (![((JavaMathBigInteger *) NIL_CHK(u)) isOne]) {
    @throw [[[JavaLangArithmeticException alloc] initWithNSString:@"BigInteger not invertible"] autorelease];
  }
  if ([((JavaMathBigInteger *) NIL_CHK(r)) compareToWithId:p] >= JavaMathBigInteger_EQUALS) {
    [JavaMathElementary inplaceSubtractWithJavaMathBigInteger:r withJavaMathBigInteger:p];
  }
  r = [((JavaMathBigInteger *) NIL_CHK(p)) subtractWithJavaMathBigInteger:r];
  int n1 = [JavaMathDivision calcNWithJavaMathBigInteger:p];
  if (k > m) {
    r = [JavaMathDivision monProWithJavaMathBigInteger:r withJavaMathBigInteger:[JavaMathBigInteger ONE] withJavaMathBigInteger:p withInt:n1];
    k = k - m;
  }
  r = [JavaMathDivision monProWithJavaMathBigInteger:r withJavaMathBigInteger:[JavaMathBigInteger getPowerOfTwoWithInt:m - k] withJavaMathBigInteger:p withInt:n1];
  return r;
}

+ (int)calcNWithJavaMathBigInteger:(JavaMathBigInteger *)a {
  long long int m0 = [((IOSIntArray *) NIL_CHK(a.digits)) intAtIndex:0] & (long long) 0xFFFFFFFFLL;
  long long int n2 = 1LL;
  long long int powerOfTwo = 2LL;
  do {
    if (((m0 * n2) & powerOfTwo) != 0) {
      n2 |= powerOfTwo;
    }
    powerOfTwo <<= 1;
  }
  while (powerOfTwo < (long long) 0x100000000LL);
  n2 = -n2;
  return (int) (n2 & (long long) 0xFFFFFFFFLL);
}

+ (JavaMathBigInteger *)squareAndMultiplyWithJavaMathBigInteger:(JavaMathBigInteger *)x2
                                         withJavaMathBigInteger:(JavaMathBigInteger *)a2
                                         withJavaMathBigInteger:(JavaMathBigInteger *)exponent
                                         withJavaMathBigInteger:(JavaMathBigInteger *)modulus
                                                        withInt:(int)n2 {
  JavaMathBigInteger *res = x2;
  for (int i = [((JavaMathBigInteger *) NIL_CHK(exponent)) bitLength] - 1; i >= 0; i--) {
    res = [JavaMathDivision monProWithJavaMathBigInteger:res withJavaMathBigInteger:res withJavaMathBigInteger:modulus withInt:n2];
    if ([JavaMathBitLevel testBitWithJavaMathBigInteger:exponent withInt:i]) {
      res = [JavaMathDivision monProWithJavaMathBigInteger:res withJavaMathBigInteger:a2 withJavaMathBigInteger:modulus withInt:n2];
    }
  }
  return res;
}

+ (JavaMathBigInteger *)modInverseHarsWithJavaMathBigInteger:(JavaMathBigInteger *)a
                                      withJavaMathBigInteger:(JavaMathBigInteger *)m {
  JavaMathBigInteger *u, *v, *r, *s, *temp;
  if ([((JavaMathBigInteger *) NIL_CHK(a)) compareToWithId:m] == JavaMathBigInteger_LESS) {
    u = m;
    v = a;
    r = [JavaMathBigInteger ZERO];
    s = [JavaMathBigInteger ONE];
  }
  else {
    v = m;
    u = a;
    s = [JavaMathBigInteger ZERO];
    r = [JavaMathBigInteger ONE];
  }
  int uLen = [((JavaMathBigInteger *) NIL_CHK(u)) bitLength];
  int vLen = [((JavaMathBigInteger *) NIL_CHK(v)) bitLength];
  int f = uLen - vLen;
  while (vLen > 1) {
    if (((JavaMathBigInteger *) NIL_CHK(u)).sign == ((JavaMathBigInteger *) NIL_CHK(v)).sign) {
      u = [((JavaMathBigInteger *) NIL_CHK(u)) subtractWithJavaMathBigInteger:[((JavaMathBigInteger *) NIL_CHK(v)) shiftLeftWithInt:f]];
      r = [((JavaMathBigInteger *) NIL_CHK(r)) subtractWithJavaMathBigInteger:[((JavaMathBigInteger *) NIL_CHK(s)) shiftLeftWithInt:f]];
    }
    else {
      u = [((JavaMathBigInteger *) NIL_CHK(u)) addWithJavaMathBigInteger:[((JavaMathBigInteger *) NIL_CHK(v)) shiftLeftWithInt:f]];
      r = [((JavaMathBigInteger *) NIL_CHK(r)) addWithJavaMathBigInteger:[((JavaMathBigInteger *) NIL_CHK(s)) shiftLeftWithInt:f]];
    }
    uLen = [[((JavaMathBigInteger *) NIL_CHK(u)) abs] bitLength];
    vLen = [[((JavaMathBigInteger *) NIL_CHK(v)) abs] bitLength];
    f = uLen - vLen;
    if (f < 0) {
      temp = u;
      u = v;
      v = temp;
      temp = r;
      r = s;
      s = temp;
      f = -f;
      vLen = uLen;
    }
  }
  if (((JavaMathBigInteger *) NIL_CHK(v)).sign == 0) {
    return [JavaMathBigInteger ZERO];
  }
  if (((JavaMathBigInteger *) NIL_CHK(v)).sign < 0) {
    s = [((JavaMathBigInteger *) NIL_CHK(s)) negate];
  }
  if ([((JavaMathBigInteger *) NIL_CHK(s)) compareToWithId:m] == JavaMathBigInteger_GREATER) {
    return [((JavaMathBigInteger *) NIL_CHK(s)) subtractWithJavaMathBigInteger:m];
  }
  if (((JavaMathBigInteger *) NIL_CHK(s)).sign < 0) {
    return [((JavaMathBigInteger *) NIL_CHK(s)) addWithJavaMathBigInteger:m];
  }
  return s;
}

+ (JavaMathBigInteger *)slidingWindowWithJavaMathBigInteger:(JavaMathBigInteger *)x2
                                     withJavaMathBigInteger:(JavaMathBigInteger *)a2
                                     withJavaMathBigInteger:(JavaMathBigInteger *)exponent
                                     withJavaMathBigInteger:(JavaMathBigInteger *)modulus
                                                    withInt:(int)n2 {
  IOSObjectArray *pows = [[[IOSObjectArray alloc] initWithLength:8 type:[IOSClass classWithClass:[JavaMathBigInteger class]]] autorelease];
  JavaMathBigInteger *res = x2;
  int lowexp;
  JavaMathBigInteger *x3;
  int acc3;
  [((IOSObjectArray *) NIL_CHK(pows)) replaceObjectAtIndex:0 withObject:a2];
  x3 = [JavaMathDivision monProWithJavaMathBigInteger:a2 withJavaMathBigInteger:a2 withJavaMathBigInteger:modulus withInt:n2];
  for (int i = 1; i <= 7; i++) {
    [((IOSObjectArray *) NIL_CHK(pows)) replaceObjectAtIndex:i withObject:[JavaMathDivision monProWithJavaMathBigInteger:((JavaMathBigInteger *) [((IOSObjectArray *) NIL_CHK(pows)) objectAtIndex:i - 1]) withJavaMathBigInteger:x3 withJavaMathBigInteger:modulus withInt:n2]];
  }
  for (int i = [((JavaMathBigInteger *) NIL_CHK(exponent)) bitLength] - 1; i >= 0; i--) {
    if ([JavaMathBitLevel testBitWithJavaMathBigInteger:exponent withInt:i]) {
      lowexp = 1;
      acc3 = i;
      for (int j = [JavaLangMath maxWithInt:i - 3 withInt:0]; j <= i - 1; j++) {
        if ([JavaMathBitLevel testBitWithJavaMathBigInteger:exponent withInt:j]) {
          if (j < acc3) {
            acc3 = j;
            lowexp = (lowexp << (i - j)) ^ 1;
          }
          else {
            lowexp = lowexp ^ (1 << (j - acc3));
          }
        }
      }
      for (int j = acc3; j <= i; j++) {
        res = [JavaMathDivision monProWithJavaMathBigInteger:res withJavaMathBigInteger:res withJavaMathBigInteger:modulus withInt:n2];
      }
      res = [JavaMathDivision monProWithJavaMathBigInteger:((JavaMathBigInteger *) [((IOSObjectArray *) NIL_CHK(pows)) objectAtIndex:(lowexp - 1) >> 1]) withJavaMathBigInteger:res withJavaMathBigInteger:modulus withInt:n2];
      i = acc3;
    }
    else {
      res = [JavaMathDivision monProWithJavaMathBigInteger:res withJavaMathBigInteger:res withJavaMathBigInteger:modulus withInt:n2];
    }
  }
  return res;
}

+ (JavaMathBigInteger *)oddModPowWithJavaMathBigInteger:(JavaMathBigInteger *)base
                                 withJavaMathBigInteger:(JavaMathBigInteger *)exponent
                                 withJavaMathBigInteger:(JavaMathBigInteger *)modulus {
  int k = (((JavaMathBigInteger *) NIL_CHK(modulus)).numberLength << 5);
  JavaMathBigInteger *a2 = [[((JavaMathBigInteger *) NIL_CHK(base)) shiftLeftWithInt:k] modWithJavaMathBigInteger:modulus];
  JavaMathBigInteger *x2 = [[JavaMathBigInteger getPowerOfTwoWithInt:k] modWithJavaMathBigInteger:modulus];
  JavaMathBigInteger *res;
  int n2 = [JavaMathDivision calcNWithJavaMathBigInteger:modulus];
  if (((JavaMathBigInteger *) NIL_CHK(modulus)).numberLength == 1) {
    res = [JavaMathDivision squareAndMultiplyWithJavaMathBigInteger:x2 withJavaMathBigInteger:a2 withJavaMathBigInteger:exponent withJavaMathBigInteger:modulus withInt:n2];
  }
  else {
    res = [JavaMathDivision slidingWindowWithJavaMathBigInteger:x2 withJavaMathBigInteger:a2 withJavaMathBigInteger:exponent withJavaMathBigInteger:modulus withInt:n2];
  }
  return [JavaMathDivision monProWithJavaMathBigInteger:res withJavaMathBigInteger:[JavaMathBigInteger ONE] withJavaMathBigInteger:modulus withInt:n2];
}

+ (JavaMathBigInteger *)evenModPowWithJavaMathBigInteger:(JavaMathBigInteger *)base
                                  withJavaMathBigInteger:(JavaMathBigInteger *)exponent
                                  withJavaMathBigInteger:(JavaMathBigInteger *)modulus {
  int j = [((JavaMathBigInteger *) NIL_CHK(modulus)) getLowestSetBit];
  JavaMathBigInteger *q = [((JavaMathBigInteger *) NIL_CHK(modulus)) shiftRightWithInt:j];
  JavaMathBigInteger *x1 = [JavaMathDivision oddModPowWithJavaMathBigInteger:base withJavaMathBigInteger:exponent withJavaMathBigInteger:q];
  JavaMathBigInteger *x2 = [JavaMathDivision pow2ModPowWithJavaMathBigInteger:base withJavaMathBigInteger:exponent withInt:j];
  JavaMathBigInteger *qInv = [JavaMathDivision modPow2InverseWithJavaMathBigInteger:q withInt:j];
  JavaMathBigInteger *y = [([((JavaMathBigInteger *) NIL_CHK(x2)) subtractWithJavaMathBigInteger:x1]) multiplyWithJavaMathBigInteger:qInv];
  [JavaMathDivision inplaceModPow2WithJavaMathBigInteger:y withInt:j];
  if (((JavaMathBigInteger *) NIL_CHK(y)).sign < 0) {
    y = [((JavaMathBigInteger *) NIL_CHK(y)) addWithJavaMathBigInteger:[JavaMathBigInteger getPowerOfTwoWithInt:j]];
  }
  return [((JavaMathBigInteger *) NIL_CHK(x1)) addWithJavaMathBigInteger:[((JavaMathBigInteger *) NIL_CHK(q)) multiplyWithJavaMathBigInteger:y]];
}

+ (JavaMathBigInteger *)pow2ModPowWithJavaMathBigInteger:(JavaMathBigInteger *)base
                                  withJavaMathBigInteger:(JavaMathBigInteger *)exponent
                                                 withInt:(int)j {
  JavaMathBigInteger *res = [JavaMathBigInteger ONE];
  JavaMathBigInteger *e = [((JavaMathBigInteger *) NIL_CHK(exponent)) copy__];
  JavaMathBigInteger *baseMod2toN = [((JavaMathBigInteger *) NIL_CHK(base)) copy__];
  JavaMathBigInteger *res2;
  if ([((JavaMathBigInteger *) NIL_CHK(base)) testBitWithInt:0]) {
    [JavaMathDivision inplaceModPow2WithJavaMathBigInteger:e withInt:j - 1];
  }
  [JavaMathDivision inplaceModPow2WithJavaMathBigInteger:baseMod2toN withInt:j];
  for (int i = [((JavaMathBigInteger *) NIL_CHK(e)) bitLength] - 1; i >= 0; i--) {
    res2 = [((JavaMathBigInteger *) NIL_CHK(res)) copy__];
    [JavaMathDivision inplaceModPow2WithJavaMathBigInteger:res2 withInt:j];
    res = [((JavaMathBigInteger *) NIL_CHK(res)) multiplyWithJavaMathBigInteger:res2];
    if ([JavaMathBitLevel testBitWithJavaMathBigInteger:e withInt:i]) {
      res = [((JavaMathBigInteger *) NIL_CHK(res)) multiplyWithJavaMathBigInteger:baseMod2toN];
      [JavaMathDivision inplaceModPow2WithJavaMathBigInteger:res withInt:j];
    }
  }
  [JavaMathDivision inplaceModPow2WithJavaMathBigInteger:res withInt:j];
  return res;
}

+ (void)monReductionWithJavaLangIntegerArray:(IOSIntArray *)res
                      withJavaMathBigInteger:(JavaMathBigInteger *)modulus
                                     withInt:(int)n2 {
  IOSIntArray *modulus_digits = ((JavaMathBigInteger *) NIL_CHK(modulus)).digits;
  int modulusLen = ((JavaMathBigInteger *) NIL_CHK(modulus)).numberLength;
  long long int outerCarry = 0;
  for (int i = 0; i < modulusLen; i++) {
    long long int innnerCarry = 0;
    int m = (int) [JavaMathMultiplication unsignedMultAddAddWithInt:[((IOSIntArray *) NIL_CHK(res)) intAtIndex:i] withInt:n2 withInt:0 withInt:0];
    for (int j = 0; j < modulusLen; j++) {
      innnerCarry = [JavaMathMultiplication unsignedMultAddAddWithInt:m withInt:[((IOSIntArray *) NIL_CHK(modulus_digits)) intAtIndex:j] withInt:[((IOSIntArray *) NIL_CHK(res)) intAtIndex:i + j] withInt:(int) innnerCarry];
      [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:i + j withInt:(int) innnerCarry];
      innnerCarry = (long long) (((unsigned long long) innnerCarry) >> 32);
    }
    outerCarry += ([((IOSIntArray *) NIL_CHK(res)) intAtIndex:i + modulusLen] & (long long) 0xFFFFFFFFLL) + innnerCarry;
    [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:i + modulusLen withInt:(int) outerCarry];
    outerCarry = (long long) (((unsigned long long) outerCarry) >> 32);
  }
  [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:modulusLen << 1 withInt:(int) outerCarry];
  for (int j = 0; j < modulusLen + 1; j++) {
    [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:j withInt:[((IOSIntArray *) NIL_CHK(res)) intAtIndex:j + modulusLen]];
  }
}

+ (JavaMathBigInteger *)monProWithJavaMathBigInteger:(JavaMathBigInteger *)a
                              withJavaMathBigInteger:(JavaMathBigInteger *)b
                              withJavaMathBigInteger:(JavaMathBigInteger *)modulus
                                             withInt:(int)n2 {
  int modulusLen = ((JavaMathBigInteger *) NIL_CHK(modulus)).numberLength;
  IOSIntArray *res = [[[IOSIntArray alloc] initWithLength:(modulusLen << 1) + 1] autorelease];
  [JavaMathMultiplication multArraysPAPWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(a)).digits withInt:[JavaLangMath minWithInt:modulusLen withInt:((JavaMathBigInteger *) NIL_CHK(a)).numberLength] withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(b)).digits withInt:[JavaLangMath minWithInt:modulusLen withInt:((JavaMathBigInteger *) NIL_CHK(b)).numberLength] withJavaLangIntegerArray:res];
  [JavaMathDivision monReductionWithJavaLangIntegerArray:res withJavaMathBigInteger:modulus withInt:n2];
  return [JavaMathDivision finalSubtractionWithJavaLangIntegerArray:res withJavaMathBigInteger:modulus];
}

+ (JavaMathBigInteger *)finalSubtractionWithJavaLangIntegerArray:(IOSIntArray *)res
                                          withJavaMathBigInteger:(JavaMathBigInteger *)modulus {
  int modulusLen = ((JavaMathBigInteger *) NIL_CHK(modulus)).numberLength;
  BOOL doSub = [((IOSIntArray *) NIL_CHK(res)) intAtIndex:modulusLen] != 0;
  if (!doSub) {
    IOSIntArray *modulusDigits = ((JavaMathBigInteger *) NIL_CHK(modulus)).digits;
    doSub = YES;
    for (int i = modulusLen - 1; i >= 0; i--) {
      if ([((IOSIntArray *) NIL_CHK(res)) intAtIndex:i] != [((IOSIntArray *) NIL_CHK(modulusDigits)) intAtIndex:i]) {
        doSub = ([((IOSIntArray *) NIL_CHK(res)) intAtIndex:i] != 0) && (([((IOSIntArray *) NIL_CHK(res)) intAtIndex:i] & (long long) 0xFFFFFFFFLL) > ([((IOSIntArray *) NIL_CHK(modulusDigits)) intAtIndex:i] & (long long) 0xFFFFFFFFLL));
        break;
      }
    }
  }
  JavaMathBigInteger *result = [[[JavaMathBigInteger alloc] initWithInt:1 withInt:modulusLen + 1 withJavaLangIntegerArray:res] autorelease];
  if (doSub) {
    [JavaMathElementary inplaceSubtractWithJavaMathBigInteger:result withJavaMathBigInteger:modulus];
  }
  [((JavaMathBigInteger *) NIL_CHK(result)) cutOffLeadingZeroes];
  return result;
}

+ (JavaMathBigInteger *)modPow2InverseWithJavaMathBigInteger:(JavaMathBigInteger *)x
                                                     withInt:(int)n {
  JavaMathBigInteger *y = [[[JavaMathBigInteger alloc] initWithInt:1 withJavaLangIntegerArray:[[[IOSIntArray alloc] initWithLength:1 << n] autorelease]] autorelease];
  ((JavaMathBigInteger *) NIL_CHK(y)).numberLength = 1;
  [((IOSIntArray *) NIL_CHK(y.digits)) replaceIntAtIndex:0 withInt:1];
  ((JavaMathBigInteger *) NIL_CHK(y)).sign = 1;
  for (int i = 1; i < n; i++) {
    if ([JavaMathBitLevel testBitWithJavaMathBigInteger:[((JavaMathBigInteger *) NIL_CHK(x)) multiplyWithJavaMathBigInteger:y] withInt:i]) {
      [((IOSIntArray *) NIL_CHK(y.digits)) replaceIntAtIndex:i >> 5 withInt:[((JavaMathBigInteger *) NIL_CHK(y)).digits intAtIndex:i >> 5] | (1 << (i & 31))];
    }
  }
  return y;
}

+ (void)inplaceModPow2WithJavaMathBigInteger:(JavaMathBigInteger *)x
                                     withInt:(int)n {
  int fd = n >> 5;
  int leadingZeros;
  if ((((JavaMathBigInteger *) NIL_CHK(x)).numberLength < fd) || ([((JavaMathBigInteger *) NIL_CHK(x)) bitLength] <= n)) {
    return;
  }
  leadingZeros = 32 - (n & 31);
  ((JavaMathBigInteger *) NIL_CHK(x)).numberLength = fd + 1;
  [((IOSIntArray *) NIL_CHK(x.digits)) replaceIntAtIndex:fd withInt:[((JavaMathBigInteger *) NIL_CHK(x)).digits intAtIndex:fd] & (leadingZeros < 32) ? ((int) (((unsigned int) -1) >> leadingZeros)) : 0];
  [((JavaMathBigInteger *) NIL_CHK(x)) cutOffLeadingZeroes];
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
