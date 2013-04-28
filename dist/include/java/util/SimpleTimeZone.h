//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/SimpleTimeZone.java
//
//  Created by retechretech on 13-4-26.
//

@class JavaUtilDate;

#import "JreEmulation.h"
#import "java/util/TimeZone.h"

#define JavaUtilSimpleTimeZone_DOM_MODE 1
#define JavaUtilSimpleTimeZone_DOW_GE_DOM_MODE 3
#define JavaUtilSimpleTimeZone_DOW_IN_MONTH_MODE 2
#define JavaUtilSimpleTimeZone_DOW_LE_DOM_MODE 4
#define JavaUtilSimpleTimeZone_STANDARD_TIME 1
#define JavaUtilSimpleTimeZone_UTC_TIME 2
#define JavaUtilSimpleTimeZone_WALL_TIME 0
#define JavaUtilSimpleTimeZone_serialVersionUID -403250971215465050

@interface JavaUtilSimpleTimeZone : JavaUtilTimeZone {
 @public
  int rawOffset_;
  int startYear_, startMonth_, startDay_, startDayOfWeek_, startTime_;
  int endMonth_, endDay_, endDayOfWeek_, endTime_;
  int startMode_, endMode_;
  BOOL useDaylight_;
  int dstSavings_;
}

@property (nonatomic, assign) int rawOffset;
@property (nonatomic, assign) int startYear;
@property (nonatomic, assign) int startMonth;
@property (nonatomic, assign) int startDay;
@property (nonatomic, assign) int startDayOfWeek;
@property (nonatomic, assign) int startTime;
@property (nonatomic, assign) int endMonth;
@property (nonatomic, assign) int endDay;
@property (nonatomic, assign) int endDayOfWeek;
@property (nonatomic, assign) int endTime;
@property (nonatomic, assign) int startMode;
@property (nonatomic, assign) int endMode;
@property (nonatomic, assign) BOOL useDaylight;
@property (nonatomic, assign) int dstSavings;

+ (int)UTC_TIME;
+ (int)STANDARD_TIME;
+ (int)WALL_TIME;
- (id)initWithInt:(int)offset
     withNSString:(NSString *)name;
- (id)initWithInt:(int)offset
     withNSString:(NSString *)name
          withInt:(int)startMonth
          withInt:(int)startDay
          withInt:(int)startDayOfWeek
          withInt:(int)startTime
          withInt:(int)endMonth
          withInt:(int)endDay
          withInt:(int)endDayOfWeek
          withInt:(int)endTime;
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
          withInt:(int)daylightSavings;
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
          withInt:(int)daylightSavings;
- (id)clone;
- (BOOL)isEqual:(id)object;
- (int)getDSTSavings;
- (int)getOffsetWithInt:(int)era
                withInt:(int)year
                withInt:(int)month
                withInt:(int)day
                withInt:(int)dayOfWeek
                withInt:(int)time;
- (int)getOffsetWithLongInt:(long long int)time;
- (int)getRawOffset;
- (NSUInteger)hash;
- (BOOL)hasSameRulesWithJavaUtilTimeZone:(JavaUtilTimeZone *)zone;
- (BOOL)inDaylightTimeWithJavaUtilDate:(JavaUtilDate *)time;
- (BOOL)isLeapYearWithInt:(int)year;
- (int)mod7WithInt:(int)num1;
- (void)setDSTSavingsWithInt:(int)milliseconds;
- (void)checkRangeWithInt:(int)month
                  withInt:(int)dayOfWeek
                  withInt:(int)time;
- (void)checkDayWithInt:(int)month
                withInt:(int)day;
- (void)setEndMode;
- (void)setEndRuleWithInt:(int)month
                  withInt:(int)dayOfMonth
                  withInt:(int)time;
- (void)setEndRuleWithInt:(int)month
                  withInt:(int)day
                  withInt:(int)dayOfWeek
                  withInt:(int)time;
- (void)setEndRuleWithInt:(int)month
                  withInt:(int)day
                  withInt:(int)dayOfWeek
                  withInt:(int)time
                 withBOOL:(BOOL)after;
- (void)setRawOffsetWithInt:(int)offset;
- (void)setStartMode;
- (void)setStartRuleWithInt:(int)month
                    withInt:(int)dayOfMonth
                    withInt:(int)time;
- (void)setStartRuleWithInt:(int)month
                    withInt:(int)day
                    withInt:(int)dayOfWeek
                    withInt:(int)time;
- (void)setStartRuleWithInt:(int)month
                    withInt:(int)day
                    withInt:(int)dayOfWeek
                    withInt:(int)time
                   withBOOL:(BOOL)after;
- (void)setStartYearWithInt:(int)year;
- (NSString *)description;
- (BOOL)useDaylightTime;
@end
