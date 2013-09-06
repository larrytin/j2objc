//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/org/junit/Assert.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _OrgJunitAssert_H_
#define _OrgJunitAssert_H_

@class IOSByteArray;
@class IOSCharArray;
@class IOSDoubleArray;
@class IOSFloatArray;
@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;
@class IOSShortArray;
@protocol OrgHamcrestMatcher;

#import "JreEmulation.h"

@interface OrgJunitAssert : NSObject {
}

- (id)init;
+ (void)assertTrueWithNSString:(NSString *)message
                      withBOOL:(BOOL)condition;
+ (void)assertTrueWithBOOL:(BOOL)condition;
+ (void)assertFalseWithNSString:(NSString *)message
                       withBOOL:(BOOL)condition;
+ (void)assertFalseWithBOOL:(BOOL)condition;
+ (void)failWithNSString:(NSString *)message;
+ (void)fail;
+ (void)assertEqualsWithNSString:(NSString *)message
                          withId:(id)expected
                          withId:(id)actual;
+ (BOOL)isEqualsWithId:(id)expected
                withId:(id)actual;
+ (void)assertEqualsWithId:(id)expected
                    withId:(id)actual;
+ (void)assertArrayEqualsWithNSString:(NSString *)message
                    withNSObjectArray:(IOSObjectArray *)expecteds
                    withNSObjectArray:(IOSObjectArray *)actuals;
+ (void)assertArrayEqualsWithNSObjectArray:(IOSObjectArray *)expecteds
                         withNSObjectArray:(IOSObjectArray *)actuals;
+ (void)assertArrayEqualsWithNSString:(NSString *)message
                        withByteArray:(IOSByteArray *)expecteds
                        withByteArray:(IOSByteArray *)actuals;
+ (void)assertArrayEqualsWithByteArray:(IOSByteArray *)expecteds
                         withByteArray:(IOSByteArray *)actuals;
+ (void)assertArrayEqualsWithNSString:(NSString *)message
                        withCharArray:(IOSCharArray *)expecteds
                        withCharArray:(IOSCharArray *)actuals;
+ (void)assertArrayEqualsWithCharArray:(IOSCharArray *)expecteds
                         withCharArray:(IOSCharArray *)actuals;
+ (void)assertArrayEqualsWithNSString:(NSString *)message
                       withShortArray:(IOSShortArray *)expecteds
                       withShortArray:(IOSShortArray *)actuals;
+ (void)assertArrayEqualsWithShortArray:(IOSShortArray *)expecteds
                         withShortArray:(IOSShortArray *)actuals;
+ (void)assertArrayEqualsWithNSString:(NSString *)message
                         withIntArray:(IOSIntArray *)expecteds
                         withIntArray:(IOSIntArray *)actuals;
+ (void)assertArrayEqualsWithIntArray:(IOSIntArray *)expecteds
                         withIntArray:(IOSIntArray *)actuals;
+ (void)assertArrayEqualsWithNSString:(NSString *)message
                        withLongArray:(IOSLongArray *)expecteds
                        withLongArray:(IOSLongArray *)actuals;
+ (void)assertArrayEqualsWithLongArray:(IOSLongArray *)expecteds
                         withLongArray:(IOSLongArray *)actuals;
+ (void)assertArrayEqualsWithNSString:(NSString *)message
                      withDoubleArray:(IOSDoubleArray *)expecteds
                      withDoubleArray:(IOSDoubleArray *)actuals
                           withDouble:(double)delta;
+ (void)assertArrayEqualsWithDoubleArray:(IOSDoubleArray *)expecteds
                         withDoubleArray:(IOSDoubleArray *)actuals
                              withDouble:(double)delta;
+ (void)assertArrayEqualsWithNSString:(NSString *)message
                       withFloatArray:(IOSFloatArray *)expecteds
                       withFloatArray:(IOSFloatArray *)actuals
                            withFloat:(float)delta;
+ (void)assertArrayEqualsWithFloatArray:(IOSFloatArray *)expecteds
                         withFloatArray:(IOSFloatArray *)actuals
                              withFloat:(float)delta;
+ (void)internalArrayEqualsWithNSString:(NSString *)message
                                 withId:(id)expecteds
                                 withId:(id)actuals;
+ (void)assertEqualsWithNSString:(NSString *)message
                      withDouble:(double)expected
                      withDouble:(double)actual
                      withDouble:(double)delta;
+ (void)assertEqualsWithLongInt:(long long int)expected
                    withLongInt:(long long int)actual;
+ (void)assertEqualsWithNSString:(NSString *)message
                     withLongInt:(long long int)expected
                     withLongInt:(long long int)actual;
+ (void)assertEqualsWithDouble:(double)expected
                    withDouble:(double)actual;
+ (void)assertEqualsWithNSString:(NSString *)message
                      withDouble:(double)expected
                      withDouble:(double)actual;
+ (void)assertEqualsWithDouble:(double)expected
                    withDouble:(double)actual
                    withDouble:(double)delta;
+ (void)assertNotNullWithNSString:(NSString *)message
                           withId:(id)object;
+ (void)assertNotNullWithId:(id)object;
+ (void)assertNullWithNSString:(NSString *)message
                        withId:(id)object;
+ (void)assertNullWithId:(id)object;
+ (void)assertSameWithNSString:(NSString *)message
                        withId:(id)expected
                        withId:(id)actual;
+ (void)assertSameWithId:(id)expected
                  withId:(id)actual;
+ (void)assertNotSameWithNSString:(NSString *)message
                           withId:(id)unexpected
                           withId:(id)actual;
+ (void)assertNotSameWithId:(id)unexpected
                     withId:(id)actual;
+ (void)failSameWithNSString:(NSString *)message;
+ (void)failNotSameWithNSString:(NSString *)message
                         withId:(id)expected
                         withId:(id)actual;
+ (void)failNotEqualsWithNSString:(NSString *)message
                           withId:(id)expected
                           withId:(id)actual;
+ (NSString *)formatWithNSString:(NSString *)message
                          withId:(id)expected
                          withId:(id)actual;
+ (NSString *)formatClassAndValueWithId:(id)value
                           withNSString:(NSString *)valueString;
+ (void)assertEqualsWithNSString:(NSString *)message
               withNSObjectArray:(IOSObjectArray *)expecteds
               withNSObjectArray:(IOSObjectArray *)actuals;
+ (void)assertEqualsWithNSObjectArray:(IOSObjectArray *)expecteds
                    withNSObjectArray:(IOSObjectArray *)actuals;
+ (void)assertThatWithId:(id)actual
  withOrgHamcrestMatcher:(id<OrgHamcrestMatcher>)matcher;
+ (void)assertThatWithNSString:(NSString *)reason
                        withId:(id)actual
        withOrgHamcrestMatcher:(id<OrgHamcrestMatcher>)matcher;
@end

#endif // _OrgJunitAssert_H_
