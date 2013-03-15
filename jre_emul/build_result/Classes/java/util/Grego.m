//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/android/libcore/luni/src/main/java/java/util/Grego.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSIntArray.h"
#import "IOSLongArray.h"
#import "java/util/Calendar.h"
#import "java/util/Grego.h"

@implementation JavaUtilGrego

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaUtilGrego_MONTH_LENGTH_ name:@"JavaUtilGrego_MONTH_LENGTH_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaUtilGrego_DAYS_BEFORE_ name:@"JavaUtilGrego_DAYS_BEFORE_"]];
  return result;
}

static IOSIntArray * JavaUtilGrego_MONTH_LENGTH_;
static IOSIntArray * JavaUtilGrego_DAYS_BEFORE_;

+ (long long int)MIN_MILLIS {
  return JavaUtilGrego_MIN_MILLIS;
}

+ (long long int)MAX_MILLIS {
  return JavaUtilGrego_MAX_MILLIS;
}

+ (int)MILLIS_PER_SECOND {
  return JavaUtilGrego_MILLIS_PER_SECOND;
}

+ (int)MILLIS_PER_MINUTE {
  return JavaUtilGrego_MILLIS_PER_MINUTE;
}

+ (int)MILLIS_PER_HOUR {
  return JavaUtilGrego_MILLIS_PER_HOUR;
}

+ (int)MILLIS_PER_DAY {
  return JavaUtilGrego_MILLIS_PER_DAY;
}

+ (IOSIntArray *)MONTH_LENGTH {
  return JavaUtilGrego_MONTH_LENGTH_;
}

+ (IOSIntArray *)DAYS_BEFORE {
  return JavaUtilGrego_DAYS_BEFORE_;
}

+ (BOOL)isLeapYearWithInt:(int)year {
  return ((year & (int) 0x3) == 0) && ((year % 100 != 0) || (year % 400 == 0));
}

+ (int)monthLengthWithInt:(int)year
                  withInt:(int)month {
  return [((IOSIntArray *) NIL_CHK(JavaUtilGrego_MONTH_LENGTH_)) intAtIndex:month + ([JavaUtilGrego isLeapYearWithInt:year] ? 12 : 0)];
}

+ (int)previousMonthLengthWithInt:(int)year
                          withInt:(int)month {
  return (month > 0) ? [JavaUtilGrego monthLengthWithInt:year withInt:month - 1] : 31;
}

+ (long long int)fieldsToDayWithInt:(int)year
                            withInt:(int)month
                            withInt:(int)dom {
  int y = year - 1;
  long long int julian = 365 * y + [JavaUtilGrego floorDivideWithLongInt:y withLongInt:4] + (JavaUtilGrego_JULIAN_1_CE - 3) + [JavaUtilGrego floorDivideWithLongInt:y withLongInt:400] - [JavaUtilGrego floorDivideWithLongInt:y withLongInt:100] + 2 + [((IOSIntArray *) NIL_CHK(JavaUtilGrego_DAYS_BEFORE_)) intAtIndex:month + ([JavaUtilGrego isLeapYearWithInt:year] ? 12 : 0)] + dom;
  return julian - JavaUtilGrego_JULIAN_1970_CE;
}

+ (int)dayOfWeekWithLongInt:(long long int)day {
  IOSLongArray *remainder = [[[IOSLongArray alloc] initWithLength:1] autorelease];
  [JavaUtilGrego floorDivideWithLongInt:day + JavaUtilCalendar_THURSDAY withLongInt:7 withJavaLangLongArray:remainder];
  int dayOfWeek = (int) [((IOSLongArray *) NIL_CHK(remainder)) longAtIndex:0];
  dayOfWeek = (dayOfWeek == 0) ? 7 : dayOfWeek;
  return dayOfWeek;
}

+ (IOSIntArray *)dayToFieldsWithLongInt:(long long int)day
               withJavaLangIntegerArray:(IOSIntArray *)fields {
  if (fields == nil || (int) [((IOSIntArray *) NIL_CHK(fields)) count] < 5) {
    fields = [[[IOSIntArray alloc] initWithLength:5] autorelease];
  }
  day += JavaUtilGrego_JULIAN_1970_CE - JavaUtilGrego_JULIAN_1_CE;
  IOSLongArray *rem = [[[IOSLongArray alloc] initWithLength:1] autorelease];
  long long int n400 = [JavaUtilGrego floorDivideWithLongInt:day withLongInt:146097 withJavaLangLongArray:rem];
  long long int n100 = [JavaUtilGrego floorDivideWithLongInt:[((IOSLongArray *) NIL_CHK(rem)) longAtIndex:0] withLongInt:36524 withJavaLangLongArray:rem];
  long long int n4 = [JavaUtilGrego floorDivideWithLongInt:[((IOSLongArray *) NIL_CHK(rem)) longAtIndex:0] withLongInt:1461 withJavaLangLongArray:rem];
  long long int n1 = [JavaUtilGrego floorDivideWithLongInt:[((IOSLongArray *) NIL_CHK(rem)) longAtIndex:0] withLongInt:365 withJavaLangLongArray:rem];
  int year = (int) (400 * n400 + 100 * n100 + 4 * n4 + n1);
  int dayOfYear = (int) [((IOSLongArray *) NIL_CHK(rem)) longAtIndex:0];
  if (n100 == 4 || n1 == 4) {
    dayOfYear = 365;
  }
  else {
    ++year;
  }
  BOOL isLeap = [JavaUtilGrego isLeapYearWithInt:year];
  int correction = 0;
  int march1 = isLeap ? 60 : 59;
  if (dayOfYear >= march1) {
    correction = isLeap ? 1 : 2;
  }
  int month = (12 * (dayOfYear + correction) + 6) / 367;
  int dayOfMonth = dayOfYear - [((IOSIntArray *) NIL_CHK(JavaUtilGrego_DAYS_BEFORE_)) intAtIndex:isLeap ? month + 12 : month] + 1;
  int dayOfWeek = (int) ((day + 2) % 7);
  if (dayOfWeek < 1) {
    dayOfWeek += 7;
  }
  dayOfYear++;
  [((IOSIntArray *) NIL_CHK(fields)) replaceIntAtIndex:0 withInt:year];
  [((IOSIntArray *) NIL_CHK(fields)) replaceIntAtIndex:1 withInt:month];
  [((IOSIntArray *) NIL_CHK(fields)) replaceIntAtIndex:2 withInt:dayOfMonth];
  [((IOSIntArray *) NIL_CHK(fields)) replaceIntAtIndex:3 withInt:dayOfWeek];
  [((IOSIntArray *) NIL_CHK(fields)) replaceIntAtIndex:4 withInt:dayOfYear];
  return fields;
}

+ (IOSIntArray *)timeToFieldsWithLongInt:(long long int)time
                withJavaLangIntegerArray:(IOSIntArray *)fields {
  if (fields == nil || (int) [((IOSIntArray *) NIL_CHK(fields)) count] < 6) {
    fields = [[[IOSIntArray alloc] initWithLength:6] autorelease];
  }
  IOSLongArray *remainder = [[[IOSLongArray alloc] initWithLength:1] autorelease];
  long long int day = [JavaUtilGrego floorDivideWithLongInt:time withLongInt:24 * 60 * 60 * 1000 withJavaLangLongArray:remainder];
  [JavaUtilGrego dayToFieldsWithLongInt:day withJavaLangIntegerArray:fields];
  [((IOSIntArray *) NIL_CHK(fields)) replaceIntAtIndex:5 withInt:(int) [((IOSLongArray *) NIL_CHK(remainder)) longAtIndex:0]];
  return fields;
}

+ (long long int)floorDivideWithLongInt:(long long int)numerator
                            withLongInt:(long long int)denominator {
  return (numerator >= 0) ? numerator / denominator : ((numerator + 1) / denominator) - 1;
}

+ (long long int)floorDivideWithLongInt:(long long int)numerator
                            withLongInt:(long long int)denominator
                  withJavaLangLongArray:(IOSLongArray *)remainder {
  if (numerator >= 0) {
    [((IOSLongArray *) NIL_CHK(remainder)) replaceLongAtIndex:0 withLong:numerator % denominator];
    return numerator / denominator;
  }
  long long int quotient = ((numerator + 1) / denominator) - 1;
  [((IOSLongArray *) NIL_CHK(remainder)) replaceLongAtIndex:0 withLong:numerator - (quotient * denominator)];
  return quotient;
}

+ (int)getDayOfWeekInMonthWithInt:(int)year
                          withInt:(int)month
                          withInt:(int)dayOfMonth {
  int weekInMonth = (dayOfMonth + 6) / 7;
  if (weekInMonth == 4) {
    if (dayOfMonth + 7 > [JavaUtilGrego monthLengthWithInt:year withInt:month]) {
      weekInMonth = -1;
    }
  }
  else if (weekInMonth == 5) {
    weekInMonth = -1;
  }
  return weekInMonth;
}

+ (void)initialize {
  if (self == [JavaUtilGrego class]) {
    {
      JreOperatorRetainedAssign(&JavaUtilGrego_MONTH_LENGTH_, [IOSIntArray arrayWithInts:(int[]){ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 } count:24]);
    }
    {
      JreOperatorRetainedAssign(&JavaUtilGrego_DAYS_BEFORE_, [IOSIntArray arrayWithInts:(int[]){ 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335 } count:24]);
    }
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
