//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/org/apache/harmony/luni/util/Util.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSByteArray.h"
#include "IOSCharArray.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/UTFDataFormatException.h"
#include "java/io/UnsupportedEncodingException.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/util/Calendar.h"
#include "java/util/Date.h"
#include "java/util/TimeZone.h"
#include "org/apache/harmony/luni/util/Util.h"

@implementation OrgApacheHarmonyLuniUtilUtil

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:OrgApacheHarmonyLuniUtilUtil_WEEKDAYS_ name:@"OrgApacheHarmonyLuniUtilUtil_WEEKDAYS_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:OrgApacheHarmonyLuniUtilUtil_MONTHS_ name:@"OrgApacheHarmonyLuniUtilUtil_MONTHS_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:OrgApacheHarmonyLuniUtilUtil_defaultEncoding_ name:@"OrgApacheHarmonyLuniUtilUtil_defaultEncoding_"]];
  return result;
}

static IOSObjectArray * OrgApacheHarmonyLuniUtilUtil_WEEKDAYS_;
static IOSObjectArray * OrgApacheHarmonyLuniUtilUtil_MONTHS_;
static NSString * OrgApacheHarmonyLuniUtilUtil_defaultEncoding_;

+ (IOSObjectArray *)WEEKDAYS {
  return OrgApacheHarmonyLuniUtilUtil_WEEKDAYS_;
}

+ (void)setWEEKDAYS:(IOSObjectArray *)WEEKDAYS {
  JreOperatorRetainedAssign(&OrgApacheHarmonyLuniUtilUtil_WEEKDAYS_, nil, WEEKDAYS);
}

+ (IOSObjectArray *)MONTHS {
  return OrgApacheHarmonyLuniUtilUtil_MONTHS_;
}

+ (void)setMONTHS:(IOSObjectArray *)MONTHS {
  JreOperatorRetainedAssign(&OrgApacheHarmonyLuniUtilUtil_MONTHS_, nil, MONTHS);
}

+ (NSString *)defaultEncoding {
  return OrgApacheHarmonyLuniUtilUtil_defaultEncoding_;
}

+ (IOSByteArray *)getBytesWithNSString:(NSString *)name {
  if (OrgApacheHarmonyLuniUtilUtil_defaultEncoding_ != nil) {
    @try {
      return [((NSString *) nil_chk(name)) getBytesWithCharset:OrgApacheHarmonyLuniUtilUtil_defaultEncoding_];
    }
    @catch (JavaIoUnsupportedEncodingException *e) {
    }
  }
  return [((NSString *) nil_chk(name)) getBytes];
}

+ (IOSByteArray *)getUTF8BytesWithNSString:(NSString *)name {
  @try {
    return [((NSString *) nil_chk(name)) getBytesWithCharset:@"UTF-8"];
  }
  @catch (JavaIoUnsupportedEncodingException *e) {
    return [OrgApacheHarmonyLuniUtilUtil getBytesWithNSString:name];
  }
}

+ (NSString *)toStringWithByteArray:(IOSByteArray *)bytes {
  if (OrgApacheHarmonyLuniUtilUtil_defaultEncoding_ != nil) {
    @try {
      return [NSString stringWithBytes:bytes offset:0 length:(int) [((IOSByteArray *) nil_chk(bytes)) count] charsetName:OrgApacheHarmonyLuniUtilUtil_defaultEncoding_];
    }
    @catch (JavaIoUnsupportedEncodingException *e) {
    }
  }
  return [NSString stringWithBytes:bytes offset:0 length:(int) [((IOSByteArray *) nil_chk(bytes)) count]];
}

+ (NSString *)toUTF8StringWithByteArray:(IOSByteArray *)bytes {
  return [OrgApacheHarmonyLuniUtilUtil toUTF8StringWithByteArray:bytes withInt:0 withInt:(int) [((IOSByteArray *) nil_chk(bytes)) count]];
}

+ (NSString *)toStringWithByteArray:(IOSByteArray *)bytes
                            withInt:(int)offset
                            withInt:(int)length {
  if (OrgApacheHarmonyLuniUtilUtil_defaultEncoding_ != nil) {
    @try {
      return [NSString stringWithBytes:bytes offset:offset length:length charsetName:OrgApacheHarmonyLuniUtilUtil_defaultEncoding_];
    }
    @catch (JavaIoUnsupportedEncodingException *e) {
    }
  }
  return [NSString stringWithBytes:bytes offset:offset length:length];
}

+ (NSString *)toUTF8StringWithByteArray:(IOSByteArray *)bytes
                                withInt:(int)offset
                                withInt:(int)length {
  @try {
    return [NSString stringWithBytes:bytes offset:offset length:length charsetName:@"UTF-8"];
  }
  @catch (JavaIoUnsupportedEncodingException *e) {
    return [OrgApacheHarmonyLuniUtilUtil toStringWithByteArray:bytes withInt:offset withInt:length];
  }
}

+ (long long int)parseDateWithNSString:(NSString *)string {
  int offset = 0, length = [((NSString *) nil_chk(string)) length], state = 0;
  int year = -1, month = -1, date = -1;
  int hour = -1, minute = -1, second = -1;
  int PAD = 0, LETTERS = 1, NUMBERS = 2;
  JavaLangStringBuilder *buffer = [[[JavaLangStringBuilder alloc] init] autorelease];
  while (offset <= length) {
    unichar next = offset < length ? [string charAtWithInt:offset] : 0x000d;
    offset++;
    int nextState;
    if ((next >= 'a' && next <= 'z') || (next >= 'A' && next <= 'Z')) nextState = LETTERS;
    else if (next >= '0' && next <= '9') nextState = NUMBERS;
    else if ([@" ,-:\r\t" indexOf:next] == -1) @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    else nextState = PAD;
    if (state == NUMBERS && nextState != NUMBERS) {
      int digit = [JavaLangInteger parseIntWithNSString:[buffer description]];
      [buffer setLengthWithInt:0];
      if (digit >= 70) {
        if (year != -1 || (next != ' ' && next != ',' && next != 0x000d)) @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
        year = digit;
      }
      else if (next == ':') {
        if (hour == -1) hour = digit;
        else if (minute == -1) minute = digit;
        else @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
      }
      else if (next == ' ' || next == ',' || next == '-' || next == 0x000d) {
        if (hour != -1 && minute == -1) minute = digit;
        else if (minute != -1 && second == -1) second = digit;
        else if (date == -1) date = digit;
        else if (year == -1) year = digit;
        else @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
      }
      else if (year == -1 && month != -1 && date != -1) year = digit;
      else @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    }
    else if (state == LETTERS && nextState != LETTERS) {
      NSString *text = [((NSString *) nil_chk([buffer description])) uppercaseString];
      [buffer setLengthWithInt:0];
      if ([((NSString *) nil_chk(text)) length] < 3) @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
      if ([OrgApacheHarmonyLuniUtilUtil parseWithNSString:text withNSStringArray:OrgApacheHarmonyLuniUtilUtil_WEEKDAYS_] != -1) {
      }
      else if (month == -1 && (month = [OrgApacheHarmonyLuniUtilUtil parseWithNSString:text withNSStringArray:OrgApacheHarmonyLuniUtilUtil_MONTHS_]) != -1) {
      }
      else if ([text isEqual:@"GMT"]) {
      }
      else @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    }
    if (nextState == LETTERS || nextState == NUMBERS) [buffer appendWithUnichar:next];
    state = nextState;
  }
  if (year != -1 && month != -1 && date != -1) {
    if (hour == -1) hour = 0;
    if (minute == -1) minute = 0;
    if (second == -1) second = 0;
    JavaUtilCalendar *cal = [JavaUtilCalendar getInstanceWithJavaUtilTimeZone:[JavaUtilTimeZone getTimeZoneWithNSString:@"GMT"]];
    int current = [((JavaUtilCalendar *) nil_chk(cal)) getWithInt:JavaUtilCalendar_YEAR] - 80;
    if (year < 100) {
      year += current / 100 * 100;
      if (year < current) year += 100;
    }
    [cal setWithInt:JavaUtilCalendar_YEAR withInt:year];
    [cal setWithInt:JavaUtilCalendar_MONTH withInt:month];
    [cal setWithInt:JavaUtilCalendar_DATE withInt:date];
    [cal setWithInt:JavaUtilCalendar_HOUR_OF_DAY withInt:hour];
    [cal setWithInt:JavaUtilCalendar_MINUTE withInt:minute];
    [cal setWithInt:JavaUtilCalendar_SECOND withInt:second];
    [cal setWithInt:JavaUtilCalendar_MILLISECOND withInt:0];
    return [((JavaUtilDate *) nil_chk([cal getTime])) getTime];
  }
  @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
}

+ (int)parseWithNSString:(NSString *)string
       withNSStringArray:(IOSObjectArray *)array {
  int length = [((NSString *) nil_chk(string)) length];
  for (int i = 0; i < (int) [((IOSObjectArray *) nil_chk(array)) count]; i++) {
    if ([string regionMatches:YES thisOffset:0 aString:[array objectAtIndex:i] otherOffset:0 count:length]) return i;
  }
  return -1;
}

+ (NSString *)convertFromUTF8WithByteArray:(IOSByteArray *)buf
                                   withInt:(int)offset
                                   withInt:(int)utfSize {
  return [OrgApacheHarmonyLuniUtilUtil convertUTF8WithBufWithByteArray:buf withCharArray:[IOSCharArray arrayWithLength:utfSize] withInt:offset withInt:utfSize];
}

+ (IOSObjectArray *)__exceptions_convertFromUTF8WithByteArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoUTFDataFormatException getClass] } count:1 type:[IOSClass getClass]];
}

+ (NSString *)convertUTF8WithBufWithByteArray:(IOSByteArray *)buf
                                withCharArray:(IOSCharArray *)outArg
                                      withInt:(int)offset
                                      withInt:(int)utfSize {
  int count = 0, s = 0, a;
  while (count < utfSize) {
    if (((*[((IOSCharArray *) nil_chk(outArg)) charRefAtIndex:s]) = (unichar) [((IOSByteArray *) nil_chk(buf)) byteAtIndex:offset + count++]) < 0x0080) s++;
    else if (((a = [outArg charAtIndex:s]) & (int) 0xe0) == (int) 0xc0) {
      if (count >= utfSize) @throw [[[JavaIoUTFDataFormatException alloc] initWithNSString:[NSString stringWithFormat:@"Second byte at %d does not match UTF8 Specification", count]] autorelease];
      int b = [buf byteAtIndex:count++];
      if ((b & (int) 0xC0) != (int) 0x80) @throw [[[JavaIoUTFDataFormatException alloc] initWithNSString:[NSString stringWithFormat:@"Second byte at %d does not match UTF8 Specification", count]] autorelease];
      (*[outArg charRefAtIndex:s++]) = (unichar) (((a & (int) 0x1F) << 6) | (b & (int) 0x3F));
    }
    else if ((a & (int) 0xf0) == (int) 0xe0) {
      if (count + 1 >= utfSize) @throw [[[JavaIoUTFDataFormatException alloc] initWithNSString:[NSString stringWithFormat:@"Third byte at %d does not match UTF8 Specification", (count + 1)]] autorelease];
      int b = [buf byteAtIndex:count++];
      int c = [buf byteAtIndex:count++];
      if (((b & (int) 0xC0) != (int) 0x80) || ((c & (int) 0xC0) != (int) 0x80)) @throw [[[JavaIoUTFDataFormatException alloc] initWithNSString:[NSString stringWithFormat:@"Second or third byte at %d does not match UTF8 Specification", (count - 2)]] autorelease];
      (*[outArg charRefAtIndex:s++]) = (unichar) (((a & (int) 0x0F) << 12) | ((b & (int) 0x3F) << 6) | (c & (int) 0x3F));
    }
    else {
      @throw [[[JavaIoUTFDataFormatException alloc] initWithNSString:[NSString stringWithFormat:@"Input at %d does not match UTF8 Specification", (count - 1)]] autorelease];
    }
  }
  return [NSString stringWithCharacters:outArg offset:0 length:s];
}

+ (IOSObjectArray *)__exceptions_convertUTF8WithBufWithByteArray_withCharArray_withInt_withInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoUTFDataFormatException getClass] } count:1 type:[IOSClass getClass]];
}

+ (NSString *)decodeWithNSString:(NSString *)s
                        withBOOL:(BOOL)convertPlus {
  return [OrgApacheHarmonyLuniUtilUtil decodeWithNSString:s withBOOL:convertPlus withNSString:nil];
}

+ (NSString *)decodeWithNSString:(NSString *)s
                        withBOOL:(BOOL)convertPlus
                    withNSString:(NSString *)encoding {
  if (!convertPlus && [((NSString *) nil_chk(s)) indexOf:'%'] == -1) return s;
  JavaLangStringBuilder *result = [[[JavaLangStringBuilder alloc] initWithInt:[((NSString *) nil_chk(s)) length]] autorelease];
  JavaIoByteArrayOutputStream *out = [[[JavaIoByteArrayOutputStream alloc] init] autorelease];
  for (int i = 0; i < [s length]; ) {
    unichar c = [s charAtWithInt:i];
    if (convertPlus && c == '+') [result appendWithUnichar:' '];
    else if (c == '%') {
      [out reset];
      do {
        if (i + 2 >= [s length]) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Incomplete %% sequence at\\: %d", i]] autorelease];
        int d1 = [JavaLangCharacter digitWithUnichar:[s charAtWithInt:i + 1] withInt:16];
        int d2 = [JavaLangCharacter digitWithUnichar:[s charAtWithInt:i + 2] withInt:16];
        if (d1 == -1 || d2 == -1) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid %% sequence (%@) at \\: %@", [s substring:i endIndex:i + 3], [NSString valueOfInt:i]]] autorelease];
        [out writeWithInt:(char) ((d1 << 4) + d2)];
        i += 3;
      }
      while (i < [s length] && [s charAtWithInt:i] == '%');
      if (encoding == nil) {
        [result appendWithNSString:[out description]];
      }
      else {
        @try {
          [result appendWithNSString:[out toStringWithNSString:encoding]];
        }
        @catch (JavaIoUnsupportedEncodingException *e) {
          @throw [[[JavaLangIllegalArgumentException alloc] initWithJavaLangThrowable:e] autorelease];
        }
      }
      continue;
    }
    else [result appendWithUnichar:c];
    i++;
  }
  return [result description];
}

+ (NSString *)encodeURLWithNSString:(NSString *)urlStr {
  NSString *digits = @"0123456789ABCDEF";
  JavaLangStringBuilder *buf = [[[JavaLangStringBuilder alloc] initWithInt:[((NSString *) nil_chk(urlStr)) length] + 16] autorelease];
  for (int i = 0; i < [urlStr length]; i++) {
    unichar ch = [urlStr charAtWithInt:i];
    if ('%' == ch) {
      if (i + 1 < [urlStr length] && i + 2 < [urlStr length] && [digits indexOf:[JavaLangCharacter toUpperCaseWithUnichar:[urlStr charAtWithInt:i + 1]]] != -1 && [digits indexOf:[JavaLangCharacter toUpperCaseWithUnichar:[urlStr charAtWithInt:i + 2]]] != -1) {
        [buf appendWithUnichar:ch];
        [buf appendWithUnichar:[urlStr charAtWithInt:i + 1]];
        [buf appendWithUnichar:[urlStr charAtWithInt:i + 2]];
        i += 2;
      }
      else {
        [buf appendWithNSString:@"%25"];
      }
    }
    else if ([@"\"<>%\\^[]`+$,{}`~| " indexOf:ch] == -1) {
      [buf appendWithUnichar:ch];
    }
    else {
      IOSByteArray *bytes = nil;
      @try {
        bytes = [[NSString stringWithCharacters:[IOSCharArray arrayWithCharacters:(unichar[]){ ch } count:1]] getBytesWithCharset:@"UTF-8"];
      }
      @catch (JavaIoUnsupportedEncodingException *e) {
        @throw [[[JavaLangAssertionError alloc] initWithId:e] autorelease];
      }
      for (int j = 0; j < (int) [((IOSByteArray *) nil_chk(bytes)) count]; j++) {
        [buf appendWithUnichar:'%'];
        [buf appendWithUnichar:[digits charAtWithInt:([bytes byteAtIndex:j] & (int) 0xf0) >> 4]];
        [buf appendWithUnichar:[digits charAtWithInt:[bytes byteAtIndex:j] & (int) 0xf]];
      }
    }
  }
  return [buf description];
}

+ (NSString *)toASCIILowerCaseWithNSString:(NSString *)s {
  int len = [((NSString *) nil_chk(s)) length];
  JavaLangStringBuilder *buffer = [[[JavaLangStringBuilder alloc] initWithInt:len] autorelease];
  for (int i = 0; i < len; i++) {
    unichar c = [s charAtWithInt:i];
    if ('A' <= c && c <= 'Z') {
      [buffer appendWithUnichar:(unichar) (c + ('a' - 'A'))];
    }
    else {
      [buffer appendWithUnichar:c];
    }
  }
  return [buffer description];
}

+ (NSString *)toASCIIUpperCaseWithNSString:(NSString *)s {
  int len = [((NSString *) nil_chk(s)) length];
  JavaLangStringBuilder *buffer = [[[JavaLangStringBuilder alloc] initWithInt:len] autorelease];
  for (int i = 0; i < len; i++) {
    unichar c = [s charAtWithInt:i];
    if ('a' <= c && c <= 'z') {
      [buffer appendWithUnichar:(unichar) (c - ('a' - 'A'))];
    }
    else {
      [buffer appendWithUnichar:c];
    }
  }
  return [buffer description];
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (void)initialize {
  if (self == [OrgApacheHarmonyLuniUtilUtil class]) {
    JreOperatorRetainedAssign(&OrgApacheHarmonyLuniUtilUtil_WEEKDAYS_, nil, [IOSObjectArray arrayWithObjects:(id[]){ @"", @"Sunday", @"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday" } count:8 type:[IOSClass classWithClass:[NSString class]]]);
    JreOperatorRetainedAssign(&OrgApacheHarmonyLuniUtilUtil_MONTHS_, nil, [IOSObjectArray arrayWithObjects:(id[]){ @"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December" } count:12 type:[IOSClass classWithClass:[NSString class]]]);
    {
      NSString *encoding = [JavaLangSystem getPropertyWithNSString:@"os.encoding"];
      if (encoding != nil) {
        @try {
          [@"" getBytesWithCharset:encoding];
        }
        @catch (JavaLangThrowable *t) {
          encoding = nil;
        }
      }
      JreOperatorRetainedAssign(&OrgApacheHarmonyLuniUtilUtil_defaultEncoding_, nil, encoding);
    }
  }
}

@end
