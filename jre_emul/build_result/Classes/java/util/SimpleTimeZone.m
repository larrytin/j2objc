//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/SimpleTimeZone.java
//
//  Created by retechretech on 13-4-19.
//

#import "IOSByteArray.h"
#import "IOSClass.h"
#import "IOSIntArray.h"
#import "java/lang/Boolean.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/util/Calendar.h"
#import "java/util/Date.h"
#import "java/util/Grego.h"
#import "java/util/GregorianCalendar.h"
#import "java/util/SimpleTimeZone.h"
#import "java/util/TimeZone.h"

@implementation JavaUtilSimpleTimeZone

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

@synthesize rawOffset = rawOffset_;
@synthesize startYear = startYear_;
@synthesize startMonth = startMonth_;
@synthesize startDay = startDay_;
@synthesize startDayOfWeek = startDayOfWeek_;
@synthesize startTime = startTime_;
@synthesize endMonth = endMonth_;
@synthesize endDay = endDay_;
@synthesize endDayOfWeek = endDayOfWeek_;
@synthesize endTime = endTime_;
@synthesize startMode = startMode_;
@synthesize endMode = endMode_;
@synthesize useDaylight = useDaylight_;
@synthesize dstSavings = dstSavings_;

+ (int)UTC_TIME {
  return JavaUtilSimpleTimeZone_UTC_TIME;
}

+ (int)STANDARD_TIME {
  return JavaUtilSimpleTimeZone_STANDARD_TIME;
}

+ (int)WALL_TIME {
  return JavaUtilSimpleTimeZone_WALL_TIME;
}

- (id)initJavaUtilSimpleTimeZoneWithInt:(int)offset
                           withNSString:(NSString *)name {
  if ((self = [super init])) {
    dstSavings_ = 3600000;
    [self setIDWithNSString:name];
    rawOffset_ = offset;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)offset
     withNSString:(NSString *)name {
  return [self initJavaUtilSimpleTimeZoneWithInt:offset withNSString:name];
}

- (id)initWithInt:(int)offset
     withNSString:(NSString *)name
          withInt:(int)startMonth
          withInt:(int)startDay
          withInt:(int)startDayOfWeek
          withInt:(int)startTime
          withInt:(int)endMonth
          withInt:(int)endDay
          withInt:(int)endDayOfWeek
          withInt:(int)endTime {
  return JreMemDebugAdd([self initJavaUtilSimpleTimeZoneWithInt:offset withNSString:name withInt:startMonth withInt:startDay withInt:startDayOfWeek withInt:startTime withInt:endMonth withInt:endDay withInt:endDayOfWeek withInt:endTime withInt:3600000]);
}

- (id)initJavaUtilSimpleTimeZoneWithInt:(int)offset
                           withNSString:(NSString *)name
                                withInt:(int)startMonth
                                withInt:(int)startDay
                                withInt:(int)startDayOfWeek
                                withInt:(int)startTime
                                withInt:(int)endMonth
                                withInt:(int)endDay
                                withInt:(int)endDayOfWeek
                                withInt:(int)endTime
                                withInt:(int)daylightSavings {
  if ((self = [self initJavaUtilSimpleTimeZoneWithInt:offset withNSString:name])) {
    if (daylightSavings <= 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid daylightSavings: %d", daylightSavings]] autorelease];
    }
    dstSavings_ = daylightSavings;
    self.startMonth = startMonth;
    self.startDay = startDay;
    self.startDayOfWeek = startDayOfWeek;
    self.startTime = startTime;
    [self setStartMode];
    self.endMonth = endMonth;
    self.endDay = endDay;
    self.endDayOfWeek = endDayOfWeek;
    self.endTime = endTime;
    [self setEndMode];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)offset
     withNSString:(NSString *)name
          withInt:(int)startMonth
          withInt:(int)startDay
          withInt:(int)startDayOfWeek
          withInt:(int)startTime
          withInt:(int)endMonth
          withInt:(int)endDay
          withInt:(int)endDayOfWeek
          withInt:(int)endTime
          withInt:(int)daylightSavings {
  return [self initJavaUtilSimpleTimeZoneWithInt:offset withNSString:name withInt:startMonth withInt:startDay withInt:startDayOfWeek withInt:startTime withInt:endMonth withInt:endDay withInt:endDayOfWeek withInt:endTime withInt:daylightSavings];
}

- (id)initWithInt:(int)offset
     withNSString:(NSString *)name
          withInt:(int)startMonth
          withInt:(int)startDay
          withInt:(int)startDayOfWeek
          withInt:(int)startTime
          withInt:(int)startTimeMode
          withInt:(int)endMonth
          withInt:(int)endDay
          withInt:(int)endDayOfWeek
          withInt:(int)endTime
          withInt:(int)endTimeMode
          withInt:(int)daylightSavings {
  if ((self = [self initJavaUtilSimpleTimeZoneWithInt:offset withNSString:name withInt:startMonth withInt:startDay withInt:startDayOfWeek withInt:startTime withInt:endMonth withInt:endDay withInt:endDayOfWeek withInt:endTime withInt:daylightSavings])) {
    startMode_ = startTimeMode;
    endMode_ = endTimeMode;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)clone {
  JavaUtilSimpleTimeZone *zone = (JavaUtilSimpleTimeZone *) [super clone];
  return zone;
}

- (BOOL)isEqual:(id)object {
  if (!([object isKindOfClass:[JavaUtilSimpleTimeZone class]])) {
    return NO;
  }
  JavaUtilSimpleTimeZone *tz = (JavaUtilSimpleTimeZone *) object;
  return [[self getID] isEqual:[((JavaUtilSimpleTimeZone *) NIL_CHK(tz)) getID]] && rawOffset_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).rawOffset && useDaylight_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).useDaylight && (!useDaylight_ || (startYear_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).startYear && startMonth_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).startMonth && startDay_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).startDay && startMode_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).startMode && startDayOfWeek_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).startDayOfWeek && startTime_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).startTime && endMonth_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).endMonth && endDay_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).endDay && endDayOfWeek_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).endDayOfWeek && endTime_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).endTime && endMode_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).endMode && dstSavings_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).dstSavings));
}

- (int)getDSTSavings {
  if (!useDaylight_) {
    return 0;
  }
  return dstSavings_;
}

- (int)getOffsetWithInt:(int)era
                withInt:(int)year
                withInt:(int)month
                withInt:(int)day
                withInt:(int)dayOfWeek
                withInt:(int)time {
  if (era != JavaUtilGregorianCalendar_BC && era != JavaUtilGregorianCalendar_AD) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid era: %d", era]] autorelease];
  }
  [self checkRangeWithInt:month withInt:dayOfWeek withInt:time];
  if (month != JavaUtilCalendar_FEBRUARY || day != 29 || ![self isLeapYearWithInt:year]) {
    [self checkDayWithInt:month withInt:day];
  }
  if (![self useDaylightTime] || era != JavaUtilGregorianCalendar_AD || year < startYear_) {
    return rawOffset_;
  }
  if (endMonth_ < startMonth_) {
    if (month > endMonth_ && month < startMonth_) {
      return rawOffset_;
    }
  }
  else {
    if (month < startMonth_ || month > endMonth_) {
      return rawOffset_;
    }
  }
  int ruleDay = 0, daysInMonth, firstDayOfMonth = [self mod7WithInt:dayOfWeek - day];
  if (month == startMonth_) {
    switch (startMode_) {
      case JavaUtilSimpleTimeZone_DOM_MODE:
      ruleDay = startDay_;
      break;
      case JavaUtilSimpleTimeZone_DOW_IN_MONTH_MODE:
      if (startDay_ >= 0) {
        ruleDay = [self mod7WithInt:startDayOfWeek_ - firstDayOfMonth] + 1 + (startDay_ - 1) * 7;
      }
      else {
        daysInMonth = [((IOSByteArray *) NIL_CHK([JavaUtilGregorianCalendar DaysInMonth])) byteAtIndex:startMonth_];
        if (startMonth_ == JavaUtilCalendar_FEBRUARY && [self isLeapYearWithInt:year]) {
          daysInMonth += 1;
        }
        ruleDay = daysInMonth + 1 + [self mod7WithInt:startDayOfWeek_ - (firstDayOfMonth + daysInMonth)] + startDay_ * 7;
      }
      break;
      case JavaUtilSimpleTimeZone_DOW_GE_DOM_MODE:
      ruleDay = startDay_ + [self mod7WithInt:startDayOfWeek_ - (firstDayOfMonth + startDay_ - 1)];
      break;
      case JavaUtilSimpleTimeZone_DOW_LE_DOM_MODE:
      ruleDay = startDay_ + [self mod7WithInt:startDayOfWeek_ - (firstDayOfMonth + startDay_ - 1)];
      if (ruleDay != startDay_) {
        ruleDay -= 7;
      }
      break;
    }
    if (ruleDay > day || ruleDay == day && time < startTime_) {
      return rawOffset_;
    }
  }
  int ruleTime = endTime_ - dstSavings_;
  int nextMonth = (month + 1) % 12;
  if (month == endMonth_ || (ruleTime < 0 && nextMonth == endMonth_)) {
    switch (endMode_) {
      case JavaUtilSimpleTimeZone_DOM_MODE:
      ruleDay = endDay_;
      break;
      case JavaUtilSimpleTimeZone_DOW_IN_MONTH_MODE:
      if (endDay_ >= 0) {
        ruleDay = [self mod7WithInt:endDayOfWeek_ - firstDayOfMonth] + 1 + (endDay_ - 1) * 7;
      }
      else {
        daysInMonth = [((IOSByteArray *) NIL_CHK([JavaUtilGregorianCalendar DaysInMonth])) byteAtIndex:endMonth_];
        if (endMonth_ == JavaUtilCalendar_FEBRUARY && [self isLeapYearWithInt:year]) {
          daysInMonth++;
        }
        ruleDay = daysInMonth + 1 + [self mod7WithInt:endDayOfWeek_ - (firstDayOfMonth + daysInMonth)] + endDay_ * 7;
      }
      break;
      case JavaUtilSimpleTimeZone_DOW_GE_DOM_MODE:
      ruleDay = endDay_ + [self mod7WithInt:endDayOfWeek_ - (firstDayOfMonth + endDay_ - 1)];
      break;
      case JavaUtilSimpleTimeZone_DOW_LE_DOM_MODE:
      ruleDay = endDay_ + [self mod7WithInt:endDayOfWeek_ - (firstDayOfMonth + endDay_ - 1)];
      if (ruleDay != endDay_) {
        ruleDay -= 7;
      }
      break;
    }
    int ruleMonth = endMonth_;
    if (ruleTime < 0) {
      int changeDays = 1 - (ruleTime / 86400000);
      ruleTime = (ruleTime % 86400000) + 86400000;
      ruleDay -= changeDays;
      if (ruleDay <= 0) {
        if (--ruleMonth < JavaUtilCalendar_JANUARY) {
          ruleMonth = JavaUtilCalendar_DECEMBER;
        }
        ruleDay += [((IOSByteArray *) NIL_CHK([JavaUtilGregorianCalendar DaysInMonth])) byteAtIndex:ruleMonth];
        if (ruleMonth == JavaUtilCalendar_FEBRUARY && [self isLeapYearWithInt:year]) {
          ruleDay++;
        }
      }
    }
    if (month == ruleMonth) {
      if (ruleDay < day || ruleDay == day && time >= ruleTime) {
        return rawOffset_;
      }
    }
    else if (nextMonth != ruleMonth) {
      return rawOffset_;
    }
  }
  return rawOffset_ + dstSavings_;
}

- (int)getOffsetWithLongInt:(long long int)time {
  if (![self useDaylightTime]) {
    return rawOffset_;
  }
  IOSIntArray *fields = [JavaUtilGrego timeToFieldsWithLongInt:time + rawOffset_ withJavaLangIntegerArray:nil];
  return [self getOffsetWithInt:JavaUtilGregorianCalendar_AD withInt:[((IOSIntArray *) NIL_CHK(fields)) intAtIndex:0] withInt:[((IOSIntArray *) NIL_CHK(fields)) intAtIndex:1] withInt:[((IOSIntArray *) NIL_CHK(fields)) intAtIndex:2] withInt:[((IOSIntArray *) NIL_CHK(fields)) intAtIndex:3] withInt:[((IOSIntArray *) NIL_CHK(fields)) intAtIndex:5]];
}

- (int)getRawOffset {
  return rawOffset_;
}

- (NSUInteger)hash {
  @synchronized(self) {
    {
      int hashCode = [[self getID] hash] + rawOffset_;
      if (useDaylight_) {
        hashCode += startYear_ + startMonth_ + startDay_ + startDayOfWeek_ + startTime_ + startMode_ + endMonth_ + endDay_ + endDayOfWeek_ + endTime_ + endMode_ + dstSavings_;
      }
      return hashCode;
    }
  }
}

- (BOOL)hasSameRulesWithJavaUtilTimeZone:(JavaUtilTimeZone *)zone {
  if (!([zone isKindOfClass:[JavaUtilSimpleTimeZone class]])) {
    return NO;
  }
  JavaUtilSimpleTimeZone *tz = (JavaUtilSimpleTimeZone *) zone;
  if (useDaylight_ != ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).useDaylight) {
    return NO;
  }
  if (!useDaylight_) {
    return rawOffset_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).rawOffset;
  }
  return rawOffset_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).rawOffset && dstSavings_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).dstSavings && startYear_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).startYear && startMonth_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).startMonth && startDay_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).startDay && startMode_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).startMode && startDayOfWeek_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).startDayOfWeek && startTime_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).startTime && endMonth_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).endMonth && endDay_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).endDay && endDayOfWeek_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).endDayOfWeek && endTime_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).endTime && endMode_ == ((JavaUtilSimpleTimeZone *) NIL_CHK(tz)).endMode;
}

- (BOOL)inDaylightTimeWithJavaUtilDate:(JavaUtilDate *)time {
  return [self useDaylightTime] && [self getOffsetWithLongInt:[((JavaUtilDate *) NIL_CHK(time)) getTime]] != [self getRawOffset];
}

- (BOOL)isLeapYearWithInt:(int)year {
  if (year > 1582) {
    return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
  }
  return year % 4 == 0;
}

- (int)mod7WithInt:(int)num1 {
  int rem = num1 % 7;
  return (num1 < 0 && rem < 0) ? 7 + rem : rem;
}

- (void)setDSTSavingsWithInt:(int)milliseconds {
  if (milliseconds > 0) {
    dstSavings_ = milliseconds;
  }
  else {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
}

- (void)checkRangeWithInt:(int)month
                  withInt:(int)dayOfWeek
                  withInt:(int)time {
  if (month < JavaUtilCalendar_JANUARY || month > JavaUtilCalendar_DECEMBER) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid month: %d", month]] autorelease];
  }
  if (dayOfWeek < JavaUtilCalendar_SUNDAY || dayOfWeek > JavaUtilCalendar_SATURDAY) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid day of week: %d", dayOfWeek]] autorelease];
  }
  if (time < 0 || time >= 24 * 3600000) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid time: %d", time]] autorelease];
  }
}

- (void)checkDayWithInt:(int)month
                withInt:(int)day {
  if (day <= 0 || day > [((IOSByteArray *) NIL_CHK([JavaUtilGregorianCalendar DaysInMonth])) byteAtIndex:month]) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid day of month: %d", day]] autorelease];
  }
}

- (void)setEndMode {
  if (endDayOfWeek_ == 0) {
    endMode_ = JavaUtilSimpleTimeZone_DOM_MODE;
  }
  else if (endDayOfWeek_ < 0) {
    endDayOfWeek_ = -endDayOfWeek_;
    if (endDay_ < 0) {
      endDay_ = -endDay_;
      endMode_ = JavaUtilSimpleTimeZone_DOW_LE_DOM_MODE;
    }
    else {
      endMode_ = JavaUtilSimpleTimeZone_DOW_GE_DOM_MODE;
    }
  }
  else {
    endMode_ = JavaUtilSimpleTimeZone_DOW_IN_MONTH_MODE;
  }
  useDaylight_ = startDay_ != 0 && endDay_ != 0;
  if (endDay_ != 0) {
    [self checkRangeWithInt:endMonth_ withInt:endMode_ == JavaUtilSimpleTimeZone_DOM_MODE ? 1 : endDayOfWeek_ withInt:endTime_];
    if (endMode_ != JavaUtilSimpleTimeZone_DOW_IN_MONTH_MODE) {
      [self checkDayWithInt:endMonth_ withInt:endDay_];
    }
    else {
      if (endDay_ < -5 || endDay_ > 5) {
        @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Day of week in month: %d", endDay_]] autorelease];
      }
    }
  }
  if (endMode_ != JavaUtilSimpleTimeZone_DOM_MODE) {
    endDayOfWeek_--;
  }
}

- (void)setEndRuleWithInt:(int)month
                  withInt:(int)dayOfMonth
                  withInt:(int)time {
  endMonth_ = month;
  endDay_ = dayOfMonth;
  endDayOfWeek_ = 0;
  endTime_ = time;
  [self setEndMode];
}

- (void)setEndRuleWithInt:(int)month
                  withInt:(int)day
                  withInt:(int)dayOfWeek
                  withInt:(int)time {
  endMonth_ = month;
  endDay_ = day;
  endDayOfWeek_ = dayOfWeek;
  endTime_ = time;
  [self setEndMode];
}

- (void)setEndRuleWithInt:(int)month
                  withInt:(int)day
                  withInt:(int)dayOfWeek
                  withInt:(int)time
                 withBOOL:(BOOL)after {
  endMonth_ = month;
  endDay_ = after ? day : -day;
  endDayOfWeek_ = -dayOfWeek;
  endTime_ = time;
  [self setEndMode];
}

- (void)setRawOffsetWithInt:(int)offset {
  rawOffset_ = offset;
}

- (void)setStartMode {
  if (startDayOfWeek_ == 0) {
    startMode_ = JavaUtilSimpleTimeZone_DOM_MODE;
  }
  else if (startDayOfWeek_ < 0) {
    startDayOfWeek_ = -startDayOfWeek_;
    if (startDay_ < 0) {
      startDay_ = -startDay_;
      startMode_ = JavaUtilSimpleTimeZone_DOW_LE_DOM_MODE;
    }
    else {
      startMode_ = JavaUtilSimpleTimeZone_DOW_GE_DOM_MODE;
    }
  }
  else {
    startMode_ = JavaUtilSimpleTimeZone_DOW_IN_MONTH_MODE;
  }
  useDaylight_ = startDay_ != 0 && endDay_ != 0;
  if (startDay_ != 0) {
    [self checkRangeWithInt:startMonth_ withInt:startMode_ == JavaUtilSimpleTimeZone_DOM_MODE ? 1 : startDayOfWeek_ withInt:startTime_];
    if (startMode_ != JavaUtilSimpleTimeZone_DOW_IN_MONTH_MODE) {
      [self checkDayWithInt:startMonth_ withInt:startDay_];
    }
    else {
      if (startDay_ < -5 || startDay_ > 5) {
        @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Day of week in month: %d", startDay_]] autorelease];
      }
    }
  }
  if (startMode_ != JavaUtilSimpleTimeZone_DOM_MODE) {
    startDayOfWeek_--;
  }
}

- (void)setStartRuleWithInt:(int)month
                    withInt:(int)dayOfMonth
                    withInt:(int)time {
  startMonth_ = month;
  startDay_ = dayOfMonth;
  startDayOfWeek_ = 0;
  startTime_ = time;
  [self setStartMode];
}

- (void)setStartRuleWithInt:(int)month
                    withInt:(int)day
                    withInt:(int)dayOfWeek
                    withInt:(int)time {
  startMonth_ = month;
  startDay_ = day;
  startDayOfWeek_ = dayOfWeek;
  startTime_ = time;
  [self setStartMode];
}

- (void)setStartRuleWithInt:(int)month
                    withInt:(int)day
                    withInt:(int)dayOfWeek
                    withInt:(int)time
                   withBOOL:(BOOL)after {
  startMonth_ = month;
  startDay_ = after ? day : -day;
  startDayOfWeek_ = -dayOfWeek;
  startTime_ = time;
  [self setStartMode];
}

- (void)setStartYearWithInt:(int)year {
  startYear_ = year;
  useDaylight_ = YES;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"%@[id=%@,offset=%d,dstSavings=%d,useDaylight=%@,startYear=%d,startMode=%d,startMonth=%d,startDay=%d,startDayOfWeek=%d,startTime=%d,endMode=%d,endMonth=%d,endDay=%d,endDayOfWeek=%d,endTime=%d]", [[self getClass] getName], [self getID], rawOffset_, dstSavings_, [JavaLangBoolean toStringWithBOOL:useDaylight_], startYear_, startMode_, startMonth_, startDay_, (useDaylight_ && (startMode_ != JavaUtilSimpleTimeZone_DOM_MODE) ? startDayOfWeek_ + 1 : 0), startTime_, endMode_, endMonth_, endDay_, (useDaylight_ && (endMode_ != JavaUtilSimpleTimeZone_DOM_MODE) ? endDayOfWeek_ + 1 : 0), endTime_];
}

- (BOOL)useDaylightTime {
  return useDaylight_;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilSimpleTimeZone *typedCopy = (JavaUtilSimpleTimeZone *) copy;
  typedCopy.rawOffset = rawOffset_;
  typedCopy.startYear = startYear_;
  typedCopy.startMonth = startMonth_;
  typedCopy.startDay = startDay_;
  typedCopy.startDayOfWeek = startDayOfWeek_;
  typedCopy.startTime = startTime_;
  typedCopy.endMonth = endMonth_;
  typedCopy.endDay = endDay_;
  typedCopy.endDayOfWeek = endDayOfWeek_;
  typedCopy.endTime = endTime_;
  typedCopy.startMode = startMode_;
  typedCopy.endMode = endMode_;
  typedCopy.useDaylight = useDaylight_;
  typedCopy.dstSavings = dstSavings_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
