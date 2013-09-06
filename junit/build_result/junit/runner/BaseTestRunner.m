//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/junit/runner/BaseTestRunner.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/io/BufferedReader.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/FileOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/PrintStream.h"
#include "java/io/PrintWriter.h"
#include "java/io/StringReader.h"
#include "java/io/StringWriter.h"
#include "java/lang/ClassNotFoundException.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/Integer.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/lang/reflect/InvocationTargetException.h"
#include "java/lang/reflect/Method.h"
#include "java/lang/reflect/Modifier.h"
#include "java/text/NumberFormat.h"
#include "java/util/Properties.h"
#include "junit/framework/AssertionFailedError.h"
#include "junit/framework/Test.h"
#include "junit/framework/TestSuite.h"
#include "junit/runner/BaseTestRunner.h"
#include "junit/runner/TestRunListener.h"

@implementation JunitRunnerBaseTestRunner

static NSString * JunitRunnerBaseTestRunner_SUITE_METHODNAME_ = @"suite";
static JavaUtilProperties * JunitRunnerBaseTestRunner_fPreferences_;
static int JunitRunnerBaseTestRunner_fgMaxMessageLength_;
static BOOL JunitRunnerBaseTestRunner_fgFilterStack_;

+ (NSString *)SUITE_METHODNAME {
  return JunitRunnerBaseTestRunner_SUITE_METHODNAME_;
}

+ (JavaUtilProperties *)fPreferences {
  return JunitRunnerBaseTestRunner_fPreferences_;
}

+ (void)setFPreferences:(JavaUtilProperties *)fPreferences {
  JreOperatorRetainedAssign(&JunitRunnerBaseTestRunner_fPreferences_, nil, fPreferences);
}

+ (int)fgMaxMessageLength {
  return JunitRunnerBaseTestRunner_fgMaxMessageLength_;
}

+ (int *)fgMaxMessageLengthRef {
  return &JunitRunnerBaseTestRunner_fgMaxMessageLength_;
}

+ (BOOL)fgFilterStack {
  return JunitRunnerBaseTestRunner_fgFilterStack_;
}

+ (BOOL *)fgFilterStackRef {
  return &JunitRunnerBaseTestRunner_fgFilterStack_;
}

- (void)startTestWithJunitFrameworkTest:(id<JunitFrameworkTest>)test {
  @synchronized(self) {
    {
      [self testStartedWithNSString:[((id<JunitFrameworkTest>) nil_chk(test)) description]];
    }
  }
}

+ (void)setPreferencesWithJavaUtilProperties:(JavaUtilProperties *)preferences {
  JreOperatorRetainedAssign(&JunitRunnerBaseTestRunner_fPreferences_, nil, preferences);
}

+ (JavaUtilProperties *)getPreferences {
  if (JunitRunnerBaseTestRunner_fPreferences_ == nil) {
    JreOperatorRetainedAssign(&JunitRunnerBaseTestRunner_fPreferences_, nil, [[[JavaUtilProperties alloc] init] autorelease]);
    [JunitRunnerBaseTestRunner_fPreferences_ putWithId:@"loading" withId:@"true"];
    [JunitRunnerBaseTestRunner_fPreferences_ putWithId:@"filterstack" withId:@"true"];
    [JunitRunnerBaseTestRunner readPreferences];
  }
  return JunitRunnerBaseTestRunner_fPreferences_;
}

+ (void)savePreferences {
  JavaIoFileOutputStream *fos = [[[JavaIoFileOutputStream alloc] initWithJavaIoFile:[JunitRunnerBaseTestRunner getPreferencesFile]] autorelease];
  @try {
    [((JavaUtilProperties *) nil_chk([JunitRunnerBaseTestRunner getPreferences])) storeWithJavaIoOutputStream:fos withNSString:@""];
  }
  @finally {
    [fos close];
  }
}

+ (IOSObjectArray *)__exceptions_savePreferences {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

+ (void)setPreferenceWithNSString:(NSString *)key
                     withNSString:(NSString *)value {
  [((JavaUtilProperties *) nil_chk([JunitRunnerBaseTestRunner getPreferences])) putWithId:key withId:value];
}

- (void)endTestWithJunitFrameworkTest:(id<JunitFrameworkTest>)test {
  @synchronized(self) {
    {
      [self testEndedWithNSString:[((id<JunitFrameworkTest>) nil_chk(test)) description]];
    }
  }
}

- (void)addErrorWithJunitFrameworkTest:(id<JunitFrameworkTest>)test
                 withJavaLangThrowable:(JavaLangThrowable *)t {
  @synchronized(self) {
    {
      [self testFailedWithInt:JunitRunnerTestRunListener_STATUS_ERROR withJunitFrameworkTest:test withJavaLangThrowable:t];
    }
  }
}

- (void)addFailureWithJunitFrameworkTest:(id<JunitFrameworkTest>)test
  withJunitFrameworkAssertionFailedError:(JunitFrameworkAssertionFailedError *)t {
  @synchronized(self) {
    {
      [self testFailedWithInt:JunitRunnerTestRunListener_STATUS_FAILURE withJunitFrameworkTest:test withJavaLangThrowable:t];
    }
  }
}

- (void)testStartedWithNSString:(NSString *)testName {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)testEndedWithNSString:(NSString *)testName {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)testFailedWithInt:(int)status
   withJunitFrameworkTest:(id<JunitFrameworkTest>)test
    withJavaLangThrowable:(JavaLangThrowable *)t {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id<JunitFrameworkTest>)getTestWithNSString:(NSString *)suiteClassName {
  if ([((NSString *) nil_chk(suiteClassName)) length] <= 0) {
    [self clearStatus];
    return nil;
  }
  IOSClass *testClass = nil;
  @try {
    testClass = [self loadSuiteClassWithNSString:suiteClassName];
  }
  @catch (JavaLangClassNotFoundException *e) {
    NSString *clazz = [((JavaLangClassNotFoundException *) nil_chk(e)) getMessage];
    if (clazz == nil) clazz = suiteClassName;
    [self runFailedWithNSString:[NSString stringWithFormat:@"Class not found \"%@\"", clazz]];
    return nil;
  }
  @catch (JavaLangException *e) {
    [self runFailedWithNSString:[NSString stringWithFormat:@"Error: %@", [((JavaLangException *) nil_chk(e)) description]]];
    return nil;
  }
  JavaLangReflectMethod *suiteMethod = nil;
  @try {
    suiteMethod = [((IOSClass *) nil_chk(testClass)) getMethod:JunitRunnerBaseTestRunner_SUITE_METHODNAME_ parameterTypes:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[IOSClass class]]]];
  }
  @catch (JavaLangException *e) {
    [self clearStatus];
    return [[[JunitFrameworkTestSuite alloc] initWithIOSClass:testClass] autorelease];
  }
  if (![JavaLangReflectModifier isStaticWithInt:[((JavaLangReflectMethod *) nil_chk(suiteMethod)) getModifiers]]) {
    [self runFailedWithNSString:@"Suite() method must be static"];
    return nil;
  }
  id<JunitFrameworkTest> test = nil;
  @try {
    test = (id<JunitFrameworkTest>) [suiteMethod invokeWithId:nil withNSObjectArray:(IOSObjectArray *) [IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[IOSClass class]]]];
    if (test == nil) return test;
  }
  @catch (JavaLangReflectInvocationTargetException *e) {
    [self runFailedWithNSString:[NSString stringWithFormat:@"Failed to invoke suite():%@", [((JavaLangThrowable *) nil_chk([((JavaLangReflectInvocationTargetException *) nil_chk(e)) getTargetException])) description]]];
    return nil;
  }
  @catch (JavaLangIllegalAccessException *e) {
    [self runFailedWithNSString:[NSString stringWithFormat:@"Failed to invoke suite():%@", [((JavaLangIllegalAccessException *) nil_chk(e)) description]]];
    return nil;
  }
  [self clearStatus];
  return test;
}

- (NSString *)elapsedTimeAsStringWithLongInt:(long long int)runTime {
  return [((JavaTextNumberFormat *) nil_chk([JavaTextNumberFormat getInstance])) formatWithDouble:(double) runTime / 1000];
}

- (NSString *)processArgumentsWithNSStringArray:(IOSObjectArray *)args {
  NSString *suiteName = nil;
  for (int i = 0; i < (int) [((IOSObjectArray *) nil_chk(args)) count]; i++) {
    if ([((NSString *) nil_chk([args objectAtIndex:i])) isEqual:@"-noloading"]) {
      [self setLoadingWithBOOL:NO];
    }
    else if ([((NSString *) nil_chk([args objectAtIndex:i])) isEqual:@"-nofilterstack"]) {
      JunitRunnerBaseTestRunner_fgFilterStack_ = NO;
    }
    else if ([((NSString *) nil_chk([args objectAtIndex:i])) isEqual:@"-c"]) {
      if ((int) [args count] > i + 1) suiteName = [self extractClassNameWithNSString:[args objectAtIndex:i + 1]];
      else [((JavaIoPrintStream *) nil_chk([JavaLangSystem out])) printlnWithNSString:@"Missing Test class name"];
      i++;
    }
    else {
      suiteName = [args objectAtIndex:i];
    }
  }
  return suiteName;
}

- (void)setLoadingWithBOOL:(BOOL)enable {
  fLoading_ = enable;
}

- (NSString *)extractClassNameWithNSString:(NSString *)className_ {
  if ([((NSString *) nil_chk(className_)) hasPrefix:@"Default package for"]) return [className_ substring:[className_ lastIndexOfString:@"."] + 1];
  return className_;
}

+ (NSString *)truncateWithNSString:(NSString *)s {
  if (JunitRunnerBaseTestRunner_fgMaxMessageLength_ != -1 && [((NSString *) nil_chk(s)) length] > JunitRunnerBaseTestRunner_fgMaxMessageLength_) s = [NSString stringWithFormat:@"%@...", [s substring:0 endIndex:JunitRunnerBaseTestRunner_fgMaxMessageLength_]];
  return s;
}

- (void)runFailedWithNSString:(NSString *)message {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (IOSClass *)loadSuiteClassWithNSString:(NSString *)suiteClassName {
  return [IOSClass forName:suiteClassName];
}

+ (IOSObjectArray *)__exceptions_loadSuiteClassWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaLangClassNotFoundException getClass] } count:1 type:[IOSClass getClass]];
}

- (void)clearStatus {
}

- (BOOL)useReloadingTestSuiteLoader {
  return [((NSString *) nil_chk([JunitRunnerBaseTestRunner getPreferenceWithNSString:@"loading"])) isEqual:@"true"] && fLoading_;
}

+ (JavaIoFile *)getPreferencesFile {
  NSString *home = [JavaLangSystem getPropertyWithNSString:@"user.home"];
  return [[[JavaIoFile alloc] initWithNSString:home withNSString:@"junit.properties"] autorelease];
}

+ (void)readPreferences {
  JavaIoInputStream *is = nil;
  @try {
    is = [[[JavaIoFileInputStream alloc] initWithJavaIoFile:[JunitRunnerBaseTestRunner getPreferencesFile]] autorelease];
    [JunitRunnerBaseTestRunner setPreferencesWithJavaUtilProperties:[[[JavaUtilProperties alloc] initWithJavaUtilProperties:[JunitRunnerBaseTestRunner getPreferences]] autorelease]];
    [((JavaUtilProperties *) nil_chk([JunitRunnerBaseTestRunner getPreferences])) load__WithJavaIoInputStream:is];
  }
  @catch (JavaIoIOException *e) {
    @try {
      if (is != nil) [is close];
    }
    @catch (JavaIoIOException *e1) {
    }
  }
}

+ (NSString *)getPreferenceWithNSString:(NSString *)key {
  return [((JavaUtilProperties *) nil_chk([JunitRunnerBaseTestRunner getPreferences])) getPropertyWithNSString:key];
}

+ (int)getPreferenceWithNSString:(NSString *)key
                         withInt:(int)dflt {
  NSString *value = [JunitRunnerBaseTestRunner getPreferenceWithNSString:key];
  int intValue = dflt;
  if (value == nil) return intValue;
  @try {
    intValue = [JavaLangInteger parseIntWithNSString:value];
  }
  @catch (JavaLangNumberFormatException *ne) {
  }
  return intValue;
}

+ (NSString *)getFilteredTraceWithJavaLangThrowable:(JavaLangThrowable *)t {
  JavaIoStringWriter *stringWriter = [[[JavaIoStringWriter alloc] init] autorelease];
  JavaIoPrintWriter *writer = [[[JavaIoPrintWriter alloc] initWithJavaIoWriter:stringWriter] autorelease];
  [((JavaLangThrowable *) nil_chk(t)) printStackTraceWithJavaIoPrintWriter:writer];
  JavaLangStringBuffer *buffer = [stringWriter getBuffer];
  NSString *trace = [((JavaLangStringBuffer *) nil_chk(buffer)) description];
  return [JunitRunnerBaseTestRunner getFilteredTraceWithNSString:trace];
}

+ (NSString *)getFilteredTraceWithNSString:(NSString *)stack {
  if ([JunitRunnerBaseTestRunner showStackRaw]) return stack;
  JavaIoStringWriter *sw = [[[JavaIoStringWriter alloc] init] autorelease];
  JavaIoPrintWriter *pw = [[[JavaIoPrintWriter alloc] initWithJavaIoWriter:sw] autorelease];
  JavaIoStringReader *sr = [[[JavaIoStringReader alloc] initWithNSString:stack] autorelease];
  JavaIoBufferedReader *br = [[[JavaIoBufferedReader alloc] initWithJavaIoReader:sr] autorelease];
  NSString *line;
  @try {
    while ((line = [br readLine]) != nil) {
      if (![JunitRunnerBaseTestRunner filterLineWithNSString:line]) [pw printlnWithNSString:line];
    }
  }
  @catch (JavaLangException *IOException) {
    return stack;
  }
  return [sw description];
}

+ (BOOL)showStackRaw {
  return ![((NSString *) nil_chk([JunitRunnerBaseTestRunner getPreferenceWithNSString:@"filterstack"])) isEqual:@"true"] || JunitRunnerBaseTestRunner_fgFilterStack_ == NO;
}

+ (BOOL)filterLineWithNSString:(NSString *)line {
  IOSObjectArray *patterns = [IOSObjectArray arrayWithObjects:(id[]){ @"junit.framework.TestCase", @"junit.framework.TestResult", @"junit.framework.TestSuite", @"junit.framework.Assert.", @"junit.swingui.TestRunner", @"junit.awtui.TestRunner", @"junit.textui.TestRunner", @"java.lang.reflect.Method.invoke(" } count:8 type:[IOSClass classWithClass:[NSString class]]];
  for (int i = 0; i < (int) [patterns count]; i++) {
    if ([((NSString *) nil_chk(line)) indexOfString:[patterns objectAtIndex:i]] > 0) return YES;
  }
  return NO;
}

- (id)init {
  if ((self = [super init])) {
    fLoading_ = YES;
  }
  return self;
}

+ (void)initialize {
  if (self == [JunitRunnerBaseTestRunner class]) {
    JunitRunnerBaseTestRunner_fgMaxMessageLength_ = 500;
    JunitRunnerBaseTestRunner_fgFilterStack_ = YES;
    {
      JunitRunnerBaseTestRunner_fgMaxMessageLength_ = [JunitRunnerBaseTestRunner getPreferenceWithNSString:@"maxmessage" withInt:JunitRunnerBaseTestRunner_fgMaxMessageLength_];
    }
  }
}

- (void)copyAllFieldsTo:(JunitRunnerBaseTestRunner *)other {
  [super copyAllFieldsTo:other];
  other->fLoading_ = fLoading_;
}

@end
