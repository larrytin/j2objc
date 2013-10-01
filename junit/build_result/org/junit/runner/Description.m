//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/ClassNotFoundException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/List.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"
#include "org/junit/runner/Description.h"

@implementation OrgJunitRunnerDescription

static OrgJunitRunnerDescription * OrgJunitRunnerDescription_EMPTY_;
static OrgJunitRunnerDescription * OrgJunitRunnerDescription_TEST_MECHANISM_;

+ (OrgJunitRunnerDescription *)EMPTY {
  return OrgJunitRunnerDescription_EMPTY_;
}

+ (OrgJunitRunnerDescription *)TEST_MECHANISM {
  return OrgJunitRunnerDescription_TEST_MECHANISM_;
}

+ (OrgJunitRunnerDescription *)createSuiteDescriptionWithNSString:(NSString *)name
                            withJavaLangAnnotationAnnotationArray:(IOSObjectArray *)annotations {
  if ([((NSString *) nil_chk(name)) length] == 0) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"name must have non-zero length"] autorelease];
  return [[[OrgJunitRunnerDescription alloc] initWithNSString:name withJavaLangAnnotationAnnotationArray:annotations] autorelease];
}

+ (OrgJunitRunnerDescription *)createTestDescriptionWithIOSClass:(IOSClass *)clazz
                                                    withNSString:(NSString *)name
                           withJavaLangAnnotationAnnotationArray:(IOSObjectArray *)annotations {
  return [[[OrgJunitRunnerDescription alloc] initWithNSString:[NSString stringWithFormat:@"%@(%@)" , name, [((IOSClass *) nil_chk(clazz)) getName], nil] withJavaLangAnnotationAnnotationArray:annotations] autorelease];
}

+ (OrgJunitRunnerDescription *)createTestDescriptionWithIOSClass:(IOSClass *)clazz
                                                    withNSString:(NSString *)name {
  return [OrgJunitRunnerDescription createTestDescriptionWithIOSClass:clazz withNSString:name withJavaLangAnnotationAnnotationArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]]];
}

+ (OrgJunitRunnerDescription *)createSuiteDescriptionWithIOSClass:(IOSClass *)testClass {
  return [[[OrgJunitRunnerDescription alloc] initWithNSString:[((IOSClass *) nil_chk(testClass)) getName] withJavaLangAnnotationAnnotationArray:[testClass getAnnotations]] autorelease];
}

- (id)initWithNSString:(NSString *)displayName
withJavaLangAnnotationAnnotationArray:(IOSObjectArray *)annotations {
  if (self = [super init]) {
    OrgJunitRunnerDescription_set_fChildren_(self, [[[JavaUtilArrayList alloc] init] autorelease]);
    OrgJunitRunnerDescription_set_fDisplayName_(self, displayName);
    OrgJunitRunnerDescription_set_fAnnotations_(self, annotations);
  }
  return self;
}

- (NSString *)getDisplayName {
  return fDisplayName_;
}

- (void)addChildWithOrgJunitRunnerDescription:(OrgJunitRunnerDescription *)description_ {
  [((JavaUtilArrayList *) nil_chk([self getChildren])) addWithId:description_];
}

- (JavaUtilArrayList *)getChildren {
  return fChildren_;
}

- (BOOL)isSuite {
  return ![self isTest];
}

- (BOOL)isTest {
  return [((JavaUtilArrayList *) nil_chk([self getChildren])) isEmpty];
}

- (int)testCount {
  if ([self isTest]) return 1;
  int result = 0;
  for (OrgJunitRunnerDescription * __strong child in [self getChildren]) result += [((OrgJunitRunnerDescription *) nil_chk(child)) testCount];
  return result;
}

- (NSUInteger)hash {
  return [((NSString *) nil_chk([self getDisplayName])) hash];
}

- (BOOL)isEqual:(id)obj {
  if (!([obj isKindOfClass:[OrgJunitRunnerDescription class]])) return NO;
  OrgJunitRunnerDescription *d = (OrgJunitRunnerDescription *) check_class_cast(obj, [OrgJunitRunnerDescription class]);
  return [((NSString *) nil_chk([self getDisplayName])) isEqual:[((OrgJunitRunnerDescription *) nil_chk(d)) getDisplayName]];
}

- (NSString *)description {
  return [self getDisplayName];
}

- (BOOL)isEmpty {
  return [self isEqual:OrgJunitRunnerDescription_EMPTY_];
}

- (OrgJunitRunnerDescription *)childlessCopy {
  return [[[OrgJunitRunnerDescription alloc] initWithNSString:fDisplayName_ withJavaLangAnnotationAnnotationArray:fAnnotations_] autorelease];
}

- (id)getAnnotationWithIOSClass:(IOSClass *)annotationType {
  {
    IOSObjectArray *a__ = fAnnotations_;
    id const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<JavaLangAnnotationAnnotation> each = (*b__++);
      if ([((IOSClass *) nil_chk([((id<JavaLangAnnotationAnnotation>) nil_chk(each)) annotationType])) isEqual:annotationType]) return [((IOSClass *) nil_chk(annotationType)) cast:each];
    }
  }
  return nil;
}

- (id<JavaUtilCollection>)getAnnotations {
  return [JavaUtilArrays asListWithNSObjectArray:fAnnotations_];
}

- (IOSClass *)getTestClass {
  NSString *name = [self getClassName];
  if (name == nil) return nil;
  @try {
    return [IOSClass forName:name];
  }
  @catch (JavaLangClassNotFoundException *e) {
    return nil;
  }
}

- (NSString *)getClassName {
  JavaUtilRegexMatcher *matcher = [self methodStringMatcher];
  return [((JavaUtilRegexMatcher *) nil_chk(matcher)) matches] ? [matcher groupWithInt:2] : [self description];
}

- (NSString *)getMethodName {
  return [self parseMethod];
}

- (NSString *)parseMethod {
  JavaUtilRegexMatcher *matcher = [self methodStringMatcher];
  if ([((JavaUtilRegexMatcher *) nil_chk(matcher)) matches]) return [matcher groupWithInt:1];
  return nil;
}

- (JavaUtilRegexMatcher *)methodStringMatcher {
  return [((JavaUtilRegexPattern *) nil_chk([JavaUtilRegexPattern compileWithNSString:@"(.*)\\((.*)\\)"])) matcherWithJavaLangCharSequence:[self description]];
}

+ (void)initialize {
  if (self == [OrgJunitRunnerDescription class]) {
    JreOperatorRetainedAssign(&OrgJunitRunnerDescription_EMPTY_, nil, [[[OrgJunitRunnerDescription alloc] initWithNSString:@"No Tests" withJavaLangAnnotationAnnotationArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]]] autorelease]);
    JreOperatorRetainedAssign(&OrgJunitRunnerDescription_TEST_MECHANISM_, nil, [[[OrgJunitRunnerDescription alloc] initWithNSString:@"Test mechanism" withJavaLangAnnotationAnnotationArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]]] autorelease]);
  }
}

- (void)dealloc {
  OrgJunitRunnerDescription_set_fAnnotations_(self, nil);
  OrgJunitRunnerDescription_set_fDisplayName_(self, nil);
  OrgJunitRunnerDescription_set_fChildren_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgJunitRunnerDescription *)other {
  [super copyAllFieldsTo:other];
  OrgJunitRunnerDescription_set_fAnnotations_(other, fAnnotations_);
  OrgJunitRunnerDescription_set_fChildren_(other, fChildren_);
  OrgJunitRunnerDescription_set_fDisplayName_(other, fDisplayName_);
}

@end
