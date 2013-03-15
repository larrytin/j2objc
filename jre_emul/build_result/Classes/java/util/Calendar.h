//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/android/libcore/luni/src/main/java/java/util/Calendar.java
//
//  Created by retechretech on 13-3-15.
//

@class IOSBooleanArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaUtilDate;
@class JavaUtilLocale;
@class JavaUtilTimeZone;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/lang/Comparable.h"

#define JavaUtilCalendar_ALL_STYLES 0
#define JavaUtilCalendar_AM 0
#define JavaUtilCalendar_AM_PM 9
#define JavaUtilCalendar_APRIL 3
#define JavaUtilCalendar_AUGUST 7
#define JavaUtilCalendar_DATE 5
#define JavaUtilCalendar_DAY_OF_MONTH 5
#define JavaUtilCalendar_DAY_OF_WEEK 7
#define JavaUtilCalendar_DAY_OF_WEEK_IN_MONTH 8
#define JavaUtilCalendar_DAY_OF_YEAR 6
#define JavaUtilCalendar_DECEMBER 11
#define JavaUtilCalendar_DST_OFFSET 16
#define JavaUtilCalendar_ERA 0
#define JavaUtilCalendar_FEBRUARY 1
#define JavaUtilCalendar_FIELD_COUNT 17
#define JavaUtilCalendar_FRIDAY 6
#define JavaUtilCalendar_HOUR 10
#define JavaUtilCalendar_HOUR_OF_DAY 11
#define JavaUtilCalendar_JANUARY 0
#define JavaUtilCalendar_JULY 6
#define JavaUtilCalendar_JUNE 5
#define JavaUtilCalendar_LONG 2
#define JavaUtilCalendar_MARCH 2
#define JavaUtilCalendar_MAY 4
#define JavaUtilCalendar_MILLISECOND 14
#define JavaUtilCalendar_MINUTE 12
#define JavaUtilCalendar_MONDAY 2
#define JavaUtilCalendar_MONTH 2
#define JavaUtilCalendar_NOVEMBER 10
#define JavaUtilCalendar_OCTOBER 9
#define JavaUtilCalendar_PM 1
#define JavaUtilCalendar_SATURDAY 7
#define JavaUtilCalendar_SECOND 13
#define JavaUtilCalendar_SEPTEMBER 8
#define JavaUtilCalendar_SHORT 1
#define JavaUtilCalendar_SUNDAY 1
#define JavaUtilCalendar_THURSDAY 5
#define JavaUtilCalendar_TUESDAY 3
#define JavaUtilCalendar_UNDECIMBER 12
#define JavaUtilCalendar_WEDNESDAY 4
#define JavaUtilCalendar_WEEK_OF_MONTH 4
#define JavaUtilCalendar_WEEK_OF_YEAR 3
#define JavaUtilCalendar_YEAR 1
#define JavaUtilCalendar_ZONE_OFFSET 15
#define JavaUtilCalendar_serialVersionUID -1807547505821590642

@interface JavaUtilCalendar : NSObject < JavaIoSerializable, NSCopying, JavaLangComparable > {
 @public
  BOOL areFieldsSet_;
  IOSIntArray *fields_;
  IOSBooleanArray *isSet__;
  BOOL isTimeSet_;
  long long int time_;
  int lastTimeFieldSet_;
  int lastDateFieldSet_;
  BOOL lenient_;
  int firstDayOfWeek_;
  int minimalDaysInFirstWeek_;
  JavaUtilTimeZone *zone_;
}

@property (nonatomic, assign) BOOL areFieldsSet;
@property (nonatomic, retain) IOSIntArray *fields;
@property (nonatomic, retain) IOSBooleanArray *isSet_;
@property (nonatomic, assign) BOOL isTimeSet;
@property (nonatomic, assign) long long int time;
@property (nonatomic, assign) int lastTimeFieldSet;
@property (nonatomic, assign) int lastDateFieldSet;
@property (nonatomic, assign) BOOL lenient;
@property (nonatomic, assign) int firstDayOfWeek;
@property (nonatomic, assign) int minimalDaysInFirstWeek;
@property (nonatomic, retain) JavaUtilTimeZone *zone;

+ (int)JANUARY;
+ (int)FEBRUARY;
+ (int)MARCH;
+ (int)APRIL;
+ (int)MAY;
+ (int)JUNE;
+ (int)JULY;
+ (int)AUGUST;
+ (int)SEPTEMBER;
+ (int)OCTOBER;
+ (int)NOVEMBER;
+ (int)DECEMBER;
+ (int)UNDECIMBER;
+ (int)SUNDAY;
+ (int)MONDAY;
+ (int)TUESDAY;
+ (int)WEDNESDAY;
+ (int)THURSDAY;
+ (int)FRIDAY;
+ (int)SATURDAY;
+ (int)ERA;
+ (int)YEAR;
+ (int)MONTH;
+ (int)WEEK_OF_YEAR;
+ (int)WEEK_OF_MONTH;
+ (int)DATE;
+ (int)DAY_OF_MONTH;
+ (int)DAY_OF_YEAR;
+ (int)DAY_OF_WEEK;
+ (int)DAY_OF_WEEK_IN_MONTH;
+ (int)AM_PM;
+ (int)HOUR;
+ (int)HOUR_OF_DAY;
+ (int)MINUTE;
+ (int)SECOND;
+ (int)MILLISECOND;
+ (int)ZONE_OFFSET;
+ (int)DST_OFFSET;
+ (int)FIELD_COUNT;
+ (int)AM;
+ (int)PM;
+ (int)ALL_STYLES;
+ (int)SHORT;
+ (int)LONG;
+ (IOSObjectArray *)FIELD_NAMES;
- (id)init;
- (id)initWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone;
- (id)initWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone
            withJavaUtilLocale:(JavaUtilLocale *)locale;
- (void)initInstanceWithJavaUtilLocale:(JavaUtilLocale *)locale OBJC_METHOD_FAMILY_NONE;
- (void)addWithInt:(int)field
           withInt:(int)value;
- (BOOL)afterWithId:(id)calendar;
- (BOOL)beforeWithId:(id)calendar;
- (void)clear;
- (void)clearWithInt:(int)field;
- (id)clone;
- (void)complete;
- (void)computeFields;
- (void)computeTime;
- (BOOL)isEqual:(id)object;
- (int)getWithInt:(int)field;
- (int)getActualMaximumWithInt:(int)field;
- (int)getActualMinimumWithInt:(int)field;
+ (IOSObjectArray *)getAvailableLocales;
- (int)getFirstDayOfWeek;
- (int)getGreatestMinimumWithInt:(int)field;
+ (JavaUtilCalendar *)getInstance;
+ (JavaUtilCalendar *)getInstanceWithJavaUtilLocale:(JavaUtilLocale *)locale;
+ (JavaUtilCalendar *)getInstanceWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone;
+ (JavaUtilCalendar *)getInstanceWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone
                                   withJavaUtilLocale:(JavaUtilLocale *)locale;
- (int)getLeastMaximumWithInt:(int)field;
- (int)getMaximumWithInt:(int)field;
- (int)getMinimalDaysInFirstWeek;
- (int)getMinimumWithInt:(int)field;
- (JavaUtilDate *)getTime;
- (long long int)getTimeInMillis;
- (JavaUtilTimeZone *)getTimeZone;
- (NSUInteger)hash;
- (int)internalGetWithInt:(int)field;
- (BOOL)isLenient;
- (BOOL)isSetWithInt:(int)field;
- (void)rollWithInt:(int)field
            withInt:(int)value;
- (void)rollWithInt:(int)field
           withBOOL:(BOOL)increment;
- (void)setWithInt:(int)field
           withInt:(int)value;
- (void)setWithInt:(int)year
           withInt:(int)month
           withInt:(int)day;
- (void)setWithInt:(int)year
           withInt:(int)month
           withInt:(int)day
           withInt:(int)hourOfDay
           withInt:(int)minute;
- (void)setWithInt:(int)year
           withInt:(int)month
           withInt:(int)day
           withInt:(int)hourOfDay
           withInt:(int)minute
           withInt:(int)second;
- (void)setFirstDayOfWeekWithInt:(int)value;
- (void)setLenientWithBOOL:(BOOL)value;
- (void)setMinimalDaysInFirstWeekWithInt:(int)value;
- (void)setTimeWithJavaUtilDate:(JavaUtilDate *)date;
- (void)setTimeInMillisWithLongInt:(long long int)milliseconds;
- (void)setTimeZoneWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone;
- (NSString *)description;
- (int)compareToWithId:(JavaUtilCalendar *)anotherCalendar;
- (NSString *)getDisplayNameWithInt:(int)field
                            withInt:(int)style
                 withJavaUtilLocale:(JavaUtilLocale *)locale;
- (IOSObjectArray *)getDisplayNameArrayWithInt:(int)field
                                       withInt:(int)style
                            withJavaUtilLocale:(JavaUtilLocale *)locale;
+ (void)checkStyleWithInt:(int)style;
- (id<JavaUtilMap>)getDisplayNamesWithInt:(int)field
                                  withInt:(int)style
                       withJavaUtilLocale:(JavaUtilLocale *)locale;
+ (void)insertValuesInMapWithJavaUtilMap:(id<JavaUtilMap>)map
                       withNSStringArray:(IOSObjectArray *)values;
- (id)copyWithZone:(NSZone *)zone;
@end
