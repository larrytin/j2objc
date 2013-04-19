//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/math/src/main/java/java/math/Elementary.java
//
//  Created by retechretech on 13-4-19.
//

#import "IOSIntArray.h"
#import "java/lang/Math.h"
#import "java/lang/System.h"
#import "java/math/BigInteger.h"
#import "java/math/Elementary.h"

@implementation JavaMathElementary

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (int)compareArraysWithJavaLangIntegerArray:(IOSIntArray *)a
                    withJavaLangIntegerArray:(IOSIntArray *)b
                                     withInt:(int)size {
  int i;
  for (i = size - 1; (i >= 0) && ([((IOSIntArray *) NIL_CHK(a)) intAtIndex:i] == [((IOSIntArray *) NIL_CHK(b)) intAtIndex:i]); i--) {
    ;
  }
  return ((i < 0) ? JavaMathBigInteger_EQUALS : ([((IOSIntArray *) NIL_CHK(a)) intAtIndex:i] & (long long) 0xFFFFFFFFLL) < ([((IOSIntArray *) NIL_CHK(b)) intAtIndex:i] & (long long) 0xFFFFFFFFLL) ? JavaMathBigInteger_LESS : JavaMathBigInteger_GREATER);
}

+ (JavaMathBigInteger *)addWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                           withJavaMathBigInteger:(JavaMathBigInteger *)op2 {
  IOSIntArray *resDigits;
  int resSign;
  int op1Sign = ((JavaMathBigInteger *) NIL_CHK(op1)).sign;
  int op2Sign = ((JavaMathBigInteger *) NIL_CHK(op2)).sign;
  if (op1Sign == 0) {
    return op2;
  }
  if (op2Sign == 0) {
    return op1;
  }
  int op1Len = ((JavaMathBigInteger *) NIL_CHK(op1)).numberLength;
  int op2Len = ((JavaMathBigInteger *) NIL_CHK(op2)).numberLength;
  if (op1Len + op2Len == 2) {
    long long int a = ([((IOSIntArray *) NIL_CHK(op1.digits)) intAtIndex:0] & (long long) 0xFFFFFFFFLL);
    long long int b = ([((IOSIntArray *) NIL_CHK(op2.digits)) intAtIndex:0] & (long long) 0xFFFFFFFFLL);
    long long int res;
    int valueLo;
    int valueHi;
    if (op1Sign == op2Sign) {
      res = a + b;
      valueLo = (int) res;
      valueHi = (int) ((long long) (((unsigned long long) res) >> 32));
      return ((valueHi == 0) ? [[[JavaMathBigInteger alloc] initWithInt:op1Sign withInt:valueLo] autorelease] : [[[JavaMathBigInteger alloc] initWithInt:op1Sign withInt:2 withJavaLangIntegerArray:[IOSIntArray arrayWithInts:(int[]){ valueLo, valueHi } count:2]] autorelease]);
    }
    return [JavaMathBigInteger valueOfWithLongInt:(op1Sign < 0) ? (b - a) : (a - b)];
  }
  else if (op1Sign == op2Sign) {
    resSign = op1Sign;
    resDigits = (op1Len >= op2Len) ? [JavaMathElementary addWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:op1Len withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:op2Len] : [JavaMathElementary addWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:op2Len withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:op1Len];
  }
  else {
    int cmp = ((op1Len != op2Len) ? ((op1Len > op2Len) ? 1 : -1) : [JavaMathElementary compareArraysWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:op1Len]);
    if (cmp == JavaMathBigInteger_EQUALS) {
      return [JavaMathBigInteger ZERO];
    }
    if (cmp == JavaMathBigInteger_GREATER) {
      resSign = op1Sign;
      resDigits = [JavaMathElementary subtractWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:op1Len withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:op2Len];
    }
    else {
      resSign = op2Sign;
      resDigits = [JavaMathElementary subtractWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:op2Len withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:op1Len];
    }
  }
  JavaMathBigInteger *res = [[[JavaMathBigInteger alloc] initWithInt:resSign withInt:(int) [((IOSIntArray *) NIL_CHK(resDigits)) count] withJavaLangIntegerArray:resDigits] autorelease];
  [((JavaMathBigInteger *) NIL_CHK(res)) cutOffLeadingZeroes];
  return res;
}

+ (void)addWithJavaLangIntegerArray:(IOSIntArray *)res
           withJavaLangIntegerArray:(IOSIntArray *)a
                            withInt:(int)aSize
           withJavaLangIntegerArray:(IOSIntArray *)b
                            withInt:(int)bSize {
  int i;
  long long int carry = ([((IOSIntArray *) NIL_CHK(a)) intAtIndex:0] & (long long) 0xFFFFFFFFLL) + ([((IOSIntArray *) NIL_CHK(b)) intAtIndex:0] & (long long) 0xFFFFFFFFLL);
  [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:0 withInt:(int) carry];
  carry >>= 32;
  if (aSize >= bSize) {
    for (i = 1; i < bSize; i++) {
      carry += ([((IOSIntArray *) NIL_CHK(a)) intAtIndex:i] & (long long) 0xFFFFFFFFLL) + ([((IOSIntArray *) NIL_CHK(b)) intAtIndex:i] & (long long) 0xFFFFFFFFLL);
      [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:i withInt:(int) carry];
      carry >>= 32;
    }
    for (; i < aSize; i++) {
      carry += [((IOSIntArray *) NIL_CHK(a)) intAtIndex:i] & (long long) 0xFFFFFFFFLL;
      [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:i withInt:(int) carry];
      carry >>= 32;
    }
  }
  else {
    for (i = 1; i < aSize; i++) {
      carry += ([((IOSIntArray *) NIL_CHK(a)) intAtIndex:i] & (long long) 0xFFFFFFFFLL) + ([((IOSIntArray *) NIL_CHK(b)) intAtIndex:i] & (long long) 0xFFFFFFFFLL);
      [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:i withInt:(int) carry];
      carry >>= 32;
    }
    for (; i < bSize; i++) {
      carry += [((IOSIntArray *) NIL_CHK(b)) intAtIndex:i] & (long long) 0xFFFFFFFFLL;
      [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:i withInt:(int) carry];
      carry >>= 32;
    }
  }
  if (carry != 0) {
    [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:i withInt:(int) carry];
  }
}

+ (JavaMathBigInteger *)subtractWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                                withJavaMathBigInteger:(JavaMathBigInteger *)op2 {
  int resSign;
  IOSIntArray *resDigits;
  int op1Sign = ((JavaMathBigInteger *) NIL_CHK(op1)).sign;
  int op2Sign = ((JavaMathBigInteger *) NIL_CHK(op2)).sign;
  if (op2Sign == 0) {
    return op1;
  }
  if (op1Sign == 0) {
    return [((JavaMathBigInteger *) NIL_CHK(op2)) negate];
  }
  int op1Len = ((JavaMathBigInteger *) NIL_CHK(op1)).numberLength;
  int op2Len = ((JavaMathBigInteger *) NIL_CHK(op2)).numberLength;
  if (op1Len + op2Len == 2) {
    long long int a = ([((IOSIntArray *) NIL_CHK(op1.digits)) intAtIndex:0] & (long long) 0xFFFFFFFFLL);
    long long int b = ([((IOSIntArray *) NIL_CHK(op2.digits)) intAtIndex:0] & (long long) 0xFFFFFFFFLL);
    if (op1Sign < 0) {
      a = -a;
    }
    if (op2Sign < 0) {
      b = -b;
    }
    return [JavaMathBigInteger valueOfWithLongInt:a - b];
  }
  int cmp = ((op1Len != op2Len) ? ((op1Len > op2Len) ? 1 : -1) : [JavaMathElementary compareArraysWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:op1Len]);
  if (cmp == JavaMathBigInteger_LESS) {
    resSign = -op2Sign;
    resDigits = (op1Sign == op2Sign) ? [JavaMathElementary subtractWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:op2Len withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:op1Len] : [JavaMathElementary addWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:op2Len withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:op1Len];
  }
  else {
    resSign = op1Sign;
    if (op1Sign == op2Sign) {
      if (cmp == JavaMathBigInteger_EQUALS) {
        return [JavaMathBigInteger ZERO];
      }
      resDigits = [JavaMathElementary subtractWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:op1Len withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:op2Len];
    }
    else {
      resDigits = [JavaMathElementary addWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:op1Len withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:op2Len];
    }
  }
  JavaMathBigInteger *res = [[[JavaMathBigInteger alloc] initWithInt:resSign withInt:(int) [((IOSIntArray *) NIL_CHK(resDigits)) count] withJavaLangIntegerArray:resDigits] autorelease];
  [((JavaMathBigInteger *) NIL_CHK(res)) cutOffLeadingZeroes];
  return res;
}

+ (void)subtractWithJavaLangIntegerArray:(IOSIntArray *)res
                withJavaLangIntegerArray:(IOSIntArray *)a
                                 withInt:(int)aSize
                withJavaLangIntegerArray:(IOSIntArray *)b
                                 withInt:(int)bSize {
  int i;
  long long int borrow = 0;
  for (i = 0; i < bSize; i++) {
    borrow += ([((IOSIntArray *) NIL_CHK(a)) intAtIndex:i] & (long long) 0xFFFFFFFFLL) - ([((IOSIntArray *) NIL_CHK(b)) intAtIndex:i] & (long long) 0xFFFFFFFFLL);
    [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:i withInt:(int) borrow];
    borrow >>= 32;
  }
  for (; i < aSize; i++) {
    borrow += [((IOSIntArray *) NIL_CHK(a)) intAtIndex:i] & (long long) 0xFFFFFFFFLL;
    [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:i withInt:(int) borrow];
    borrow >>= 32;
  }
}

+ (IOSIntArray *)addWithJavaLangIntegerArray:(IOSIntArray *)a
                                     withInt:(int)aSize
                    withJavaLangIntegerArray:(IOSIntArray *)b
                                     withInt:(int)bSize {
  IOSIntArray *res = [[[IOSIntArray alloc] initWithLength:aSize + 1] autorelease];
  [JavaMathElementary addWithJavaLangIntegerArray:res withJavaLangIntegerArray:a withInt:aSize withJavaLangIntegerArray:b withInt:bSize];
  return res;
}

+ (void)inplaceAddWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                  withJavaMathBigInteger:(JavaMathBigInteger *)op2 {
  [JavaMathElementary addWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength];
  ((JavaMathBigInteger *) NIL_CHK(op1)).numberLength = [JavaLangMath minWithInt:[JavaLangMath maxWithInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength] + 1 withInt:(int) [((IOSIntArray *) NIL_CHK(op1.digits)) count]];
  [((JavaMathBigInteger *) NIL_CHK(op1)) cutOffLeadingZeroes];
  [((JavaMathBigInteger *) NIL_CHK(op1)) unCache];
}

+ (int)inplaceAddWithJavaLangIntegerArray:(IOSIntArray *)a
                                  withInt:(int)aSize
                                  withInt:(int)addend {
  long long int carry = addend & (long long) 0xFFFFFFFFLL;
  for (int i = 0; (carry != 0) && (i < aSize); i++) {
    carry += [((IOSIntArray *) NIL_CHK(a)) intAtIndex:i] & (long long) 0xFFFFFFFFLL;
    [((IOSIntArray *) NIL_CHK(a)) replaceIntAtIndex:i withInt:(int) carry];
    carry >>= 32;
  }
  return (int) carry;
}

+ (void)inplaceAddWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                                 withInt:(int)addend {
  int carry = [JavaMathElementary inplaceAddWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withInt:addend];
  if (carry == 1) {
    [((IOSIntArray *) NIL_CHK(op1.digits)) replaceIntAtIndex:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withInt:1];
    ((JavaMathBigInteger *) NIL_CHK(op1)).numberLength++;
  }
  [((JavaMathBigInteger *) NIL_CHK(op1)) unCache];
}

+ (void)inplaceSubtractWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                       withJavaMathBigInteger:(JavaMathBigInteger *)op2 {
  [JavaMathElementary subtractWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength];
  [((JavaMathBigInteger *) NIL_CHK(op1)) cutOffLeadingZeroes];
  [((JavaMathBigInteger *) NIL_CHK(op1)) unCache];
}

+ (void)inverseSubtractWithJavaLangIntegerArray:(IOSIntArray *)res
                       withJavaLangIntegerArray:(IOSIntArray *)a
                                        withInt:(int)aSize
                       withJavaLangIntegerArray:(IOSIntArray *)b
                                        withInt:(int)bSize {
  int i;
  long long int borrow = 0;
  if (aSize < bSize) {
    for (i = 0; i < aSize; i++) {
      borrow += ([((IOSIntArray *) NIL_CHK(b)) intAtIndex:i] & (long long) 0xFFFFFFFFLL) - ([((IOSIntArray *) NIL_CHK(a)) intAtIndex:i] & (long long) 0xFFFFFFFFLL);
      [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:i withInt:(int) borrow];
      borrow >>= 32;
    }
    for (; i < bSize; i++) {
      borrow += [((IOSIntArray *) NIL_CHK(b)) intAtIndex:i] & (long long) 0xFFFFFFFFLL;
      [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:i withInt:(int) borrow];
      borrow >>= 32;
    }
  }
  else {
    for (i = 0; i < bSize; i++) {
      borrow += ([((IOSIntArray *) NIL_CHK(b)) intAtIndex:i] & (long long) 0xFFFFFFFFLL) - ([((IOSIntArray *) NIL_CHK(a)) intAtIndex:i] & (long long) 0xFFFFFFFFLL);
      [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:i withInt:(int) borrow];
      borrow >>= 32;
    }
    for (; i < aSize; i++) {
      borrow -= [((IOSIntArray *) NIL_CHK(a)) intAtIndex:i] & (long long) 0xFFFFFFFFLL;
      [((IOSIntArray *) NIL_CHK(res)) replaceIntAtIndex:i withInt:(int) borrow];
      borrow >>= 32;
    }
  }
}

+ (IOSIntArray *)subtractWithJavaLangIntegerArray:(IOSIntArray *)a
                                          withInt:(int)aSize
                         withJavaLangIntegerArray:(IOSIntArray *)b
                                          withInt:(int)bSize {
  IOSIntArray *res = [[[IOSIntArray alloc] initWithLength:aSize] autorelease];
  [JavaMathElementary subtractWithJavaLangIntegerArray:res withJavaLangIntegerArray:a withInt:aSize withJavaLangIntegerArray:b withInt:bSize];
  return res;
}

+ (void)completeInPlaceSubtractWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                               withJavaMathBigInteger:(JavaMathBigInteger *)op2 {
  int resultSign = [((JavaMathBigInteger *) NIL_CHK(op1)) compareToWithId:op2];
  if (((JavaMathBigInteger *) NIL_CHK(op1)).sign == 0) {
    [JavaLangSystem arraycopyWithId:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:0 withId:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:0 withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength];
    ((JavaMathBigInteger *) NIL_CHK(op1)).sign = -((JavaMathBigInteger *) NIL_CHK(op2)).sign;
  }
  else if (((JavaMathBigInteger *) NIL_CHK(op1)).sign != ((JavaMathBigInteger *) NIL_CHK(op2)).sign) {
    [JavaMathElementary addWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength];
    ((JavaMathBigInteger *) NIL_CHK(op1)).sign = resultSign;
  }
  else {
    int sign = [JavaMathElementary unsignedArraysCompareWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength];
    if (sign > 0) {
      [JavaMathElementary subtractWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength];
    }
    else {
      [JavaMathElementary inverseSubtractWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength];
      ((JavaMathBigInteger *) NIL_CHK(op1)).sign = -((JavaMathBigInteger *) NIL_CHK(op1)).sign;
    }
  }
  ((JavaMathBigInteger *) NIL_CHK(op1)).numberLength = [JavaLangMath maxWithInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength] + 1;
  [((JavaMathBigInteger *) NIL_CHK(op1)) cutOffLeadingZeroes];
  [((JavaMathBigInteger *) NIL_CHK(op1)) unCache];
}

+ (void)completeInPlaceAddWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                          withJavaMathBigInteger:(JavaMathBigInteger *)op2 {
  if (((JavaMathBigInteger *) NIL_CHK(op1)).sign == 0) [JavaLangSystem arraycopyWithId:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:0 withId:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:0 withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength];
  else if (((JavaMathBigInteger *) NIL_CHK(op2)).sign == 0) return;
  else if (((JavaMathBigInteger *) NIL_CHK(op1)).sign == ((JavaMathBigInteger *) NIL_CHK(op2)).sign) [JavaMathElementary addWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength];
  else {
    int sign = [JavaMathElementary unsignedArraysCompareWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength];
    if (sign > 0) [JavaMathElementary subtractWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength];
    else {
      [JavaMathElementary inverseSubtractWithJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op1)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(op2)).digits withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength];
      ((JavaMathBigInteger *) NIL_CHK(op1)).sign = -((JavaMathBigInteger *) NIL_CHK(op1)).sign;
    }
  }
  ((JavaMathBigInteger *) NIL_CHK(op1)).numberLength = [JavaLangMath maxWithInt:((JavaMathBigInteger *) NIL_CHK(op1)).numberLength withInt:((JavaMathBigInteger *) NIL_CHK(op2)).numberLength] + 1;
  [((JavaMathBigInteger *) NIL_CHK(op1)) cutOffLeadingZeroes];
  [((JavaMathBigInteger *) NIL_CHK(op1)) unCache];
}

+ (int)unsignedArraysCompareWithJavaLangIntegerArray:(IOSIntArray *)a
                            withJavaLangIntegerArray:(IOSIntArray *)b
                                             withInt:(int)aSize
                                             withInt:(int)bSize {
  if (aSize > bSize) return 1;
  else if (aSize < bSize) return -1;
  else {
    int i;
    for (i = aSize - 1; i >= 0 && [((IOSIntArray *) NIL_CHK(a)) intAtIndex:i] == [((IOSIntArray *) NIL_CHK(b)) intAtIndex:i]; i--) ;
    return i < 0 ? JavaMathBigInteger_EQUALS : (([((IOSIntArray *) NIL_CHK(a)) intAtIndex:i] & (long long) 0xFFFFFFFFLL) < ([((IOSIntArray *) NIL_CHK(b)) intAtIndex:i] & (long long) 0xFFFFFFFFLL) ? JavaMathBigInteger_LESS : JavaMathBigInteger_GREATER);
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
