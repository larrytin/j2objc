//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/BitSet.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSLongArray.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/Math.h"
#include "java/lang/NegativeArraySizeException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/BitSet.h"

@implementation JavaUtilBitSet

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaUtilBitSet_TWO_N_ARRAY_ name:@"JavaUtilBitSet_TWO_N_ARRAY_"]];
  return result;
}

static IOSLongArray * JavaUtilBitSet_TWO_N_ARRAY_;

+ (IOSLongArray *)TWO_N_ARRAY {
  return JavaUtilBitSet_TWO_N_ARRAY_;
}

- (id)init {
  if (self = [super init]) {
    JavaUtilBitSet_set_bits_(self, [IOSLongArray arrayWithLength:1]);
    actualArrayLength_ = 0;
    isLengthActual_ = YES;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)nbits {
  if (self = [super init]) {
    if (nbits < 0) {
      @throw [[[JavaLangNegativeArraySizeException alloc] init] autorelease];
    }
    JavaUtilBitSet_set_bits_(self, [IOSLongArray arrayWithLength:(nbits >> JavaUtilBitSet_OFFSET) + ((nbits & JavaUtilBitSet_RIGHT_BITS) > 0 ? 1 : 0)]);
    actualArrayLength_ = 0;
    isLengthActual_ = YES;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithLongArray:(IOSLongArray *)bits
            withBoolean:(BOOL)needClear
                withInt:(int)actualArrayLength
            withBoolean:(BOOL)isLengthActual {
  if (self = [super init]) {
    JavaUtilBitSet_set_bits_(self, bits);
    self->needClear__ = needClear;
    self->actualArrayLength_ = actualArrayLength;
    self->isLengthActual_ = isLengthActual;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)clone {
  JavaUtilBitSet *clone = [[[JavaUtilBitSet alloc] init] autorelease];
  clone->actualArrayLength_ = actualArrayLength_;
  JavaUtilBitSet_set_bits_(clone, [((IOSLongArray *) nil_chk(bits_)) clone]);
  clone->isLengthActual_ = isLengthActual_;
  clone->needClear__ = needClear__;
  return clone;
}

- (BOOL)isEqual:(id)obj {
  if (self == obj) {
    return YES;
  }
  if ([obj isKindOfClass:[JavaUtilBitSet class]]) {
    IOSLongArray *bsBits = ((JavaUtilBitSet *) nil_chk(obj))->bits_;
    int length1 = self->actualArrayLength_, length2 = ((JavaUtilBitSet *) nil_chk(obj))->actualArrayLength_;
    if (self->isLengthActual_ && ((JavaUtilBitSet *) nil_chk(obj))->isLengthActual_ && length1 != length2) {
      return NO;
    }
    if (length1 <= length2) {
      for (int i = 0; i < length1; i++) {
        if (IOSLongArray_Get(nil_chk(bits_), i) != IOSLongArray_Get(nil_chk(bsBits), i)) {
          return NO;
        }
      }
      for (int i = length1; i < length2; i++) {
        if (IOSLongArray_Get(nil_chk(bsBits), i) != 0) {
          return NO;
        }
      }
    }
    else {
      for (int i = 0; i < length2; i++) {
        if (IOSLongArray_Get(nil_chk(bits_), i) != IOSLongArray_Get(nil_chk(bsBits), i)) {
          return NO;
        }
      }
      for (int i = length2; i < length1; i++) {
        if (IOSLongArray_Get(nil_chk(bits_), i) != 0) {
          return NO;
        }
      }
    }
    return YES;
  }
  return NO;
}

- (void)growLengthWithInt:(int)len {
  IOSLongArray *tempBits = [IOSLongArray arrayWithLength:[JavaLangMath maxWithInt:len withInt:(int) [((IOSLongArray *) nil_chk(bits_)) count] * 2]];
  [JavaLangSystem arraycopyWithId:bits_ withInt:0 withId:tempBits withInt:0 withInt:self->actualArrayLength_];
  JavaUtilBitSet_set_bits_(self, tempBits);
}

- (NSUInteger)hash {
  long long int x = 1234;
  for (int i = 0, length = actualArrayLength_; i < length; i++) {
    x ^= IOSLongArray_Get(nil_chk(bits_), i) * (i + 1);
  }
  return (int) ((x >> 32) ^ x);
}

- (BOOL)getWithInt:(int)pos {
  if (pos < 0) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:@"Negative index specified"] autorelease];
  }
  int arrayPos = pos >> JavaUtilBitSet_OFFSET;
  if (arrayPos < actualArrayLength_) {
    return (IOSLongArray_Get(nil_chk(bits_), arrayPos) & IOSLongArray_Get(nil_chk(JavaUtilBitSet_TWO_N_ARRAY_), pos & JavaUtilBitSet_RIGHT_BITS)) != 0;
  }
  return NO;
}

- (JavaUtilBitSet *)getWithInt:(int)pos1
                       withInt:(int)pos2 {
  if (pos1 < 0 || pos2 < 0 || pos2 < pos1) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:@"Negative index specified"] autorelease];
  }
  int last = actualArrayLength_ << JavaUtilBitSet_OFFSET;
  if (pos1 >= last || pos1 == pos2) {
    return [[[JavaUtilBitSet alloc] initWithInt:0] autorelease];
  }
  if (pos2 > last) {
    pos2 = last;
  }
  int idx1 = pos1 >> JavaUtilBitSet_OFFSET;
  int idx2 = (pos2 - 1) >> JavaUtilBitSet_OFFSET;
  long long int factor1 = (~0LL) << (pos1 & JavaUtilBitSet_RIGHT_BITS);
  long long int factor2 = (long long) (((unsigned long long) (~0LL)) >> (JavaUtilBitSet_ELM_SIZE - (pos2 & JavaUtilBitSet_RIGHT_BITS)));
  if (idx1 == idx2) {
    long long int result = (long long) (((unsigned long long) (IOSLongArray_Get(nil_chk(bits_), idx1) & (factor1 & factor2))) >> (pos1 % JavaUtilBitSet_ELM_SIZE));
    if (result == 0) {
      return [[[JavaUtilBitSet alloc] initWithInt:0] autorelease];
    }
    return [[[JavaUtilBitSet alloc] initWithLongArray:[IOSLongArray arrayWithLongs:(long long int[]){ result } count:1] withBoolean:needClear__ withInt:1 withBoolean:YES] autorelease];
  }
  IOSLongArray *newbits = [IOSLongArray arrayWithLength:idx2 - idx1 + 1];
  (*IOSLongArray_GetRef(newbits, 0)) = IOSLongArray_Get(nil_chk(bits_), idx1) & factor1;
  (*IOSLongArray_GetRef(newbits, (int) [newbits count] - 1)) = IOSLongArray_Get(bits_, idx2) & factor2;
  for (int i = 1; i < idx2 - idx1; i++) {
    (*IOSLongArray_GetRef(newbits, i)) = IOSLongArray_Get(bits_, idx1 + i);
  }
  int numBitsToShift = pos1 & JavaUtilBitSet_RIGHT_BITS;
  int actualLen = (int) [newbits count];
  if (numBitsToShift != 0) {
    for (int i = 0; i < (int) [newbits count]; i++) {
      (*IOSLongArray_GetRef(newbits, i)) = (long long) (((unsigned long long) IOSLongArray_Get(newbits, i)) >> (numBitsToShift));
      if (i != (int) [newbits count] - 1) {
        (*IOSLongArray_GetRef(newbits, i)) |= IOSLongArray_Get(newbits, i + 1) << (JavaUtilBitSet_ELM_SIZE - (numBitsToShift));
      }
      if (IOSLongArray_Get(newbits, i) != 0) {
        actualLen = i + 1;
      }
    }
  }
  return [[[JavaUtilBitSet alloc] initWithLongArray:newbits withBoolean:needClear__ withInt:actualLen withBoolean:IOSLongArray_Get(newbits, actualLen - 1) != 0] autorelease];
}

- (void)setWithInt:(int)pos {
  if (pos < 0) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:@"Negative index specified"] autorelease];
  }
  int len = (pos >> JavaUtilBitSet_OFFSET) + 1;
  if (len > (int) [((IOSLongArray *) nil_chk(bits_)) count]) {
    [self growLengthWithInt:len];
  }
  (*IOSLongArray_GetRef(bits_, len - 1)) |= IOSLongArray_Get(nil_chk(JavaUtilBitSet_TWO_N_ARRAY_), pos & JavaUtilBitSet_RIGHT_BITS);
  if (len > actualArrayLength_) {
    actualArrayLength_ = len;
    isLengthActual_ = YES;
  }
  [self needClear];
}

- (void)setWithInt:(int)pos
       withBoolean:(BOOL)val {
  if (val) {
    [self setWithInt:pos];
  }
  else {
    [self clearWithInt:pos];
  }
}

- (void)setWithInt:(int)pos1
           withInt:(int)pos2 {
  if (pos1 < 0 || pos2 < 0 || pos2 < pos1) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:@"Negative index specified"] autorelease];
  }
  if (pos1 == pos2) {
    return;
  }
  int len2 = ((pos2 - 1) >> JavaUtilBitSet_OFFSET) + 1;
  if (len2 > (int) [((IOSLongArray *) nil_chk(bits_)) count]) {
    [self growLengthWithInt:len2];
  }
  int idx1 = pos1 >> JavaUtilBitSet_OFFSET;
  int idx2 = (pos2 - 1) >> JavaUtilBitSet_OFFSET;
  long long int factor1 = (~0LL) << (pos1 & JavaUtilBitSet_RIGHT_BITS);
  long long int factor2 = (long long) (((unsigned long long) (~0LL)) >> (JavaUtilBitSet_ELM_SIZE - (pos2 & JavaUtilBitSet_RIGHT_BITS)));
  if (idx1 == idx2) {
    (*IOSLongArray_GetRef(bits_, idx1)) |= (factor1 & factor2);
  }
  else {
    (*IOSLongArray_GetRef(bits_, idx1)) |= factor1;
    (*IOSLongArray_GetRef(bits_, idx2)) |= factor2;
    for (int i = idx1 + 1; i < idx2; i++) {
      (*IOSLongArray_GetRef(bits_, i)) |= (~0LL);
    }
  }
  if (idx2 + 1 > actualArrayLength_) {
    actualArrayLength_ = idx2 + 1;
    isLengthActual_ = YES;
  }
  [self needClear];
}

- (void)needClear {
  self->needClear__ = YES;
}

- (void)setWithInt:(int)pos1
           withInt:(int)pos2
       withBoolean:(BOOL)val {
  if (val) {
    [self setWithInt:pos1 withInt:pos2];
  }
  else {
    [self clearWithInt:pos1 withInt:pos2];
  }
}

- (void)clear {
  if (needClear__) {
    for (int i = 0; i < (int) [((IOSLongArray *) nil_chk(bits_)) count]; i++) {
      (*IOSLongArray_GetRef(bits_, i)) = 0LL;
    }
    actualArrayLength_ = 0;
    isLengthActual_ = YES;
    needClear__ = NO;
  }
}

- (void)clearWithInt:(int)pos {
  if (pos < 0) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:@"Negative index specified"] autorelease];
  }
  if (!needClear__) {
    return;
  }
  int arrayPos = pos >> JavaUtilBitSet_OFFSET;
  if (arrayPos < actualArrayLength_) {
    (*IOSLongArray_GetRef(nil_chk(bits_), arrayPos)) &= ~(IOSLongArray_Get(nil_chk(JavaUtilBitSet_TWO_N_ARRAY_), pos & JavaUtilBitSet_RIGHT_BITS));
    if (IOSLongArray_Get(bits_, actualArrayLength_ - 1) == 0) {
      isLengthActual_ = NO;
    }
  }
}

- (void)clearWithInt:(int)pos1
             withInt:(int)pos2 {
  if (pos1 < 0 || pos2 < 0 || pos2 < pos1) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:@"Negative index specified"] autorelease];
  }
  if (!needClear__) {
    return;
  }
  int last = (actualArrayLength_ << JavaUtilBitSet_OFFSET);
  if (pos1 >= last || pos1 == pos2) {
    return;
  }
  if (pos2 > last) {
    pos2 = last;
  }
  int idx1 = pos1 >> JavaUtilBitSet_OFFSET;
  int idx2 = (pos2 - 1) >> JavaUtilBitSet_OFFSET;
  long long int factor1 = (~0LL) << (pos1 & JavaUtilBitSet_RIGHT_BITS);
  long long int factor2 = (long long) (((unsigned long long) (~0LL)) >> (JavaUtilBitSet_ELM_SIZE - (pos2 & JavaUtilBitSet_RIGHT_BITS)));
  if (idx1 == idx2) {
    (*IOSLongArray_GetRef(nil_chk(bits_), idx1)) &= ~(factor1 & factor2);
  }
  else {
    (*IOSLongArray_GetRef(nil_chk(bits_), idx1)) &= ~factor1;
    (*IOSLongArray_GetRef(bits_, idx2)) &= ~factor2;
    for (int i = idx1 + 1; i < idx2; i++) {
      (*IOSLongArray_GetRef(bits_, i)) = 0LL;
    }
  }
  if ((actualArrayLength_ > 0) && (IOSLongArray_Get(nil_chk(bits_), actualArrayLength_ - 1) == 0)) {
    isLengthActual_ = NO;
  }
}

- (void)flipWithInt:(int)pos {
  if (pos < 0) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:@"Negative index specified"] autorelease];
  }
  int len = (pos >> JavaUtilBitSet_OFFSET) + 1;
  if (len > (int) [((IOSLongArray *) nil_chk(bits_)) count]) {
    [self growLengthWithInt:len];
  }
  (*IOSLongArray_GetRef(bits_, len - 1)) ^= IOSLongArray_Get(nil_chk(JavaUtilBitSet_TWO_N_ARRAY_), pos & JavaUtilBitSet_RIGHT_BITS);
  if (len > actualArrayLength_) {
    actualArrayLength_ = len;
  }
  isLengthActual_ = !((actualArrayLength_ > 0) && (IOSLongArray_Get(bits_, actualArrayLength_ - 1) == 0));
  [self needClear];
}

- (void)flipWithInt:(int)pos1
            withInt:(int)pos2 {
  if (pos1 < 0 || pos2 < 0 || pos2 < pos1) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:@"Negative index specified"] autorelease];
  }
  if (pos1 == pos2) {
    return;
  }
  int len2 = ((pos2 - 1) >> JavaUtilBitSet_OFFSET) + 1;
  if (len2 > (int) [((IOSLongArray *) nil_chk(bits_)) count]) {
    [self growLengthWithInt:len2];
  }
  int idx1 = pos1 >> JavaUtilBitSet_OFFSET;
  int idx2 = (pos2 - 1) >> JavaUtilBitSet_OFFSET;
  long long int factor1 = (~0LL) << (pos1 & JavaUtilBitSet_RIGHT_BITS);
  long long int factor2 = (long long) (((unsigned long long) (~0LL)) >> (JavaUtilBitSet_ELM_SIZE - (pos2 & JavaUtilBitSet_RIGHT_BITS)));
  if (idx1 == idx2) {
    (*IOSLongArray_GetRef(bits_, idx1)) ^= (factor1 & factor2);
  }
  else {
    (*IOSLongArray_GetRef(bits_, idx1)) ^= factor1;
    (*IOSLongArray_GetRef(bits_, idx2)) ^= factor2;
    for (int i = idx1 + 1; i < idx2; i++) {
      (*IOSLongArray_GetRef(bits_, i)) ^= (~0LL);
    }
  }
  if (len2 > actualArrayLength_) {
    actualArrayLength_ = len2;
  }
  isLengthActual_ = !((actualArrayLength_ > 0) && (IOSLongArray_Get(bits_, actualArrayLength_ - 1) == 0));
  [self needClear];
}

- (BOOL)intersectsWithJavaUtilBitSet:(JavaUtilBitSet *)bs {
  IOSLongArray *bsBits = ((JavaUtilBitSet *) nil_chk(bs))->bits_;
  int length1 = actualArrayLength_, length2 = bs->actualArrayLength_;
  if (length1 <= length2) {
    for (int i = 0; i < length1; i++) {
      if ((IOSLongArray_Get(nil_chk(bits_), i) & IOSLongArray_Get(nil_chk(bsBits), i)) != 0LL) {
        return YES;
      }
    }
  }
  else {
    for (int i = 0; i < length2; i++) {
      if ((IOSLongArray_Get(nil_chk(bits_), i) & IOSLongArray_Get(nil_chk(bsBits), i)) != 0LL) {
        return YES;
      }
    }
  }
  return NO;
}

- (void)andWithJavaUtilBitSet:(JavaUtilBitSet *)bs {
  IOSLongArray *bsBits = ((JavaUtilBitSet *) nil_chk(bs))->bits_;
  if (!needClear__) {
    return;
  }
  int length1 = actualArrayLength_, length2 = bs->actualArrayLength_;
  if (length1 <= length2) {
    for (int i = 0; i < length1; i++) {
      (*IOSLongArray_GetRef(nil_chk(bits_), i)) &= IOSLongArray_Get(nil_chk(bsBits), i);
    }
  }
  else {
    for (int i = 0; i < length2; i++) {
      (*IOSLongArray_GetRef(nil_chk(bits_), i)) &= IOSLongArray_Get(nil_chk(bsBits), i);
    }
    for (int i = length2; i < length1; i++) {
      (*IOSLongArray_GetRef(nil_chk(bits_), i)) = 0;
    }
    actualArrayLength_ = length2;
  }
  isLengthActual_ = !((actualArrayLength_ > 0) && (IOSLongArray_Get(nil_chk(bits_), actualArrayLength_ - 1) == 0));
}

- (void)andNotWithJavaUtilBitSet:(JavaUtilBitSet *)bs {
  IOSLongArray *bsBits = ((JavaUtilBitSet *) nil_chk(bs))->bits_;
  if (!needClear__) {
    return;
  }
  int range = actualArrayLength_ < bs->actualArrayLength_ ? actualArrayLength_ : bs->actualArrayLength_;
  for (int i = 0; i < range; i++) {
    (*IOSLongArray_GetRef(nil_chk(bits_), i)) &= ~IOSLongArray_Get(nil_chk(bsBits), i);
  }
  if (actualArrayLength_ < range) {
    actualArrayLength_ = range;
  }
  isLengthActual_ = !((actualArrayLength_ > 0) && (IOSLongArray_Get(nil_chk(bits_), actualArrayLength_ - 1) == 0));
}

- (void)orWithJavaUtilBitSet:(JavaUtilBitSet *)bs {
  int bsActualLen = [((JavaUtilBitSet *) nil_chk(bs)) getActualArrayLength];
  if (bsActualLen > (int) [((IOSLongArray *) nil_chk(bits_)) count]) {
    IOSLongArray *tempBits = [IOSLongArray arrayWithLength:bsActualLen];
    [JavaLangSystem arraycopyWithId:bs->bits_ withInt:0 withId:tempBits withInt:0 withInt:bs->actualArrayLength_];
    for (int i = 0; i < actualArrayLength_; i++) {
      (*IOSLongArray_GetRef(tempBits, i)) |= IOSLongArray_Get(bits_, i);
    }
    JavaUtilBitSet_set_bits_(self, tempBits);
    actualArrayLength_ = bsActualLen;
    isLengthActual_ = YES;
  }
  else {
    IOSLongArray *bsBits = bs->bits_;
    for (int i = 0; i < bsActualLen; i++) {
      (*IOSLongArray_GetRef(bits_, i)) |= IOSLongArray_Get(bsBits, i);
    }
    if (bsActualLen > actualArrayLength_) {
      actualArrayLength_ = bsActualLen;
      isLengthActual_ = YES;
    }
  }
  [self needClear];
}

- (void)xorWithJavaUtilBitSet:(JavaUtilBitSet *)bs {
  int bsActualLen = [((JavaUtilBitSet *) nil_chk(bs)) getActualArrayLength];
  if (bsActualLen > (int) [((IOSLongArray *) nil_chk(bits_)) count]) {
    IOSLongArray *tempBits = [IOSLongArray arrayWithLength:bsActualLen];
    [JavaLangSystem arraycopyWithId:bs->bits_ withInt:0 withId:tempBits withInt:0 withInt:bs->actualArrayLength_];
    for (int i = 0; i < actualArrayLength_; i++) {
      (*IOSLongArray_GetRef(tempBits, i)) ^= IOSLongArray_Get(bits_, i);
    }
    JavaUtilBitSet_set_bits_(self, tempBits);
    actualArrayLength_ = bsActualLen;
    isLengthActual_ = !((actualArrayLength_ > 0) && (IOSLongArray_Get(bits_, actualArrayLength_ - 1) == 0));
  }
  else {
    IOSLongArray *bsBits = bs->bits_;
    for (int i = 0; i < bsActualLen; i++) {
      (*IOSLongArray_GetRef(bits_, i)) ^= IOSLongArray_Get(bsBits, i);
    }
    if (bsActualLen > actualArrayLength_) {
      actualArrayLength_ = bsActualLen;
      isLengthActual_ = YES;
    }
  }
  [self needClear];
}

- (int)size {
  return (int) [((IOSLongArray *) nil_chk(bits_)) count] << JavaUtilBitSet_OFFSET;
}

- (int)length {
  int idx = actualArrayLength_ - 1;
  while (idx >= 0 && IOSLongArray_Get(nil_chk(bits_), idx) == 0) {
    --idx;
  }
  actualArrayLength_ = idx + 1;
  if (idx == -1) {
    return 0;
  }
  int i = JavaUtilBitSet_ELM_SIZE - 1;
  long long int val = IOSLongArray_Get(nil_chk(bits_), idx);
  while ((val & (IOSLongArray_Get(nil_chk(JavaUtilBitSet_TWO_N_ARRAY_), i))) == 0 && i > 0) {
    i--;
  }
  return (idx << JavaUtilBitSet_OFFSET) + i + 1;
}

- (int)getActualArrayLength {
  if (isLengthActual_) {
    return actualArrayLength_;
  }
  int idx = actualArrayLength_ - 1;
  while (idx >= 0 && IOSLongArray_Get(nil_chk(bits_), idx) == 0) {
    --idx;
  }
  actualArrayLength_ = idx + 1;
  isLengthActual_ = YES;
  return actualArrayLength_;
}

- (NSString *)description {
  JavaLangStringBuilder *sb = [[[JavaLangStringBuilder alloc] initWithInt:(int) [((IOSLongArray *) nil_chk(bits_)) count] / 2] autorelease];
  int bitCount = 0;
  [sb appendWithChar:'{'];
  BOOL comma = NO;
  for (int i = 0; i < (int) [bits_ count]; i++) {
    if (IOSLongArray_Get(bits_, i) == 0) {
      bitCount += JavaUtilBitSet_ELM_SIZE;
      continue;
    }
    for (int j = 0; j < JavaUtilBitSet_ELM_SIZE; j++) {
      if (((IOSLongArray_Get(bits_, i) & (IOSLongArray_Get(nil_chk(JavaUtilBitSet_TWO_N_ARRAY_), j))) != 0)) {
        if (comma) {
          [sb appendWithNSString:@", "];
        }
        [sb appendWithInt:bitCount];
        comma = YES;
      }
      bitCount++;
    }
  }
  [sb appendWithChar:'}'];
  return [sb description];
}

- (int)nextSetBitWithInt:(int)pos {
  if (pos < 0) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:@"Negative index specified"] autorelease];
  }
  if (pos >= actualArrayLength_ << JavaUtilBitSet_OFFSET) {
    return -1;
  }
  int idx = pos >> JavaUtilBitSet_OFFSET;
  if (IOSLongArray_Get(nil_chk(bits_), idx) != 0LL) {
    for (int j = pos & JavaUtilBitSet_RIGHT_BITS; j < JavaUtilBitSet_ELM_SIZE; j++) {
      if (((IOSLongArray_Get(bits_, idx) & (IOSLongArray_Get(nil_chk(JavaUtilBitSet_TWO_N_ARRAY_), j))) != 0)) {
        return (idx << JavaUtilBitSet_OFFSET) + j;
      }
    }
  }
  idx++;
  while (idx < actualArrayLength_ && IOSLongArray_Get(bits_, idx) == 0LL) {
    idx++;
  }
  if (idx == actualArrayLength_) {
    return -1;
  }
  for (int j = 0; j < JavaUtilBitSet_ELM_SIZE; j++) {
    if (((IOSLongArray_Get(bits_, idx) & (IOSLongArray_Get(nil_chk(JavaUtilBitSet_TWO_N_ARRAY_), j))) != 0)) {
      return (idx << JavaUtilBitSet_OFFSET) + j;
    }
  }
  return -1;
}

- (int)nextClearBitWithInt:(int)pos {
  if (pos < 0) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:@"Negative index specified"] autorelease];
  }
  int length = actualArrayLength_;
  int bssize = length << JavaUtilBitSet_OFFSET;
  if (pos >= bssize) {
    return pos;
  }
  int idx = pos >> JavaUtilBitSet_OFFSET;
  if (IOSLongArray_Get(nil_chk(bits_), idx) != (~0LL)) {
    for (int j = pos % JavaUtilBitSet_ELM_SIZE; j < JavaUtilBitSet_ELM_SIZE; j++) {
      if (((IOSLongArray_Get(bits_, idx) & (IOSLongArray_Get(nil_chk(JavaUtilBitSet_TWO_N_ARRAY_), j))) == 0)) {
        return idx * JavaUtilBitSet_ELM_SIZE + j;
      }
    }
  }
  idx++;
  while (idx < length && IOSLongArray_Get(bits_, idx) == (~0LL)) {
    idx++;
  }
  if (idx == length) {
    return bssize;
  }
  for (int j = 0; j < JavaUtilBitSet_ELM_SIZE; j++) {
    if (((IOSLongArray_Get(bits_, idx) & (IOSLongArray_Get(nil_chk(JavaUtilBitSet_TWO_N_ARRAY_), j))) == 0)) {
      return (idx << JavaUtilBitSet_OFFSET) + j;
    }
  }
  return bssize;
}

- (BOOL)isEmpty {
  if (!needClear__) {
    return YES;
  }
  int length = (int) [((IOSLongArray *) nil_chk(bits_)) count];
  for (int idx = 0; idx < length; idx++) {
    if (IOSLongArray_Get(bits_, idx) != 0LL) {
      return NO;
    }
  }
  return YES;
}

- (int)cardinality {
  if (!needClear__) {
    return 0;
  }
  int count = 0;
  int length = (int) [((IOSLongArray *) nil_chk(bits_)) count];
  for (int idx = 0; idx < length; idx++) {
    count += [self popWithLong:IOSLongArray_Get(bits_, idx) & (long long) 0xffffffffLL];
    count += [self popWithLong:(long long) (((unsigned long long) IOSLongArray_Get(bits_, idx)) >> 32)];
  }
  return count;
}

- (int)popWithLong:(long long int)x {
  x = x - (((long long) (((unsigned long long) x) >> 1)) & (int) 0x55555555);
  x = (x & (int) 0x33333333) + (((long long) (((unsigned long long) x) >> 2)) & (int) 0x33333333);
  x = (x + ((long long) (((unsigned long long) x) >> 4))) & (int) 0x0f0f0f0f;
  x = x + ((long long) (((unsigned long long) x) >> 8));
  x = x + ((long long) (((unsigned long long) x) >> 16));
  return (int) x & (int) 0x0000003f;
}

+ (void)initialize {
  if (self == [JavaUtilBitSet class]) {
    JreOperatorRetainedAssign(&JavaUtilBitSet_TWO_N_ARRAY_, nil, [IOSLongArray arrayWithLongs:(long long int[]){ (long long) 0x1LL, (long long) 0x2LL, (long long) 0x4LL, (long long) 0x8LL, (long long) 0x10LL, (long long) 0x20LL, (long long) 0x40LL, (long long) 0x80LL, (long long) 0x100LL, (long long) 0x200LL, (long long) 0x400LL, (long long) 0x800LL, (long long) 0x1000LL, (long long) 0x2000LL, (long long) 0x4000LL, (long long) 0x8000LL, (long long) 0x10000LL, (long long) 0x20000LL, (long long) 0x40000LL, (long long) 0x80000LL, (long long) 0x100000LL, (long long) 0x200000LL, (long long) 0x400000LL, (long long) 0x800000LL, (long long) 0x1000000LL, (long long) 0x2000000LL, (long long) 0x4000000LL, (long long) 0x8000000LL, (long long) 0x10000000LL, (long long) 0x20000000LL, (long long) 0x40000000LL, (long long) 0x80000000LL, (long long) 0x100000000LL, (long long) 0x200000000LL, (long long) 0x400000000LL, (long long) 0x800000000LL, (long long) 0x1000000000LL, (long long) 0x2000000000LL, (long long) 0x4000000000LL, (long long) 0x8000000000LL, (long long) 0x10000000000LL, (long long) 0x20000000000LL, (long long) 0x40000000000LL, (long long) 0x80000000000LL, (long long) 0x100000000000LL, (long long) 0x200000000000LL, (long long) 0x400000000000LL, (long long) 0x800000000000LL, (long long) 0x1000000000000LL, (long long) 0x2000000000000LL, (long long) 0x4000000000000LL, (long long) 0x8000000000000LL, (long long) 0x10000000000000LL, (long long) 0x20000000000000LL, (long long) 0x40000000000000LL, (long long) 0x80000000000000LL, (long long) 0x100000000000000LL, (long long) 0x200000000000000LL, (long long) 0x400000000000000LL, (long long) 0x800000000000000LL, (long long) 0x1000000000000000LL, (long long) 0x2000000000000000LL, (long long) 0x4000000000000000LL, -0x7fffffffffffffffLL - 1 } count:64]);
  }
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilBitSet_set_bits_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilBitSet *)other {
  [super copyAllFieldsTo:other];
  other->actualArrayLength_ = actualArrayLength_;
  JavaUtilBitSet_set_bits_(other, bits_);
  other->isLengthActual_ = isLengthActual_;
  other->needClear__ = needClear__;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:bits_ name:@"bits"]];
  return result;
}

@end
