//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSIntArray.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/math/BigInteger.h"
#include "java/math/Elementary.h"

@implementation JavaMathElementary

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (int)compareArraysWithIntArray:(IOSIntArray *)a
                    withIntArray:(IOSIntArray *)b
                         withInt:(int)size {
  int i;
  for (i = size - 1; (i >= 0) && (IOSIntArray_Get(nil_chk(a), i) == IOSIntArray_Get(nil_chk(b), i)); i--) {
    ;
  }
  return ((i < 0) ? JavaMathBigInteger_EQUALS : (IOSIntArray_Get(nil_chk(a), i) & (long long) 0xFFFFFFFFLL) < (IOSIntArray_Get(nil_chk(b), i) & (long long) 0xFFFFFFFFLL) ? JavaMathBigInteger_LESS : JavaMathBigInteger_GREATER);
}

+ (JavaMathBigInteger *)addWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                           withJavaMathBigInteger:(JavaMathBigInteger *)op2 {
  IOSIntArray *resDigits;
  int resSign;
  int op1Sign = ((JavaMathBigInteger *) nil_chk(op1))->sign_;
  int op2Sign = ((JavaMathBigInteger *) nil_chk(op2))->sign_;
  if (op1Sign == 0) {
    return op2;
  }
  if (op2Sign == 0) {
    return op1;
  }
  int op1Len = op1->numberLength_;
  int op2Len = op2->numberLength_;
  if (op1Len + op2Len == 2) {
    long long int a = (IOSIntArray_Get(nil_chk(op1->digits_), 0) & (long long) 0xFFFFFFFFLL);
    long long int b = (IOSIntArray_Get(op2->digits_, 0) & (long long) 0xFFFFFFFFLL);
    long long int res;
    int valueLo;
    int valueHi;
    if (op1Sign == op2Sign) {
      res = a + b;
      valueLo = (int) res;
      valueHi = (int) ((long long) (((unsigned long long) res) >> 32));
      return ((valueHi == 0) ? [[[JavaMathBigInteger alloc] initWithInt:op1Sign withInt:valueLo] autorelease] : [[[JavaMathBigInteger alloc] initWithInt:op1Sign withInt:2 withIntArray:[IOSIntArray arrayWithInts:(int[]){ valueLo, valueHi } count:2]] autorelease]);
    }
    return [JavaMathBigInteger valueOfWithLong:(op1Sign < 0) ? (b - a) : (a - b)];
  }
  else if (op1Sign == op2Sign) {
    resSign = op1Sign;
    resDigits = (op1Len >= op2Len) ? [JavaMathElementary addWithIntArray:op1->digits_ withInt:op1Len withIntArray:op2->digits_ withInt:op2Len] : [JavaMathElementary addWithIntArray:op2->digits_ withInt:op2Len withIntArray:op1->digits_ withInt:op1Len];
  }
  else {
    int cmp = ((op1Len != op2Len) ? ((op1Len > op2Len) ? 1 : -1) : [JavaMathElementary compareArraysWithIntArray:op1->digits_ withIntArray:op2->digits_ withInt:op1Len]);
    if (cmp == JavaMathBigInteger_EQUALS) {
      return [JavaMathBigInteger ZERO];
    }
    if (cmp == JavaMathBigInteger_GREATER) {
      resSign = op1Sign;
      resDigits = [JavaMathElementary subtractWithIntArray:op1->digits_ withInt:op1Len withIntArray:op2->digits_ withInt:op2Len];
    }
    else {
      resSign = op2Sign;
      resDigits = [JavaMathElementary subtractWithIntArray:op2->digits_ withInt:op2Len withIntArray:op1->digits_ withInt:op1Len];
    }
  }
  JavaMathBigInteger *res = [[[JavaMathBigInteger alloc] initWithInt:resSign withInt:(int) [((IOSIntArray *) nil_chk(resDigits)) count] withIntArray:resDigits] autorelease];
  [res cutOffLeadingZeroes];
  return res;
}

+ (void)addWithIntArray:(IOSIntArray *)res
           withIntArray:(IOSIntArray *)a
                withInt:(int)aSize
           withIntArray:(IOSIntArray *)b
                withInt:(int)bSize {
  int i;
  long long int carry = (IOSIntArray_Get(nil_chk(a), 0) & (long long) 0xFFFFFFFFLL) + (IOSIntArray_Get(nil_chk(b), 0) & (long long) 0xFFFFFFFFLL);
  (*IOSIntArray_GetRef(nil_chk(res), 0)) = (int) carry;
  carry >>= 32;
  if (aSize >= bSize) {
    for (i = 1; i < bSize; i++) {
      carry += (IOSIntArray_Get(a, i) & (long long) 0xFFFFFFFFLL) + (IOSIntArray_Get(b, i) & (long long) 0xFFFFFFFFLL);
      (*IOSIntArray_GetRef(res, i)) = (int) carry;
      carry >>= 32;
    }
    for (; i < aSize; i++) {
      carry += IOSIntArray_Get(a, i) & (long long) 0xFFFFFFFFLL;
      (*IOSIntArray_GetRef(res, i)) = (int) carry;
      carry >>= 32;
    }
  }
  else {
    for (i = 1; i < aSize; i++) {
      carry += (IOSIntArray_Get(a, i) & (long long) 0xFFFFFFFFLL) + (IOSIntArray_Get(b, i) & (long long) 0xFFFFFFFFLL);
      (*IOSIntArray_GetRef(res, i)) = (int) carry;
      carry >>= 32;
    }
    for (; i < bSize; i++) {
      carry += IOSIntArray_Get(b, i) & (long long) 0xFFFFFFFFLL;
      (*IOSIntArray_GetRef(res, i)) = (int) carry;
      carry >>= 32;
    }
  }
  if (carry != 0) {
    (*IOSIntArray_GetRef(res, i)) = (int) carry;
  }
}

+ (JavaMathBigInteger *)subtractWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                                withJavaMathBigInteger:(JavaMathBigInteger *)op2 {
  int resSign;
  IOSIntArray *resDigits;
  int op1Sign = ((JavaMathBigInteger *) nil_chk(op1))->sign_;
  int op2Sign = ((JavaMathBigInteger *) nil_chk(op2))->sign_;
  if (op2Sign == 0) {
    return op1;
  }
  if (op1Sign == 0) {
    return [op2 negate];
  }
  int op1Len = op1->numberLength_;
  int op2Len = op2->numberLength_;
  if (op1Len + op2Len == 2) {
    long long int a = (IOSIntArray_Get(nil_chk(op1->digits_), 0) & (long long) 0xFFFFFFFFLL);
    long long int b = (IOSIntArray_Get(op2->digits_, 0) & (long long) 0xFFFFFFFFLL);
    if (op1Sign < 0) {
      a = -a;
    }
    if (op2Sign < 0) {
      b = -b;
    }
    return [JavaMathBigInteger valueOfWithLong:a - b];
  }
  int cmp = ((op1Len != op2Len) ? ((op1Len > op2Len) ? 1 : -1) : [JavaMathElementary compareArraysWithIntArray:op1->digits_ withIntArray:op2->digits_ withInt:op1Len]);
  if (cmp == JavaMathBigInteger_LESS) {
    resSign = -op2Sign;
    resDigits = (op1Sign == op2Sign) ? [JavaMathElementary subtractWithIntArray:op2->digits_ withInt:op2Len withIntArray:op1->digits_ withInt:op1Len] : [JavaMathElementary addWithIntArray:op2->digits_ withInt:op2Len withIntArray:op1->digits_ withInt:op1Len];
  }
  else {
    resSign = op1Sign;
    if (op1Sign == op2Sign) {
      if (cmp == JavaMathBigInteger_EQUALS) {
        return [JavaMathBigInteger ZERO];
      }
      resDigits = [JavaMathElementary subtractWithIntArray:op1->digits_ withInt:op1Len withIntArray:op2->digits_ withInt:op2Len];
    }
    else {
      resDigits = [JavaMathElementary addWithIntArray:op1->digits_ withInt:op1Len withIntArray:op2->digits_ withInt:op2Len];
    }
  }
  JavaMathBigInteger *res = [[[JavaMathBigInteger alloc] initWithInt:resSign withInt:(int) [((IOSIntArray *) nil_chk(resDigits)) count] withIntArray:resDigits] autorelease];
  [res cutOffLeadingZeroes];
  return res;
}

+ (void)subtractWithIntArray:(IOSIntArray *)res
                withIntArray:(IOSIntArray *)a
                     withInt:(int)aSize
                withIntArray:(IOSIntArray *)b
                     withInt:(int)bSize {
  int i;
  long long int borrow = 0;
  for (i = 0; i < bSize; i++) {
    borrow += (IOSIntArray_Get(nil_chk(a), i) & (long long) 0xFFFFFFFFLL) - (IOSIntArray_Get(nil_chk(b), i) & (long long) 0xFFFFFFFFLL);
    (*IOSIntArray_GetRef(nil_chk(res), i)) = (int) borrow;
    borrow >>= 32;
  }
  for (; i < aSize; i++) {
    borrow += IOSIntArray_Get(nil_chk(a), i) & (long long) 0xFFFFFFFFLL;
    (*IOSIntArray_GetRef(nil_chk(res), i)) = (int) borrow;
    borrow >>= 32;
  }
}

+ (IOSIntArray *)addWithIntArray:(IOSIntArray *)a
                         withInt:(int)aSize
                    withIntArray:(IOSIntArray *)b
                         withInt:(int)bSize {
  IOSIntArray *res = [IOSIntArray arrayWithLength:aSize + 1];
  [JavaMathElementary addWithIntArray:res withIntArray:a withInt:aSize withIntArray:b withInt:bSize];
  return res;
}

+ (void)inplaceAddWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                  withJavaMathBigInteger:(JavaMathBigInteger *)op2 {
  [JavaMathElementary addWithIntArray:((JavaMathBigInteger *) nil_chk(op1))->digits_ withIntArray:op1->digits_ withInt:op1->numberLength_ withIntArray:((JavaMathBigInteger *) nil_chk(op2))->digits_ withInt:op2->numberLength_];
  op1->numberLength_ = [JavaLangMath minWithInt:[JavaLangMath maxWithInt:op1->numberLength_ withInt:op2->numberLength_] + 1 withInt:(int) [((IOSIntArray *) nil_chk(op1->digits_)) count]];
  [op1 cutOffLeadingZeroes];
  [op1 unCache];
}

+ (int)inplaceAddWithIntArray:(IOSIntArray *)a
                      withInt:(int)aSize
                      withInt:(int)addend {
  long long int carry = addend & (long long) 0xFFFFFFFFLL;
  for (int i = 0; (carry != 0) && (i < aSize); i++) {
    carry += IOSIntArray_Get(nil_chk(a), i) & (long long) 0xFFFFFFFFLL;
    (*IOSIntArray_GetRef(a, i)) = (int) carry;
    carry >>= 32;
  }
  return (int) carry;
}

+ (void)inplaceAddWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                                 withInt:(int)addend {
  int carry = [JavaMathElementary inplaceAddWithIntArray:((JavaMathBigInteger *) nil_chk(op1))->digits_ withInt:op1->numberLength_ withInt:addend];
  if (carry == 1) {
    (*IOSIntArray_GetRef(nil_chk(op1->digits_), op1->numberLength_)) = 1;
    op1->numberLength_++;
  }
  [op1 unCache];
}

+ (void)inplaceSubtractWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                       withJavaMathBigInteger:(JavaMathBigInteger *)op2 {
  [JavaMathElementary subtractWithIntArray:((JavaMathBigInteger *) nil_chk(op1))->digits_ withIntArray:op1->digits_ withInt:op1->numberLength_ withIntArray:((JavaMathBigInteger *) nil_chk(op2))->digits_ withInt:op2->numberLength_];
  [op1 cutOffLeadingZeroes];
  [op1 unCache];
}

+ (void)inverseSubtractWithIntArray:(IOSIntArray *)res
                       withIntArray:(IOSIntArray *)a
                            withInt:(int)aSize
                       withIntArray:(IOSIntArray *)b
                            withInt:(int)bSize {
  int i;
  long long int borrow = 0;
  if (aSize < bSize) {
    for (i = 0; i < aSize; i++) {
      borrow += (IOSIntArray_Get(nil_chk(b), i) & (long long) 0xFFFFFFFFLL) - (IOSIntArray_Get(nil_chk(a), i) & (long long) 0xFFFFFFFFLL);
      (*IOSIntArray_GetRef(nil_chk(res), i)) = (int) borrow;
      borrow >>= 32;
    }
    for (; i < bSize; i++) {
      borrow += IOSIntArray_Get(nil_chk(b), i) & (long long) 0xFFFFFFFFLL;
      (*IOSIntArray_GetRef(nil_chk(res), i)) = (int) borrow;
      borrow >>= 32;
    }
  }
  else {
    for (i = 0; i < bSize; i++) {
      borrow += (IOSIntArray_Get(nil_chk(b), i) & (long long) 0xFFFFFFFFLL) - (IOSIntArray_Get(nil_chk(a), i) & (long long) 0xFFFFFFFFLL);
      (*IOSIntArray_GetRef(nil_chk(res), i)) = (int) borrow;
      borrow >>= 32;
    }
    for (; i < aSize; i++) {
      borrow -= IOSIntArray_Get(nil_chk(a), i) & (long long) 0xFFFFFFFFLL;
      (*IOSIntArray_GetRef(nil_chk(res), i)) = (int) borrow;
      borrow >>= 32;
    }
  }
}

+ (IOSIntArray *)subtractWithIntArray:(IOSIntArray *)a
                              withInt:(int)aSize
                         withIntArray:(IOSIntArray *)b
                              withInt:(int)bSize {
  IOSIntArray *res = [IOSIntArray arrayWithLength:aSize];
  [JavaMathElementary subtractWithIntArray:res withIntArray:a withInt:aSize withIntArray:b withInt:bSize];
  return res;
}

+ (void)completeInPlaceSubtractWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                               withJavaMathBigInteger:(JavaMathBigInteger *)op2 {
  int resultSign = [((JavaMathBigInteger *) nil_chk(op1)) compareToWithId:op2];
  if (op1->sign_ == 0) {
    [JavaLangSystem arraycopyWithId:((JavaMathBigInteger *) nil_chk(op2))->digits_ withInt:0 withId:op1->digits_ withInt:0 withInt:op2->numberLength_];
    op1->sign_ = -op2->sign_;
  }
  else if (op1->sign_ != ((JavaMathBigInteger *) nil_chk(op2))->sign_) {
    [JavaMathElementary addWithIntArray:op1->digits_ withIntArray:op1->digits_ withInt:op1->numberLength_ withIntArray:op2->digits_ withInt:op2->numberLength_];
    op1->sign_ = resultSign;
  }
  else {
    int sign = [JavaMathElementary unsignedArraysCompareWithIntArray:op1->digits_ withIntArray:op2->digits_ withInt:op1->numberLength_ withInt:op2->numberLength_];
    if (sign > 0) {
      [JavaMathElementary subtractWithIntArray:op1->digits_ withIntArray:op1->digits_ withInt:op1->numberLength_ withIntArray:op2->digits_ withInt:op2->numberLength_];
    }
    else {
      [JavaMathElementary inverseSubtractWithIntArray:op1->digits_ withIntArray:op1->digits_ withInt:op1->numberLength_ withIntArray:op2->digits_ withInt:op2->numberLength_];
      op1->sign_ = -op1->sign_;
    }
  }
  op1->numberLength_ = [JavaLangMath maxWithInt:op1->numberLength_ withInt:((JavaMathBigInteger *) nil_chk(op2))->numberLength_] + 1;
  [op1 cutOffLeadingZeroes];
  [op1 unCache];
}

+ (void)completeInPlaceAddWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                          withJavaMathBigInteger:(JavaMathBigInteger *)op2 {
  if (((JavaMathBigInteger *) nil_chk(op1))->sign_ == 0) [JavaLangSystem arraycopyWithId:((JavaMathBigInteger *) nil_chk(op2))->digits_ withInt:0 withId:op1->digits_ withInt:0 withInt:op2->numberLength_];
  else if (((JavaMathBigInteger *) nil_chk(op2))->sign_ == 0) return;
  else if (op1->sign_ == op2->sign_) [JavaMathElementary addWithIntArray:op1->digits_ withIntArray:op1->digits_ withInt:op1->numberLength_ withIntArray:op2->digits_ withInt:op2->numberLength_];
  else {
    int sign = [JavaMathElementary unsignedArraysCompareWithIntArray:op1->digits_ withIntArray:op2->digits_ withInt:op1->numberLength_ withInt:op2->numberLength_];
    if (sign > 0) [JavaMathElementary subtractWithIntArray:op1->digits_ withIntArray:op1->digits_ withInt:op1->numberLength_ withIntArray:op2->digits_ withInt:op2->numberLength_];
    else {
      [JavaMathElementary inverseSubtractWithIntArray:op1->digits_ withIntArray:op1->digits_ withInt:op1->numberLength_ withIntArray:op2->digits_ withInt:op2->numberLength_];
      op1->sign_ = -op1->sign_;
    }
  }
  op1->numberLength_ = [JavaLangMath maxWithInt:op1->numberLength_ withInt:((JavaMathBigInteger *) nil_chk(op2))->numberLength_] + 1;
  [op1 cutOffLeadingZeroes];
  [op1 unCache];
}

+ (int)unsignedArraysCompareWithIntArray:(IOSIntArray *)a
                            withIntArray:(IOSIntArray *)b
                                 withInt:(int)aSize
                                 withInt:(int)bSize {
  if (aSize > bSize) return 1;
  else if (aSize < bSize) return -1;
  else {
    int i;
    for (i = aSize - 1; i >= 0 && IOSIntArray_Get(nil_chk(a), i) == IOSIntArray_Get(nil_chk(b), i); i--) ;
    return i < 0 ? JavaMathBigInteger_EQUALS : ((IOSIntArray_Get(nil_chk(a), i) & (long long) 0xFFFFFFFFLL) < (IOSIntArray_Get(nil_chk(b), i) & (long long) 0xFFFFFFFFLL) ? JavaMathBigInteger_LESS : JavaMathBigInteger_GREATER);
  }
}

@end
