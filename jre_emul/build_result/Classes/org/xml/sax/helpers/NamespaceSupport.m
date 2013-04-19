//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/helpers/NamespaceSupport.java
//
//  Created by retechretech on 13-4-19.
//

#import "IOSObjectArray.h"
#import "java/lang/IllegalStateException.h"
#import "java/lang/System.h"
#import "java/util/ArrayList.h"
#import "java/util/Collections.h"
#import "java/util/EmptyStackException.h"
#import "java/util/Enumeration.h"
#import "java/util/Hashtable.h"
#import "java/util/List.h"
#import "org/xml/sax/helpers/NamespaceSupport.h"

@implementation OrgXmlSaxHelpersNamespaceSupport

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:OrgXmlSaxHelpersNamespaceSupport_XMLNS_ name:@"OrgXmlSaxHelpersNamespaceSupport_XMLNS_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:OrgXmlSaxHelpersNamespaceSupport_NSDECL_ name:@"OrgXmlSaxHelpersNamespaceSupport_NSDECL_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:OrgXmlSaxHelpersNamespaceSupport_EMPTY_ENUMERATION_ name:@"OrgXmlSaxHelpersNamespaceSupport_EMPTY_ENUMERATION_"]];
  return result;
}

static NSString * OrgXmlSaxHelpersNamespaceSupport_XMLNS_ = @"http://www.w3.org/XML/1998/namespace";
static NSString * OrgXmlSaxHelpersNamespaceSupport_NSDECL_ = @"http://www.w3.org/xmlns/2000/";
static id<JavaUtilEnumeration> OrgXmlSaxHelpersNamespaceSupport_EMPTY_ENUMERATION_;

- (IOSObjectArray *)contexts {
  return contexts_;
}
- (void)setContexts:(IOSObjectArray *)contexts {
  JreOperatorRetainedAssign(&contexts_, contexts);
}
@synthesize contexts = contexts_;
- (OrgXmlSaxHelpersNamespaceSupport_Context *)currentContext {
  return currentContext_;
}
- (void)setCurrentContext:(OrgXmlSaxHelpersNamespaceSupport_Context *)currentContext {
  JreOperatorRetainedAssign(&currentContext_, currentContext);
}
@synthesize currentContext = currentContext_;
@synthesize contextPos = contextPos_;
@synthesize namespaceDeclUris = namespaceDeclUris_;

+ (NSString *)XMLNS {
  return OrgXmlSaxHelpersNamespaceSupport_XMLNS_;
}

+ (NSString *)NSDECL {
  return OrgXmlSaxHelpersNamespaceSupport_NSDECL_;
}

+ (id<JavaUtilEnumeration>)EMPTY_ENUMERATION {
  return OrgXmlSaxHelpersNamespaceSupport_EMPTY_ENUMERATION_;
}

- (id)init {
  if ((self = [super init])) {
    [self reset];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)reset {
  JreOperatorRetainedAssign(&contexts_, [[[IOSObjectArray alloc] initWithLength:32 type:[IOSClass classWithClass:[OrgXmlSaxHelpersNamespaceSupport_Context class]]] autorelease]);
  namespaceDeclUris_ = NO;
  contextPos_ = 0;
  [((IOSObjectArray *) NIL_CHK(contexts_)) replaceObjectAtIndex:contextPos_ withObject:JreOperatorRetainedAssign(&currentContext_, [[[OrgXmlSaxHelpersNamespaceSupport_Context alloc] initWithOrgXmlSaxHelpersNamespaceSupport:self] autorelease])];
  [((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(currentContext_)) declarePrefixWithNSString:@"xml" withNSString:OrgXmlSaxHelpersNamespaceSupport_XMLNS_];
}

- (void)pushContext {
  int max = (int) [((IOSObjectArray *) NIL_CHK(contexts_)) count];
  ((OrgXmlSaxHelpersNamespaceSupport_Context *) ((OrgXmlSaxHelpersNamespaceSupport_Context *) [((IOSObjectArray *) NIL_CHK(contexts_)) objectAtIndex:contextPos_])).declsOK = NO;
  contextPos_++;
  if (contextPos_ >= max) {
    IOSObjectArray *newContexts = [[[IOSObjectArray alloc] initWithLength:max * 2 type:[IOSClass classWithClass:[OrgXmlSaxHelpersNamespaceSupport_Context class]]] autorelease];
    [JavaLangSystem arraycopyWithId:contexts_ withInt:0 withId:newContexts withInt:0 withInt:max];
    max *= 2;
    JreOperatorRetainedAssign(&contexts_, newContexts);
  }
  JreOperatorRetainedAssign(&currentContext_, ((OrgXmlSaxHelpersNamespaceSupport_Context *) [((IOSObjectArray *) NIL_CHK(contexts_)) objectAtIndex:contextPos_]));
  if (currentContext_ == nil) {
    [((IOSObjectArray *) NIL_CHK(contexts_)) replaceObjectAtIndex:contextPos_ withObject:JreOperatorRetainedAssign(&currentContext_, [[[OrgXmlSaxHelpersNamespaceSupport_Context alloc] initWithOrgXmlSaxHelpersNamespaceSupport:self] autorelease])];
  }
  if (contextPos_ > 0) {
    [((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(currentContext_)) setParentWithOrgXmlSaxHelpersNamespaceSupport_Context:((OrgXmlSaxHelpersNamespaceSupport_Context *) [((IOSObjectArray *) NIL_CHK(contexts_)) objectAtIndex:contextPos_ - 1])];
  }
}

- (void)popContext {
  [((OrgXmlSaxHelpersNamespaceSupport_Context *) [((IOSObjectArray *) NIL_CHK(contexts_)) objectAtIndex:contextPos_]) clear];
  contextPos_--;
  if (contextPos_ < 0) {
    @throw [[[JavaUtilEmptyStackException alloc] init] autorelease];
  }
  JreOperatorRetainedAssign(&currentContext_, ((OrgXmlSaxHelpersNamespaceSupport_Context *) [((IOSObjectArray *) NIL_CHK(contexts_)) objectAtIndex:contextPos_]));
}

- (BOOL)declarePrefixWithNSString:(NSString *)prefix
                     withNSString:(NSString *)uri {
  if ([NIL_CHK(prefix) isEqual:@"xml"] || [NIL_CHK(prefix) isEqual:@"xmlns"]) {
    return NO;
  }
  else {
    [((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(currentContext_)) declarePrefixWithNSString:prefix withNSString:uri];
    return YES;
  }
}

- (IOSObjectArray *)processNameWithNSString:(NSString *)qName
                          withNSStringArray:(IOSObjectArray *)parts
                                   withBOOL:(BOOL)isAttribute {
  IOSObjectArray *myParts = [((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(currentContext_)) processNameWithNSString:qName withBOOL:isAttribute];
  if (myParts == nil) {
    return nil;
  }
  else {
    [((IOSObjectArray *) NIL_CHK(parts)) replaceObjectAtIndex:0 withObject:((NSString *) [myParts objectAtIndex:0])];
    [((IOSObjectArray *) NIL_CHK(parts)) replaceObjectAtIndex:1 withObject:((NSString *) [myParts objectAtIndex:1])];
    [((IOSObjectArray *) NIL_CHK(parts)) replaceObjectAtIndex:2 withObject:((NSString *) [myParts objectAtIndex:2])];
    return parts;
  }
}

- (NSString *)getURIWithNSString:(NSString *)prefix {
  return [((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(currentContext_)) getURIWithNSString:prefix];
}

- (id<JavaUtilEnumeration>)getPrefixes {
  return [((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(currentContext_)) getPrefixes];
}

- (NSString *)getPrefixWithNSString:(NSString *)uri {
  return [((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(currentContext_)) getPrefixWithNSString:uri];
}

- (id<JavaUtilEnumeration>)getPrefixesWithNSString:(NSString *)uri {
  JavaUtilArrayList *prefixes = [[[JavaUtilArrayList alloc] init] autorelease];
  id<JavaUtilEnumeration> allPrefixes = [self getPrefixes];
  while ([((id<JavaUtilEnumeration>) NIL_CHK(allPrefixes)) hasMoreElements]) {
    NSString *prefix = (NSString *) [((id<JavaUtilEnumeration>) NIL_CHK(allPrefixes)) nextElement];
    if ([NIL_CHK(uri) isEqual:[self getURIWithNSString:prefix]]) {
      [((JavaUtilArrayList *) NIL_CHK(prefixes)) addWithId:prefix];
    }
  }
  return ((id<JavaUtilEnumeration>) [JavaUtilCollections enumerationWithJavaUtilCollection:prefixes]);
}

- (id<JavaUtilEnumeration>)getDeclaredPrefixes {
  return [((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(currentContext_)) getDeclaredPrefixes];
}

- (void)setNamespaceDeclUrisWithBOOL:(BOOL)value {
  if (contextPos_ != 0) @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
  if (value == namespaceDeclUris_) return;
  namespaceDeclUris_ = value;
  if (value) [((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(currentContext_)) declarePrefixWithNSString:@"xmlns" withNSString:OrgXmlSaxHelpersNamespaceSupport_NSDECL_];
  else {
    [((IOSObjectArray *) NIL_CHK(contexts_)) replaceObjectAtIndex:contextPos_ withObject:JreOperatorRetainedAssign(&currentContext_, [[[OrgXmlSaxHelpersNamespaceSupport_Context alloc] initWithOrgXmlSaxHelpersNamespaceSupport:self] autorelease])];
    [((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(currentContext_)) declarePrefixWithNSString:@"xml" withNSString:OrgXmlSaxHelpersNamespaceSupport_XMLNS_];
  }
}

- (BOOL)isNamespaceDeclUris {
  return namespaceDeclUris_;
}

+ (void)initialize {
  if (self == [OrgXmlSaxHelpersNamespaceSupport class]) {
    JreOperatorRetainedAssign(&OrgXmlSaxHelpersNamespaceSupport_EMPTY_ENUMERATION_, ((id<JavaUtilEnumeration>) [JavaUtilCollections enumerationWithJavaUtilCollection:((id<JavaUtilList>) [JavaUtilCollections emptyList])]));
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&currentContext_, nil);
  JreOperatorRetainedAssign(&contexts_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  OrgXmlSaxHelpersNamespaceSupport *typedCopy = (OrgXmlSaxHelpersNamespaceSupport *) copy;
  typedCopy.contexts = contexts_;
  typedCopy.currentContext = currentContext_;
  typedCopy.contextPos = contextPos_;
  typedCopy.namespaceDeclUris = namespaceDeclUris_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:contexts_ name:@"contexts"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:currentContext_ name:@"currentContext"]];
  return result;
}

@end
@implementation OrgXmlSaxHelpersNamespaceSupport_Context

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (OrgXmlSaxHelpersNamespaceSupport *)this$0 {
  return this$0_;
}
@synthesize this$0 = this$0_;
- (JavaUtilHashtable *)prefixTable {
  return prefixTable_;
}
- (void)setPrefixTable:(JavaUtilHashtable *)prefixTable {
  JreOperatorRetainedAssign(&prefixTable_, prefixTable);
}
@synthesize prefixTable = prefixTable_;
- (JavaUtilHashtable *)uriTable {
  return uriTable_;
}
- (void)setUriTable:(JavaUtilHashtable *)uriTable {
  JreOperatorRetainedAssign(&uriTable_, uriTable);
}
@synthesize uriTable = uriTable_;
- (JavaUtilHashtable *)elementNameTable {
  return elementNameTable_;
}
- (void)setElementNameTable:(JavaUtilHashtable *)elementNameTable {
  JreOperatorRetainedAssign(&elementNameTable_, elementNameTable);
}
@synthesize elementNameTable = elementNameTable_;
- (JavaUtilHashtable *)attributeNameTable {
  return attributeNameTable_;
}
- (void)setAttributeNameTable:(JavaUtilHashtable *)attributeNameTable {
  JreOperatorRetainedAssign(&attributeNameTable_, attributeNameTable);
}
@synthesize attributeNameTable = attributeNameTable_;
- (NSString *)defaultNS {
  return defaultNS_;
}
- (void)setDefaultNS:(NSString *)defaultNS {
  JreOperatorRetainedAssign(&defaultNS_, defaultNS);
}
@synthesize defaultNS = defaultNS_;
@synthesize declsOK = declsOK_;
- (JavaUtilArrayList *)declarations {
  return declarations_;
}
- (void)setDeclarations:(JavaUtilArrayList *)declarations {
  JreOperatorRetainedAssign(&declarations_, declarations);
}
@synthesize declarations = declarations_;
@synthesize declSeen = declSeen_;
- (OrgXmlSaxHelpersNamespaceSupport_Context *)parent {
  return parent_;
}
- (void)setParent:(OrgXmlSaxHelpersNamespaceSupport_Context *)parent {
  JreOperatorRetainedAssign(&parent_, parent);
}
@synthesize parent = parent_;

- (id)initWithOrgXmlSaxHelpersNamespaceSupport:(OrgXmlSaxHelpersNamespaceSupport *)outer$0 {
  if ((self = [super init])) {
    this$0_ = outer$0;
    JreOperatorRetainedAssign(&defaultNS_, nil);
    declsOK_ = YES;
    JreOperatorRetainedAssign(&declarations_, nil);
    declSeen_ = NO;
    JreOperatorRetainedAssign(&parent_, nil);
    [self copyTables];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)setParentWithOrgXmlSaxHelpersNamespaceSupport_Context:(OrgXmlSaxHelpersNamespaceSupport_Context *)parent {
  self.parent = parent;
  JreOperatorRetainedAssign(&declarations_, nil);
  JreOperatorRetainedAssign(&prefixTable_, ((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(parent)).prefixTable);
  JreOperatorRetainedAssign(&uriTable_, ((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(parent)).uriTable);
  JreOperatorRetainedAssign(&elementNameTable_, ((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(parent)).elementNameTable);
  JreOperatorRetainedAssign(&attributeNameTable_, ((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(parent)).attributeNameTable);
  JreOperatorRetainedAssign(&defaultNS_, ((OrgXmlSaxHelpersNamespaceSupport_Context *) NIL_CHK(parent)).defaultNS);
  declSeen_ = NO;
  declsOK_ = YES;
}

- (void)clear {
  JreOperatorRetainedAssign(&parent_, nil);
  JreOperatorRetainedAssign(&prefixTable_, nil);
  JreOperatorRetainedAssign(&uriTable_, nil);
  JreOperatorRetainedAssign(&elementNameTable_, nil);
  JreOperatorRetainedAssign(&attributeNameTable_, nil);
  JreOperatorRetainedAssign(&defaultNS_, nil);
}

- (void)declarePrefixWithNSString:(NSString *)prefix
                     withNSString:(NSString *)uri {
  if (!declsOK_) {
    @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"can't declare any more prefixes in this context"] autorelease];
  }
  if (!declSeen_) {
    [self copyTables];
  }
  if (declarations_ == nil) {
    JreOperatorRetainedAssign(&declarations_, [[[JavaUtilArrayList alloc] init] autorelease]);
  }
  prefix = [NIL_CHK(prefix) intern];
  uri = [NIL_CHK(uri) intern];
  if ([@"" isEqual:prefix]) {
    if ([@"" isEqual:uri]) {
      JreOperatorRetainedAssign(&defaultNS_, nil);
    }
    else {
      JreOperatorRetainedAssign(&defaultNS_, uri);
    }
  }
  else {
    [((JavaUtilHashtable *) NIL_CHK(prefixTable_)) putWithId:prefix withId:uri];
    [((JavaUtilHashtable *) NIL_CHK(uriTable_)) putWithId:uri withId:prefix];
  }
  [((JavaUtilArrayList *) NIL_CHK(declarations_)) addWithId:prefix];
}

- (IOSObjectArray *)processNameWithNSString:(NSString *)qName
                                   withBOOL:(BOOL)isAttribute {
  IOSObjectArray *name;
  JavaUtilHashtable *table;
  declsOK_ = NO;
  if (isAttribute) {
    table = attributeNameTable_;
  }
  else {
    table = elementNameTable_;
  }
  name = (IOSObjectArray *) [((JavaUtilHashtable *) NIL_CHK(table)) getWithId:qName];
  if (name != nil) {
    return name;
  }
  name = [[[IOSObjectArray alloc] initWithLength:3 type:[IOSClass classWithClass:[NSString class]]] autorelease];
  [((IOSObjectArray *) NIL_CHK(name)) replaceObjectAtIndex:2 withObject:[NIL_CHK(qName) intern]];
  int index = [NIL_CHK(qName) indexOf:':'];
  if (index == -1) {
    if (isAttribute) {
      if ([@"xmlns" isEqual:qName] && this$0_.namespaceDeclUris) [((IOSObjectArray *) NIL_CHK(name)) replaceObjectAtIndex:0 withObject:[OrgXmlSaxHelpersNamespaceSupport NSDECL]];
      else [((IOSObjectArray *) NIL_CHK(name)) replaceObjectAtIndex:0 withObject:@""];
    }
    else if (defaultNS_ == nil) {
      [((IOSObjectArray *) NIL_CHK(name)) replaceObjectAtIndex:0 withObject:@""];
    }
    else {
      [((IOSObjectArray *) NIL_CHK(name)) replaceObjectAtIndex:0 withObject:defaultNS_];
    }
    [((IOSObjectArray *) NIL_CHK(name)) replaceObjectAtIndex:1 withObject:((NSString *) [((IOSObjectArray *) NIL_CHK(name)) objectAtIndex:2])];
  }
  else {
    NSString *prefix = [NIL_CHK(qName) substring:0 endIndex:index];
    NSString *local = [NIL_CHK(qName) substring:index + 1];
    NSString *uri;
    if ([@"" isEqual:prefix]) {
      uri = defaultNS_;
    }
    else {
      uri = (NSString *) [((JavaUtilHashtable *) NIL_CHK(prefixTable_)) getWithId:prefix];
    }
    if (uri == nil || (!isAttribute && [@"xmlns" isEqual:prefix])) {
      return nil;
    }
    [((IOSObjectArray *) NIL_CHK(name)) replaceObjectAtIndex:0 withObject:uri];
    [((IOSObjectArray *) NIL_CHK(name)) replaceObjectAtIndex:1 withObject:[NIL_CHK(local) intern]];
  }
  [((JavaUtilHashtable *) NIL_CHK(table)) putWithId:((NSString *) [((IOSObjectArray *) NIL_CHK(name)) objectAtIndex:2]) withId:name];
  return name;
}

- (NSString *)getURIWithNSString:(NSString *)prefix {
  if ([@"" isEqual:prefix]) {
    return defaultNS_;
  }
  else if (prefixTable_ == nil) {
    return nil;
  }
  else {
    return (NSString *) [prefixTable_ getWithId:prefix];
  }
}

- (NSString *)getPrefixWithNSString:(NSString *)uri {
  if (uriTable_ == nil) {
    return nil;
  }
  else {
    return (NSString *) [uriTable_ getWithId:uri];
  }
}

- (id<JavaUtilEnumeration>)getDeclaredPrefixes {
  return (declarations_ == nil) ? ((id<JavaUtilEnumeration>) [OrgXmlSaxHelpersNamespaceSupport EMPTY_ENUMERATION]) : ((id<JavaUtilEnumeration>) ((id<JavaUtilEnumeration>) [JavaUtilCollections enumerationWithJavaUtilCollection:declarations_]));
}

- (id<JavaUtilEnumeration>)getPrefixes {
  if (prefixTable_ == nil) {
    return [OrgXmlSaxHelpersNamespaceSupport EMPTY_ENUMERATION];
  }
  else {
    return [prefixTable_ keys];
  }
}

- (void)copyTables OBJC_METHOD_FAMILY_NONE {
  if (prefixTable_ != nil) {
    JreOperatorRetainedAssign(&prefixTable_, (JavaUtilHashtable *) [prefixTable_ clone]);
  }
  else {
    JreOperatorRetainedAssign(&prefixTable_, [[[JavaUtilHashtable alloc] init] autorelease]);
  }
  if (uriTable_ != nil) {
    JreOperatorRetainedAssign(&uriTable_, (JavaUtilHashtable *) [uriTable_ clone]);
  }
  else {
    JreOperatorRetainedAssign(&uriTable_, [[[JavaUtilHashtable alloc] init] autorelease]);
  }
  JreOperatorRetainedAssign(&elementNameTable_, [[[JavaUtilHashtable alloc] init] autorelease]);
  JreOperatorRetainedAssign(&attributeNameTable_, [[[JavaUtilHashtable alloc] init] autorelease]);
  declSeen_ = YES;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&parent_, nil);
  JreOperatorRetainedAssign(&declarations_, nil);
  JreOperatorRetainedAssign(&defaultNS_, nil);
  JreOperatorRetainedAssign(&attributeNameTable_, nil);
  JreOperatorRetainedAssign(&elementNameTable_, nil);
  JreOperatorRetainedAssign(&uriTable_, nil);
  JreOperatorRetainedAssign(&prefixTable_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  OrgXmlSaxHelpersNamespaceSupport_Context *typedCopy = (OrgXmlSaxHelpersNamespaceSupport_Context *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.prefixTable = prefixTable_;
  typedCopy.uriTable = uriTable_;
  typedCopy.elementNameTable = elementNameTable_;
  typedCopy.attributeNameTable = attributeNameTable_;
  typedCopy.defaultNS = defaultNS_;
  typedCopy.declsOK = declsOK_;
  typedCopy.declarations = declarations_;
  typedCopy.declSeen = declSeen_;
  typedCopy.parent = parent_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
