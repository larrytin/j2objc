//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/TimeZone.java
//
//  Created by retechretech on 13-4-19.
//

#import "IOSObjectArray.h"
#import "java/lang/AssertionError.h"
#import "java/lang/Character.h"
#import "java/lang/CloneNotSupportedException.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/Integer.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/NumberFormatException.h"
#import "java/lang/StringBuilder.h"
#import "java/util/Date.h"
#import "java/util/Locale.h"
#import "java/util/SimpleTimeZone.h"
#import "java/util/TimeZone.h"
#import "java/util/regex/Matcher.h"
#import "java/util/regex/Pattern.h"
#import "java/util/SimpleTimeZone.h"

@implementation JavaUtilTimeZone

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaUtilTimeZone_CUSTOM_ZONE_ID_PATTERN_ name:@"JavaUtilTimeZone_CUSTOM_ZONE_ID_PATTERN_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaUtilTimeZone_GMT_ name:@"JavaUtilTimeZone_GMT_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaUtilTimeZone_UTC_ name:@"JavaUtilTimeZone_UTC_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaUtilTimeZone_defaultTimeZone_ name:@"JavaUtilTimeZone_defaultTimeZone_"]];
  return result;
}

static JavaUtilRegexPattern * JavaUtilTimeZone_CUSTOM_ZONE_ID_PATTERN_;
static JavaUtilTimeZone * JavaUtilTimeZone_GMT_;
static JavaUtilTimeZone * JavaUtilTimeZone_UTC_;
static JavaUtilTimeZone * JavaUtilTimeZone_defaultTimeZone_;

- (NSString *)ID {
  return ID_;
}
- (void)setID:(NSString *)ID {
  JreOperatorRetainedAssign(&ID_, ID);
}
@synthesize ID = ID_;
- (id)nativeTimeZone {
  return nativeTimeZone_;
}
- (void)setNativeTimeZone:(id)nativeTimeZone {
  JreOperatorRetainedAssign(&nativeTimeZone_, nativeTimeZone);
}
@synthesize nativeTimeZone = nativeTimeZone_;

+ (JavaUtilRegexPattern *)CUSTOM_ZONE_ID_PATTERN {
  return JavaUtilTimeZone_CUSTOM_ZONE_ID_PATTERN_;
}

+ (int)SHORT {
  return JavaUtilTimeZone_SHORT;
}

+ (int)LONG {
  return JavaUtilTimeZone_LONG;
}

+ (JavaUtilTimeZone *)GMT {
  return JavaUtilTimeZone_GMT_;
}

+ (JavaUtilTimeZone *)UTC {
  return JavaUtilTimeZone_UTC_;
}

+ (JavaUtilTimeZone *)defaultTimeZone {
  return JavaUtilTimeZone_defaultTimeZone_;
}

+ (void)setDefaultTimeZone:(JavaUtilTimeZone *)defaultTimeZone {
  JreOperatorRetainedAssign(&JavaUtilTimeZone_defaultTimeZone_, defaultTimeZone);
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (id)initWithId:(id)nativeTimeZone {
  if ((self = [super init])) {
    self.nativeTimeZone = nativeTimeZone;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)clone {
  @try {
    return (id) [super clone];
  }
  @catch (JavaLangCloneNotSupportedException *e) {
    @throw [[[JavaLangAssertionError alloc] initWithId:e] autorelease];
  }
}

+ (IOSObjectArray *)getAvailableIDs   {
    NSArray *timeZones = [NSTimeZone knownTimeZoneNames];
    return [IOSObjectArray arrayWithNSArray:timeZones
    type:[IOSClass classWithClass:[NSString class]]];
  }

+ (IOSObjectArray *)getAvailableIDsWithInt:(int)offsetMillis   {
    NSInteger secondsOffset = offsetMillis / 1000;
    NSArray *timeZones = [NSTimeZone knownTimeZoneNames];
    NSMutableArray *results = [NSMutableArray array];
    for (NSString *id in timeZones) {
      NSTimeZone *tz = [NSTimeZone timeZoneWithName:id];
      if ([tz secondsFromGMT] == secondsOffset) {
        [results addObject:id];
      }
    }
    return [IOSObjectArray arrayWithNSArray:results
    type:[IOSClass classWithClass:[NSString class]]];
  }

+ (JavaUtilTimeZone *)getDefault {
  @synchronized([self class]) {
    {
      if (JavaUtilTimeZone_defaultTimeZone_ == nil) {
        JreOperatorRetainedAssign(&JavaUtilTimeZone_defaultTimeZone_, [JavaUtilTimeZone getDefaultNativeTimeZone]);
      }
      return (JavaUtilTimeZone *) [((JavaUtilTimeZone *) NIL_CHK(JavaUtilTimeZone_defaultTimeZone_)) clone];
    }
  }
}

+ (JavaUtilTimeZone *)getDefaultNativeTimeZone   {
    NSTimeZone *tz = [NSTimeZone defaultTimeZone];
    NSInteger offsetMillis = [tz secondsFromGMT] * 1000;
    JavaUtilTimeZone *result = [[JavaUtilSimpleTimeZone alloc] initWithInt:offsetMillis
    withNSString:[tz name]];
    return AUTORELEASE(result);
  }

- (NSString *)getDisplayName {
  return [self getDisplayNameWithBOOL:NO withInt:JavaUtilTimeZone_LONG withJavaUtilLocale:[JavaUtilLocale getDefault]];
}

- (NSString *)getDisplayNameWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return [self getDisplayNameWithBOOL:NO withInt:JavaUtilTimeZone_LONG withJavaUtilLocale:locale];
}

- (NSString *)getDisplayNameWithBOOL:(BOOL)daylightTime
                             withInt:(int)style {
  return [self getDisplayNameWithBOOL:daylightTime withInt:style withJavaUtilLocale:[JavaUtilLocale getDefault]];
}

- (NSString *)getDisplayNameWithBOOL:(BOOL)daylightTime
                             withInt:(int)style
                  withJavaUtilLocale:(JavaUtilLocale *)locale {
  if (style != JavaUtilTimeZone_SHORT && style != JavaUtilTimeZone_LONG) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  BOOL useDaylight = daylightTime && [self useDaylightTime];
  NSString *result = [self displayNameWithBOOL:useDaylight withBOOL:style == JavaUtilTimeZone_SHORT withJavaUtilLocale:locale];
  if (result != nil) {
    return result;
  }
  int offset = [self getRawOffset];
  if (useDaylight) {
    offset += [self getDSTSavings];
  }
  offset /= 60000;
  unichar sign = '+';
  if (offset < 0) {
    sign = '-';
    offset = -offset;
  }
  JavaLangStringBuilder *builder = [[[JavaLangStringBuilder alloc] initWithInt:9] autorelease];
  [((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithNSString:@"GMT"];
  [((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithUnichar:sign];
  [self appendNumberWithJavaLangStringBuilder:builder withInt:2 withInt:offset / 60];
  [((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithUnichar:':'];
  [self appendNumberWithJavaLangStringBuilder:builder withInt:2 withInt:offset % 60];
  return [((JavaLangStringBuilder *) NIL_CHK(builder)) description];
}

- (NSString *)displayNameWithBOOL:(BOOL)daylightTime
                         withBOOL:(BOOL)shortName
               withJavaUtilLocale:(JavaUtilLocale *)locale   {
    NSTimeZoneNameStyle zoneStyle;
    if (daylightTime) {
      zoneStyle = shortName ?
      NSTimeZoneNameStyleShortDaylightSaving : NSTimeZoneNameStyleDaylightSaving;
    } else {
      zoneStyle = shortName ?
      NSTimeZoneNameStyleShortGeneric : NSTimeZoneNameStyleGeneric;
    }
    
    // Find native locale.
    NSLocale *nativeLocale;
    if (locale) {
      NSMutableDictionary *components = [NSMutableDictionary dictionary];
      [components setObject:[locale getLanguage] forKey:NSLocaleLanguageCode];
      [components setObject:[locale getCountry]  forKey:NSLocaleCountryCode];
      [components setObject:[locale getVariant]  forKey:NSLocaleVariantCode];
      NSString *localeId = [NSLocale localeIdentifierFromComponents:components];
      nativeLocale = AUTORELEASE([[NSLocale alloc] initWithLocaleIdentifier:localeId]);
    } else {
      nativeLocale = [NSLocale currentLocale];
    }
    
    return [(NSTimeZone *) nativeTimeZone_ localizedName:zoneStyle locale:nativeLocale];
  }

- (void)appendNumberWithJavaLangStringBuilder:(JavaLangStringBuilder *)builder
                                      withInt:(int)count
                                      withInt:(int)value {
  NSString *string = [JavaLangInteger toStringWithInt:value];
  for (int i = 0; i < count - [NIL_CHK(string) length]; i++) {
    [((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithUnichar:'0'];
  }
  [((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithNSString:string];
}

- (NSString *)getID {
  return ID_;
}

- (int)getDSTSavings {
  return [self useDaylightTime] ? 3600000 : 0;
}

- (int)getOffsetWithLongInt:(long long int)time {
  if ([self inDaylightTimeWithJavaUtilDate:[[[JavaUtilDate alloc] initWithLongInt:time] autorelease]]) {
    return [self getRawOffset] + [self getDSTSavings];
  }
  return [self getRawOffset];
}

- (int)getOffsetWithInt:(int)era
                withInt:(int)year
                withInt:(int)month
                withInt:(int)day
                withInt:(int)dayOfWeek
                withInt:(int)timeOfDayMillis {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)getRawOffset   {
    return (int) [(NSTimeZone *) nativeTimeZone_ secondsFromGMT] * 1000;
  }

+ (JavaUtilTimeZone *)getTimeZoneWithNSString:(NSString *)id_ {
  @synchronized([self class]) {
    {
      if (id_ == nil) {
        @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"id == null"] autorelease];
      }
      if ([NIL_CHK(id_) length] == 3) {
        if ([NIL_CHK(id_) isEqual:@"GMT"]) {
          return (JavaUtilTimeZone *) [((JavaUtilTimeZone *) NIL_CHK(JavaUtilTimeZone_GMT_)) clone];
        }
        if ([NIL_CHK(id_) isEqual:@"UTC"]) {
          return (JavaUtilTimeZone *) [((JavaUtilTimeZone *) NIL_CHK(JavaUtilTimeZone_UTC_)) clone];
        }
      }
      JavaUtilTimeZone *zone = [JavaUtilTimeZone getNativeTimeZoneWithNSString:id_];
      if (zone == nil && [NIL_CHK(id_) length] > 3 && [NIL_CHK(id_) hasPrefix:@"GMT"]) {
        zone = [JavaUtilTimeZone getCustomTimeZoneWithNSString:id_];
      }
      return (zone != nil) ? zone : (JavaUtilTimeZone *) [((JavaUtilTimeZone *) NIL_CHK(JavaUtilTimeZone_GMT_)) clone];
    }
  }
}

+ (JavaUtilTimeZone *)getNativeTimeZoneWithNSString:(NSString *)id_   {
    NSTimeZone *tz = [NSTimeZone timeZoneWithAbbreviation:id_];
    if (!tz) {
      tz = [NSTimeZone timeZoneWithName:id_];
    }
    if (!tz) {
      return nil;
    }
    int offset = [tz secondsFromGMT] * 1000; // convert to milliseconds
    
    // Figure out the dates that daylight savings time starts and ends.
    NSDate *toDaylightSaving, *toStandard;
    if ([tz isDaylightSavingTime]) {
      toStandard = [tz nextDaylightSavingTimeTransition];
      toDaylightSaving =
      [tz nextDaylightSavingTimeTransitionAfterDate:toStandard];
    } else {
      toDaylightSaving = [tz nextDaylightSavingTimeTransition];
      toStandard = [tz nextDaylightSavingTimeTransitionAfterDate:toDaylightSaving];
    }
    if (toStandard && toDaylightSaving) {
      NSUInteger savingsOffset =
      [tz daylightSavingTimeOffsetForDate:toDaylightSaving] * 1000;
      if ([tz isDaylightSavingTime]) {
        // iOS returns current seconds, not the zone difference.
        offset -= savingsOffset;
      }
      
      // Fetch each date's components.
      NSCalendar *calendar = [NSCalendar currentCalendar];
      NSUInteger units = NSMonthCalendarUnit | NSDayCalendarUnit |
      NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
      NSDateComponents *daylight = [calendar components:units
      fromDate:toDaylightSaving];
      NSDateComponents *standard = [calendar components:units
      fromDate:toStandard];
      
      // Convert each day's date components to milliseconds since midnight.
      int daylightTime = (([daylight hour] * 60 * 60) +
      ([daylight minute] * 60) +
      [daylight second]) * 1000;
      int standardTime = (([standard hour] * 60 * 60) +
      ([standard minute] * 60) +
      [standard second]) * 1000;
      
      return AUTORELEASE([[JavaUtilSimpleTimeZone alloc]
      initWithInt:offset
      withNSString:[tz name]
      withInt:[daylight month] - 1
      withInt:[daylight day] - 1
      withInt:0
      withInt:daylightTime
      withInt:[standard month] - 1
      withInt:[standard day] - 1
      withInt:0
      withInt:standardTime
      withInt:savingsOffset]);
    } else {
      return AUTORELEASE([[JavaUtilSimpleTimeZone alloc]
      initWithInt:offset withNSString:[tz name]]);
    }
  }

+ (JavaUtilTimeZone *)getCustomTimeZoneWithNSString:(NSString *)id_ {
  JavaUtilRegexMatcher *m = [((JavaUtilRegexPattern *) NIL_CHK(JavaUtilTimeZone_CUSTOM_ZONE_ID_PATTERN_)) matcherWithJavaLangCharSequence:id_];
  if (![((JavaUtilRegexMatcher *) NIL_CHK(m)) matches]) {
    return JavaUtilTimeZone_GMT_;
  }
  if ([NIL_CHK(id_) isEqual:@"GMT-00"]) {
    return JavaUtilTimeZone_GMT_;
  }
  int hour;
  int minute = 0;
  @try {
    hour = [JavaLangInteger parseIntWithNSString:[((JavaUtilRegexMatcher *) NIL_CHK(m)) groupWithInt:1]];
    if ([((JavaUtilRegexMatcher *) NIL_CHK(m)) groupWithInt:3] != nil) {
      minute = [JavaLangInteger parseIntWithNSString:[((JavaUtilRegexMatcher *) NIL_CHK(m)) groupWithInt:3]];
    }
  }
  @catch (JavaLangNumberFormatException *impossible) {
    @throw [[[JavaLangAssertionError alloc] initWithId:impossible] autorelease];
  }
  if (hour < 0 || hour > 23 || minute < 0 || minute > 59) {
    return nil;
  }
  unichar sign = [NIL_CHK(id_) charAtWithInt:3];
  int raw = (hour * 3600000) + (minute * 60000);
  if (sign == '-') {
    raw = -raw;
  }
  NSString *fmt = [((JavaUtilRegexMatcher *) NIL_CHK(m)) groupWithInt:2] != nil && ![JavaLangCharacter isDigitWithUnichar:[[((JavaUtilRegexMatcher *) NIL_CHK(m)) groupWithInt:2] charAtWithInt:0]] ? @"GMT%c%02d%02d" : @"GMT%c%02d:%02d";
  NSString *cleanId = [NSString stringWithFormat:fmt , sign, hour, minute, nil];
  return [[[JavaUtilSimpleTimeZone alloc] initWithInt:raw withNSString:cleanId] autorelease];
}

- (BOOL)hasSameRulesWithJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone {
  if (timeZone == nil) {
    return NO;
  }
  return [self getRawOffset] == [((JavaUtilTimeZone *) NIL_CHK(timeZone)) getRawOffset];
}

- (BOOL)inDaylightTimeWithJavaUtilDate:(JavaUtilDate *)time   {
    return [(NSTimeZone *) nativeTimeZone_ isDaylightSavingTime];
  }

+ (void)setDefaultWithJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone {
  @synchronized([self class]) {
    {
      JreOperatorRetainedAssign(&JavaUtilTimeZone_defaultTimeZone_, timeZone != nil ? (JavaUtilTimeZone *) [((JavaUtilTimeZone *) NIL_CHK(timeZone)) clone] : nil);
    }
  }
}

- (void)setIDWithNSString:(NSString *)id_   {
    if (!id_) {
      JavaLangNullPointerException *npe = [[JavaLangNullPointerException alloc] init];
      @throw AUTORELEASE(npe);
    }
    [self setID:id_];
    NSTimeZone *tz = [NSTimeZone timeZoneWithAbbreviation:id_];
    if (!tz) {
      tz = [NSTimeZone timeZoneWithName:id_];
    }
    if (tz) {
      self.nativeTimeZone = tz;
    }
  }

- (void)setRawOffsetWithInt:(int)offsetMillis {
}

- (BOOL)useDaylightTime   {
    return [(NSTimeZone *) nativeTimeZone_ nextDaylightSavingTimeTransition] != nil;
  }

+ (void)initialize {
  if (self == [JavaUtilTimeZone class]) {
    JreOperatorRetainedAssign(&JavaUtilTimeZone_CUSTOM_ZONE_ID_PATTERN_, [JavaUtilRegexPattern compileWithNSString:@"^GMT[-+](\\d{1,2})([:.]?(\\d\\d))?$"]);
    JreOperatorRetainedAssign(&JavaUtilTimeZone_GMT_, [[[JavaUtilSimpleTimeZone alloc] initWithInt:0 withNSString:@"GMT"] autorelease]);
    JreOperatorRetainedAssign(&JavaUtilTimeZone_UTC_, [[[JavaUtilSimpleTimeZone alloc] initWithInt:0 withNSString:@"UTC"] autorelease]);
  }
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&nativeTimeZone_, nil);
  JreOperatorRetainedAssign(&ID_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilTimeZone *typedCopy = (JavaUtilTimeZone *) copy;
  typedCopy.ID = ID_;
  typedCopy.nativeTimeZone = nativeTimeZone_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:ID_ name:@"ID"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:nativeTimeZone_ name:@"nativeTimeZone"]];
  return result;
}

@end
