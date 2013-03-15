//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/lang/Boolean.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSBooleanArray.h"
#import "IOSClass.h"
#import "java/lang/Boolean.h"
#import "java/lang/ClassCastException.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/System.h"

@implementation JavaLangBoolean

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangBoolean_TYPE_ name:@"JavaLangBoolean_TYPE_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangBoolean_TRUE_ name:@"JavaLangBoolean_TRUE_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangBoolean_FALSE_ name:@"JavaLangBoolean_FALSE_"]];
  return result;
}

static IOSClass * JavaLangBoolean_TYPE_;
static JavaLangBoolean * JavaLangBoolean_TRUE_;
static JavaLangBoolean * JavaLangBoolean_FALSE_;

@synthesize value = value_;

+ (IOSClass *)TYPE {
  return JavaLangBoolean_TYPE_;
}

+ (JavaLangBoolean *)getTRUE {
  return JavaLangBoolean_TRUE_;
}

+ (JavaLangBoolean *)getFALSE {
  return JavaLangBoolean_FALSE_;
}

- (id)initWithNSString:(NSString *)string {
  return JreMemDebugAdd([self initJavaLangBooleanWithBOOL:[JavaLangBoolean parseBooleanWithNSString:string]]);
}

- (id)initJavaLangBooleanWithBOOL:(BOOL)value {
  if ((self = [super init])) {
    self.value = value;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithBOOL:(BOOL)value {
  return [self initJavaLangBooleanWithBOOL:value];
}

- (BOOL)booleanValue {
  return value_;
}

- (BOOL)isEqual:(id)o {
  return (o == self) || (([o isKindOfClass:[JavaLangBoolean class]]) && (value_ == ((JavaLangBoolean *) o).value));
}

- (int)compareToWithId:(JavaLangBoolean *)that {
  if (that != nil && ![that isKindOfClass:[JavaLangBoolean class]]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  if (that == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if (self.value == ((JavaLangBoolean *) NIL_CHK(that)).value) {
    return 0;
  }
  return self.value ? 1 : -1;
}

- (NSUInteger)hash {
  return value_ ? 1231 : 1237;
}

- (NSString *)description {
  return [NSString valueOfBool:value_];
}

+ (BOOL)getBooleanWithNSString:(NSString *)string {
  if (string == nil || [NIL_CHK(string) length] == 0) {
    return NO;
  }
  return ([JavaLangBoolean parseBooleanWithNSString:[JavaLangSystem getPropertyWithNSString:string]]);
}

+ (BOOL)parseBooleanWithNSString:(NSString *)s {
  return [@"true" equalsIgnoreCase:s];
}

+ (NSString *)toStringWithBOOL:(BOOL)value {
  return [NSString valueOfBool:value];
}

+ (JavaLangBoolean *)valueOfWithNSString:(NSString *)string {
  return [JavaLangBoolean parseBooleanWithNSString:string] ? JavaLangBoolean_TRUE_ : JavaLangBoolean_FALSE_;
}

+ (JavaLangBoolean *)valueOfWithBOOL:(BOOL)b {
  return b ? JavaLangBoolean_TRUE_ : JavaLangBoolean_FALSE_;
}

+ (void)initialize {
  if (self == [JavaLangBoolean class]) {
    {
      JreOperatorRetainedAssign(&JavaLangBoolean_TYPE_, (IOSClass *) [[[[[IOSBooleanArray alloc] initWithLength:0] autorelease] getClass] getComponentType]);
    }
    {
      JreOperatorRetainedAssign(&JavaLangBoolean_TRUE_, [[[JavaLangBoolean alloc] initWithBOOL:YES] autorelease]);
    }
    {
      JreOperatorRetainedAssign(&JavaLangBoolean_FALSE_, [[[JavaLangBoolean alloc] initWithBOOL:NO] autorelease]);
    }
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaLangBoolean *typedCopy = (JavaLangBoolean *) copy;
  typedCopy.value = value_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
