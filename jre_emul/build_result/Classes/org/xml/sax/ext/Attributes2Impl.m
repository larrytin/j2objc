//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/ext/Attributes2Impl.java
//
//  Created by retechretech on 13-4-19.
//

#import "IOSBooleanArray.h"
#import "java/lang/ArrayIndexOutOfBoundsException.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/System.h"
#import "libcore/util/EmptyArray.h"
#import "org/xml/sax/Attributes.h"
#import "org/xml/sax/ext/Attributes2.h"
#import "org/xml/sax/ext/Attributes2Impl.h"
#import "org/xml/sax/helpers/AttributesImpl.h"

@implementation OrgXmlSaxExtAttributes2Impl

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (IOSBooleanArray *)declared {
  return declared_;
}
- (void)setDeclared:(IOSBooleanArray *)declared {
  JreOperatorRetainedAssign(&declared_, declared);
}
@synthesize declared = declared_;
- (IOSBooleanArray *)specified {
  return specified_;
}
- (void)setSpecified:(IOSBooleanArray *)specified {
  JreOperatorRetainedAssign(&specified_, specified);
}
@synthesize specified = specified_;

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&declared_, [LibcoreUtilEmptyArray BOOLEAN]);
    JreOperatorRetainedAssign(&specified_, [LibcoreUtilEmptyArray BOOLEAN]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts {
  return JreMemDebugAdd([super initWithOrgXmlSaxAttributes:atts]);
}

- (BOOL)isDeclaredWithInt:(int)index {
  if (index < 0 || index >= [self getLength]) @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"No attribute at index: %d", index]] autorelease];
  return [((IOSBooleanArray *) NIL_CHK(declared_)) booleanAtIndex:index];
}

- (BOOL)isDeclaredWithNSString:(NSString *)uri
                  withNSString:(NSString *)localName {
  int index = [self getIndexWithNSString:uri withNSString:localName];
  if (index < 0) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"No such attribute: local=%@, namespace=%@", localName, uri]] autorelease];
  return [((IOSBooleanArray *) NIL_CHK(declared_)) booleanAtIndex:index];
}

- (BOOL)isDeclaredWithNSString:(NSString *)qName {
  int index = [self getIndexWithNSString:qName];
  if (index < 0) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"No such attribute: %@", qName]] autorelease];
  return [((IOSBooleanArray *) NIL_CHK(declared_)) booleanAtIndex:index];
}

- (BOOL)isSpecifiedWithInt:(int)index {
  if (index < 0 || index >= [self getLength]) @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"No attribute at index: %d", index]] autorelease];
  return [((IOSBooleanArray *) NIL_CHK(specified_)) booleanAtIndex:index];
}

- (BOOL)isSpecifiedWithNSString:(NSString *)uri
                   withNSString:(NSString *)localName {
  int index = [self getIndexWithNSString:uri withNSString:localName];
  if (index < 0) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"No such attribute: local=%@, namespace=%@", localName, uri]] autorelease];
  return [((IOSBooleanArray *) NIL_CHK(specified_)) booleanAtIndex:index];
}

- (BOOL)isSpecifiedWithNSString:(NSString *)qName {
  int index = [self getIndexWithNSString:qName];
  if (index < 0) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"No such attribute: %@", qName]] autorelease];
  return [((IOSBooleanArray *) NIL_CHK(specified_)) booleanAtIndex:index];
}

- (void)setAttributesWithOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts {
  int length = [((id<OrgXmlSaxAttributes>) NIL_CHK(atts)) getLength];
  [super setAttributesWithOrgXmlSaxAttributes:atts];
  JreOperatorRetainedAssign(&declared_, [[[IOSBooleanArray alloc] initWithLength:length] autorelease]);
  JreOperatorRetainedAssign(&specified_, [[[IOSBooleanArray alloc] initWithLength:length] autorelease]);
  if ([(id) atts conformsToProtocol: @protocol(OrgXmlSaxExtAttributes2)]) {
    id<OrgXmlSaxExtAttributes2> a2 = (id<OrgXmlSaxExtAttributes2>) atts;
    for (int i = 0; i < length; i++) {
      [((IOSBooleanArray *) NIL_CHK(declared_)) replaceBooleanAtIndex:i withBoolean:[((id<OrgXmlSaxExtAttributes2>) NIL_CHK(a2)) isDeclaredWithInt:i]];
      [((IOSBooleanArray *) NIL_CHK(specified_)) replaceBooleanAtIndex:i withBoolean:[((id<OrgXmlSaxExtAttributes2>) NIL_CHK(a2)) isSpecifiedWithInt:i]];
    }
  }
  else {
    for (int i = 0; i < length; i++) {
      [((IOSBooleanArray *) NIL_CHK(declared_)) replaceBooleanAtIndex:i withBoolean:![@"CDATA" isEqual:[((id<OrgXmlSaxAttributes>) NIL_CHK(atts)) getTypeWithInt:i]]];
      [((IOSBooleanArray *) NIL_CHK(specified_)) replaceBooleanAtIndex:i withBoolean:YES];
    }
  }
}

- (void)addAttributeWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
                    withNSString:(NSString *)type
                    withNSString:(NSString *)value {
  [super addAttributeWithNSString:uri withNSString:localName withNSString:qName withNSString:type withNSString:value];
  int length = [self getLength];
  if (length > (int) [((IOSBooleanArray *) NIL_CHK(specified_)) count]) {
    IOSBooleanArray *newFlags = [[[IOSBooleanArray alloc] initWithLength:length] autorelease];
    [JavaLangSystem arraycopyWithId:declared_ withInt:0 withId:newFlags withInt:0 withInt:(int) [((IOSBooleanArray *) NIL_CHK(declared_)) count]];
    JreOperatorRetainedAssign(&declared_, newFlags);
    newFlags = [[[IOSBooleanArray alloc] initWithLength:length] autorelease];
    [JavaLangSystem arraycopyWithId:specified_ withInt:0 withId:newFlags withInt:0 withInt:(int) [((IOSBooleanArray *) NIL_CHK(specified_)) count]];
    JreOperatorRetainedAssign(&specified_, newFlags);
  }
  [((IOSBooleanArray *) NIL_CHK(specified_)) replaceBooleanAtIndex:length - 1 withBoolean:YES];
  [((IOSBooleanArray *) NIL_CHK(declared_)) replaceBooleanAtIndex:length - 1 withBoolean:![@"CDATA" isEqual:type]];
}

- (void)removeAttributeWithInt:(int)index {
  int origMax = [self getLength] - 1;
  [super removeAttributeWithInt:index];
  if (index != origMax) {
    [JavaLangSystem arraycopyWithId:declared_ withInt:index + 1 withId:declared_ withInt:index withInt:origMax - index];
    [JavaLangSystem arraycopyWithId:specified_ withInt:index + 1 withId:specified_ withInt:index withInt:origMax - index];
  }
}

- (void)setDeclaredWithInt:(int)index
                  withBOOL:(BOOL)value {
  if (index < 0 || index >= [self getLength]) @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"No attribute at index: %d", index]] autorelease];
  [((IOSBooleanArray *) NIL_CHK(declared_)) replaceBooleanAtIndex:index withBoolean:value];
}

- (void)setSpecifiedWithInt:(int)index
                   withBOOL:(BOOL)value {
  if (index < 0 || index >= [self getLength]) @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"No attribute at index: %d", index]] autorelease];
  [((IOSBooleanArray *) NIL_CHK(specified_)) replaceBooleanAtIndex:index withBoolean:value];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&specified_, nil);
  JreOperatorRetainedAssign(&declared_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  OrgXmlSaxExtAttributes2Impl *typedCopy = (OrgXmlSaxExtAttributes2Impl *) copy;
  typedCopy.declared = declared_;
  typedCopy.specified = specified_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:declared_ name:@"declared"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:specified_ name:@"specified"]];
  return result;
}

@end
