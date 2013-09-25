//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/org/junit/internal/matchers/IsCollectionContaining.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/Iterable.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "org/hamcrest/Description.h"
#include "org/hamcrest/Factory.h"
#include "org/hamcrest/Matcher.h"
#include "org/hamcrest/core/AllOf.h"
#include "org/hamcrest/core/IsEqual.h"
#include "org/junit/internal/matchers/IsCollectionContaining.h"

@implementation OrgJunitInternalMatchersIsCollectionContaining

- (id)initWithOrgHamcrestMatcher:(id<OrgHamcrestMatcher>)elementMatcher {
  if (self = [super init]) {
    OrgJunitInternalMatchersIsCollectionContaining_set_elementMatcher_(self, elementMatcher);
  }
  return self;
}

- (BOOL)matchesSafelyWithId:(id<JavaLangIterable>)collection {
  for (id __strong item in collection) {
    if ([((id<OrgHamcrestMatcher>) nil_chk(elementMatcher_)) matchesWithId:item]) {
      return YES;
    }
  }
  return NO;
}

- (void)describeToWithOrgHamcrestDescription:(id<OrgHamcrestDescription>)description_ {
  [((id<OrgHamcrestDescription>) nil_chk([((id<OrgHamcrestDescription>) nil_chk(description_)) appendTextWithNSString:@"a collection containing "])) appendDescriptionOfWithOrgHamcrestSelfDescribing:elementMatcher_];
}

+ (id<OrgHamcrestMatcher>)hasItemWithOrgHamcrestMatcher:(id<OrgHamcrestMatcher>)elementMatcher {
  return [[[OrgJunitInternalMatchersIsCollectionContaining alloc] initWithOrgHamcrestMatcher:elementMatcher] autorelease];
}

+ (id<OrgHamcrestMatcher>)hasItemWithId:(id)element {
  return [OrgJunitInternalMatchersIsCollectionContaining hasItemWithOrgHamcrestMatcher:[OrgHamcrestCoreIsEqual equalToWithId:element]];
}

+ (id<OrgHamcrestMatcher>)hasItemsWithOrgHamcrestMatcherArray:(IOSObjectArray *)elementMatchers {
  id<JavaUtilCollection> all = [[[JavaUtilArrayList alloc] initWithInt:(int) [((IOSObjectArray *) nil_chk(elementMatchers)) count]] autorelease];
  {
    IOSObjectArray *a__ = elementMatchers;
    id const *b__ = a__->buffer_;
    id const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<OrgHamcrestMatcher> elementMatcher = (*b__++);
      [all addWithId:[OrgJunitInternalMatchersIsCollectionContaining hasItemWithOrgHamcrestMatcher:elementMatcher]];
    }
  }
  return [OrgHamcrestCoreAllOf allOfWithJavaLangIterable:all];
}

+ (id<OrgHamcrestMatcher>)hasItemsWithNSObjectArray:(IOSObjectArray *)elements {
  id<JavaUtilCollection> all = [[[JavaUtilArrayList alloc] initWithInt:(int) [((IOSObjectArray *) nil_chk(elements)) count]] autorelease];
  {
    IOSObjectArray *a__ = elements;
    id const *b__ = a__->buffer_;
    id const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id element = (*b__++);
      [all addWithId:[OrgJunitInternalMatchersIsCollectionContaining hasItemWithId:element]];
    }
  }
  return [OrgHamcrestCoreAllOf allOfWithJavaLangIterable:all];
}

- (void)dealloc {
  OrgJunitInternalMatchersIsCollectionContaining_set_elementMatcher_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(OrgJunitInternalMatchersIsCollectionContaining *)other {
  [super copyAllFieldsTo:other];
  OrgJunitInternalMatchersIsCollectionContaining_set_elementMatcher_(other, elementMatcher_);
}

+ (IOSObjectArray *)__annotations_hasItemWithOrgHamcrestMatcher_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[OrgHamcrestFactoryImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_hasItemWithId_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[OrgHamcrestFactoryImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_hasItemsWithOrgHamcrestMatcherArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[OrgHamcrestFactoryImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_hasItemsWithNSObjectArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[OrgHamcrestFactoryImpl alloc] init] autorelease] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

@end
