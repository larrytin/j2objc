//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/PropertyResourceBundle.java
//
//  Created by retechretech on 13-9-25.
//

#include "IOSClass.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/Reader.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Enumeration.h"
#include "java/util/Properties.h"
#include "java/util/PropertyResourceBundle.h"
#include "java/util/ResourceBundle.h"
#include "java/util/Set.h"

@implementation JavaUtilPropertyResourceBundle

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaIoInputStream:(JavaIoInputStream *)stream {
  if (self = [super init]) {
    if (stream == nil) {
      @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"stream == null"] autorelease];
    }
    JavaUtilPropertyResourceBundle_set_resources_(self, [[[JavaUtilProperties alloc] init] autorelease]);
    [resources_ load__WithJavaIoInputStream:stream];
    JreMemDebugAdd(self);
  }
  return self;
}

+ (IOSObjectArray *)__exceptions_JavaUtilPropertyResourceBundleWithJavaIoInputStream_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (id)initWithJavaIoReader:(JavaIoReader *)reader {
  if (self = [super init]) {
    JavaUtilPropertyResourceBundle_set_resources_(self, [[[JavaUtilProperties alloc] init] autorelease]);
    [resources_ load__WithJavaIoReader:reader];
    JreMemDebugAdd(self);
  }
  return self;
}

+ (IOSObjectArray *)__exceptions_JavaUtilPropertyResourceBundleWithJavaIoReader_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaIoIOException getClass] } count:1 type:[IOSClass getClass]];
}

- (id<JavaUtilSet>)handleKeySet {
  return [((JavaUtilProperties *) nil_chk(resources_)) stringPropertyNames];
}

- (id<JavaUtilEnumeration>)getLocalKeys {
  return (id<JavaUtilEnumeration>) check_protocol_cast([((JavaUtilProperties *) nil_chk(resources_)) propertyNames], @protocol(JavaUtilEnumeration));
}

- (id<JavaUtilEnumeration>)getKeys {
  if (parent_ == nil) {
    return [self getLocalKeys];
  }
  return [[[JavaUtilPropertyResourceBundle_$1 alloc] initWithJavaUtilPropertyResourceBundle:self] autorelease];
}

- (id)handleGetObjectWithNSString:(NSString *)key {
  return [((JavaUtilProperties *) nil_chk(resources_)) getWithId:key];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilPropertyResourceBundle_set_resources_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilPropertyResourceBundle *)other {
  [super copyAllFieldsTo:other];
  JavaUtilPropertyResourceBundle_set_resources_(other, resources_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:resources_ name:@"resources"]];
  return result;
}

@end
@implementation JavaUtilPropertyResourceBundle_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (BOOL)findNext {
  if (nextElement__ != nil) {
    return YES;
  }
  while ([((id<JavaUtilEnumeration>) nil_chk(pEnum_)) hasMoreElements]) {
    NSString *next = [pEnum_ nextElement];
    if (![((JavaUtilProperties *) nil_chk(this$0_->resources_)) containsKeyWithId:next]) {
      JavaUtilPropertyResourceBundle_$1_set_nextElement__(self, next);
      return YES;
    }
  }
  return NO;
}

- (BOOL)hasMoreElements {
  if ([((id<JavaUtilEnumeration>) nil_chk(local_)) hasMoreElements]) {
    return YES;
  }
  return [self findNext];
}

- (NSString *)nextElement {
  if ([((id<JavaUtilEnumeration>) nil_chk(local_)) hasMoreElements]) {
    return [local_ nextElement];
  }
  if ([self findNext]) {
    NSString *result = nextElement__;
    JavaUtilPropertyResourceBundle_$1_set_nextElement__(self, nil);
    return result;
  }
  return [((id<JavaUtilEnumeration>) nil_chk(pEnum_)) nextElement];
}

- (id)initWithJavaUtilPropertyResourceBundle:(JavaUtilPropertyResourceBundle *)outer$ {
  JavaUtilPropertyResourceBundle_$1_set_this$0_(self, outer$);
  if (self = [super init]) {
    JavaUtilPropertyResourceBundle_$1_set_local_(self, [outer$ getLocalKeys]);
    JavaUtilPropertyResourceBundle_$1_set_pEnum_(self, [((JavaUtilResourceBundle *) nil_chk(outer$->parent_)) getKeys]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilPropertyResourceBundle_$1_set_nextElement__(self, nil);
  JavaUtilPropertyResourceBundle_$1_set_pEnum_(self, nil);
  JavaUtilPropertyResourceBundle_$1_set_local_(self, nil);
  JavaUtilPropertyResourceBundle_$1_set_this$0_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilPropertyResourceBundle_$1 *)other {
  [super copyAllFieldsTo:other];
  JavaUtilPropertyResourceBundle_$1_set_local_(other, local_);
  JavaUtilPropertyResourceBundle_$1_set_nextElement__(other, nextElement__);
  JavaUtilPropertyResourceBundle_$1_set_pEnum_(other, pEnum_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:local_ name:@"local"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:pEnum_ name:@"pEnum"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:nextElement__ name:@"nextElement_"]];
  return result;
}

@end
