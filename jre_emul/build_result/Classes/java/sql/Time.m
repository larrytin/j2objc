//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/sql/Time.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/sql/Time.h"
#include "java/util/Date.h"

@implementation JavaSqlTime

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaSqlTime_PADDING_ name:@"JavaSqlTime_PADDING_"]];
  return result;
}

static NSString * JavaSqlTime_PADDING_ = @"00";

+ (NSString *)PADDING {
  return JavaSqlTime_PADDING_;
}

- (id)initWithInt:(int)theHour
          withInt:(int)theMinute
          withInt:(int)theSecond {
  return JreMemDebugAdd([super initWithInt:70 withInt:0 withInt:1 withInt:theHour withInt:theMinute withInt:theSecond]);
}

- (id)initWithLong:(long long int)theTime {
  return JreMemDebugAdd([super initWithLong:theTime]);
}

- (int)getDate {
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"unimplemented"] autorelease];
}

- (int)getDay {
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"unimplemented"] autorelease];
}

- (int)getMonth {
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"unimplemented"] autorelease];
}

- (int)getYear {
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"unimplemented"] autorelease];
}

- (void)setDateWithInt:(int)i {
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"unimplemented"] autorelease];
}

- (void)setMonthWithInt:(int)i {
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"unimplemented"] autorelease];
}

- (void)setYearWithInt:(int)i {
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"unimplemented"] autorelease];
}

- (void)setTimeWithLong:(long long int)time {
  [super setTimeWithLong:time];
}

- (NSString *)description {
  JavaLangStringBuilder *sb = [[[JavaLangStringBuilder alloc] initWithInt:8] autorelease];
  [self formatWithInt:[self getHours] withInt:2 withJavaLangStringBuilder:sb];
  [sb appendWithChar:':'];
  [self formatWithInt:[self getMinutes] withInt:2 withJavaLangStringBuilder:sb];
  [sb appendWithChar:':'];
  [self formatWithInt:[self getSeconds] withInt:2 withJavaLangStringBuilder:sb];
  return [sb description];
}

- (void)formatWithInt:(int)date
              withInt:(int)digits
withJavaLangStringBuilder:(JavaLangStringBuilder *)sb {
  NSString *str = [NSString valueOfInt:date];
  if (digits - [((NSString *) nil_chk(str)) length] > 0) {
    [((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:[((NSString *) nil_chk(JavaSqlTime_PADDING_)) substring:0 endIndex:digits - [str length]]];
  }
  [((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:str];
}

+ (JavaSqlTime *)valueOfWithNSString:(NSString *)timeString {
  if (timeString == nil) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"timeString == null"] autorelease];
  }
  int firstIndex = [((NSString *) nil_chk(timeString)) indexOf:':'];
  int secondIndex = [timeString indexOf:':' fromIndex:firstIndex + 1];
  if (secondIndex == -1 || firstIndex == 0 || secondIndex + 1 == [timeString length]) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  int hour = [JavaLangInteger parseIntWithNSString:[timeString substring:0 endIndex:firstIndex]];
  int minute = [JavaLangInteger parseIntWithNSString:[timeString substring:firstIndex + 1 endIndex:secondIndex]];
  int second = [JavaLangInteger parseIntWithNSString:[timeString substring:secondIndex + 1 endIndex:[timeString length]]];
  return [[[JavaSqlTime alloc] initWithInt:hour withInt:minute withInt:second] autorelease];
}

+ (IOSObjectArray *)__annotations_JavaSqlTimeWithInt_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_getDate {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_getDay {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_getMonth {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_getYear {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_setDateWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_setMonthWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_setYearWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecatedImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

@end
