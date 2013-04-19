//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/Properties.java
//
//  Created by retechretech on 13-4-19.
//

#import "IOSCharArray.h"
#import "java/io/BufferedReader.h"
#import "java/io/IOException.h"
#import "java/io/InputStream.h"
#import "java/io/InputStreamReader.h"
#import "java/io/OutputStream.h"
#import "java/io/OutputStreamWriter.h"
#import "java/io/PrintStream.h"
#import "java/io/PrintWriter.h"
#import "java/io/Reader.h"
#import "java/io/Writer.h"
#import "java/lang/Appendable.h"
#import "java/lang/AssertionError.h"
#import "java/lang/Character.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/Integer.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/StringBuilder.h"
#import "java/lang/System.h"
#import "java/util/Collections.h"
#import "java/util/Date.h"
#import "java/util/Enumeration.h"
#import "java/util/Hashtable.h"
#import "java/util/InvalidPropertiesFormatException.h"
#import "java/util/Iterator.h"
#import "java/util/Map.h"
#import "java/util/Properties.h"
#import "java/util/Set.h"
#import "org/xml/sax/Attributes.h"
#import "org/xml/sax/InputSource.h"
#import "org/xml/sax/SAXException.h"
#import "org/xml/sax/XMLReader.h"
#import "org/xml/sax/helpers/XMLReaderFactory.h"

@implementation JavaUtilProperties

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaUtilProperties_PROP_DTD_NAME_ name:@"JavaUtilProperties_PROP_DTD_NAME_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaUtilProperties_PROP_DTD_ name:@"JavaUtilProperties_PROP_DTD_"]];
  return result;
}

static NSString * JavaUtilProperties_PROP_DTD_NAME_ = @"http://java.sun.com/dtd/properties.dtd";
static NSString * JavaUtilProperties_PROP_DTD_ = @"<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT properties (comment?, entry*) >    <!ATTLIST properties version CDATA #FIXED \"1.0\" >    <!ELEMENT comment (#PCDATA) >    <!ELEMENT entry (#PCDATA) >    <!ATTLIST entry key CDATA #REQUIRED >";

- (JavaUtilProperties *)defaults {
  return defaults_;
}
- (void)setDefaults:(JavaUtilProperties *)defaults {
  JreOperatorRetainedAssign(&defaults_, defaults);
}
@synthesize defaults = defaults_;

+ (NSString *)PROP_DTD_NAME {
  return JavaUtilProperties_PROP_DTD_NAME_;
}

+ (NSString *)PROP_DTD {
  return JavaUtilProperties_PROP_DTD_;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (id)initWithJavaUtilProperties:(JavaUtilProperties *)properties {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&defaults_, properties);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dumpStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer
                               withNSString:(NSString *)string
                                   withBOOL:(BOOL)key {
  int i = 0;
  if (!key && i < [NIL_CHK(string) length] && [NIL_CHK(string) charAtWithInt:i] == ' ') {
    [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@"\\ "];
    i++;
  }
  for (; i < [NIL_CHK(string) length]; i++) {
    unichar ch = [NIL_CHK(string) charAtWithInt:i];
    switch (ch) {
      case 0x0009:
      [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@"\\t"];
      break;
      case 0x000a:
      [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@"\\n"];
      break;
      case 0x000c:
      [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@"\\f"];
      break;
      case 0x000d:
      [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@"\\r"];
      break;
      default:
      if ([@"\\#!=:" indexOf:ch] >= 0 || (key && ch == ' ')) {
        [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithUnichar:'\\'];
      }
      if (ch >= ' ' && ch <= '~') {
        [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithUnichar:ch];
      }
      else {
        NSString *hex = [JavaLangInteger toHexStringWithInt:ch];
        [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@"\\u"];
        for (int j = 0; j < 4 - [NIL_CHK(hex) length]; j++) {
          [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:@"0"];
        }
        [((JavaLangStringBuilder *) NIL_CHK(buffer)) appendWithNSString:hex];
      }
    }
  }
}

- (NSString *)getPropertyWithNSString:(NSString *)name {
  id result = [super getWithId:name];
  NSString *property = [result isKindOfClass:[NSString class]] ? (NSString *) result : nil;
  if (property == nil && defaults_ != nil) {
    property = [((JavaUtilProperties *) NIL_CHK(defaults_)) getPropertyWithNSString:name];
  }
  return property;
}

- (NSString *)getPropertyWithNSString:(NSString *)name
                         withNSString:(NSString *)defaultValue {
  id result = [super getWithId:name];
  NSString *property = [result isKindOfClass:[NSString class]] ? (NSString *) result : nil;
  if (property == nil && defaults_ != nil) {
    property = [((JavaUtilProperties *) NIL_CHK(defaults_)) getPropertyWithNSString:name];
  }
  if (property == nil) {
    return defaultValue;
  }
  return property;
}

- (void)listWithJavaIoPrintStream:(JavaIoPrintStream *)outArg {
  [self listToAppendableWithJavaLangAppendable:outArg];
}

- (void)listWithJavaIoPrintWriter:(JavaIoPrintWriter *)outArg {
  [self listToAppendableWithJavaLangAppendable:outArg];
}

- (void)listToAppendableWithJavaLangAppendable:(id<JavaLangAppendable>)outArg {
  @try {
    if (outArg == nil) {
      @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"out == null"] autorelease];
    }
    JavaLangStringBuilder *sb = [[[JavaLangStringBuilder alloc] initWithInt:80] autorelease];
    id<JavaUtilEnumeration> keys = [self propertyNames];
    while ([((id<JavaUtilEnumeration>) NIL_CHK(keys)) hasMoreElements]) {
      NSString *key = (NSString *) [((id<JavaUtilEnumeration>) NIL_CHK(keys)) nextElement];
      [((JavaLangStringBuilder *) NIL_CHK(sb)) appendWithNSString:key];
      [((JavaLangStringBuilder *) NIL_CHK(sb)) appendWithUnichar:'='];
      NSString *property = (NSString *) [super getWithId:key];
      JavaUtilProperties *def = defaults_;
      while (property == nil) {
        property = (NSString *) [((JavaUtilProperties *) NIL_CHK(def)) getWithId:key];
        def = ((JavaUtilProperties *) NIL_CHK(def)).defaults;
      }
      if ([NIL_CHK(property) length] > 40) {
        [((JavaLangStringBuilder *) NIL_CHK(sb)) appendWithNSString:[NIL_CHK(property) substring:0 endIndex:37]];
        [((JavaLangStringBuilder *) NIL_CHK(sb)) appendWithNSString:@"..."];
      }
      else {
        [((JavaLangStringBuilder *) NIL_CHK(sb)) appendWithNSString:property];
      }
      [((JavaLangStringBuilder *) NIL_CHK(sb)) appendWithNSString:[JavaLangSystem lineSeparator]];
      [((id<JavaLangAppendable>) NIL_CHK(outArg)) appendWithJavaLangCharSequence:[((JavaLangStringBuilder *) NIL_CHK(sb)) description]];
      [((JavaLangStringBuilder *) NIL_CHK(sb)) setLengthWithInt:0];
    }
  }
  @catch (JavaIoIOException *ex) {
    @throw [[[JavaLangAssertionError alloc] initWithId:ex] autorelease];
  }
}

- (void)load__WithJavaIoInputStream:(JavaIoInputStream *)inArg {
  @synchronized(self) {
    {
      if (inArg == nil) {
        @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"in == null"] autorelease];
      }
      [self load__WithJavaIoReader:[[[JavaIoInputStreamReader alloc] initWithJavaIoInputStream:inArg withNSString:@"ISO-8859-1"] autorelease]];
    }
  }
}

- (void)load__WithJavaIoReader:(JavaIoReader *)inArg {
  @synchronized(self) {
    {
      if (inArg == nil) {
        @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"in == null"] autorelease];
      }
      int mode = JavaUtilProperties_NONE, unicode = 0, count = 0;
      unichar nextChar;
      IOSCharArray *buf = [[[IOSCharArray alloc] initWithLength:40] autorelease];
      int offset = 0, keyLength = -1, intVal;
      BOOL firstChar = YES;
      JavaIoBufferedReader *br = [[[JavaIoBufferedReader alloc] initWithJavaIoReader:inArg] autorelease];
      while (YES) {
        intVal = [((JavaIoBufferedReader *) NIL_CHK(br)) read];
        if (intVal == -1) {
          break;
        }
        nextChar = (unichar) intVal;
        if (offset == (int) [((IOSCharArray *) NIL_CHK(buf)) count]) {
          IOSCharArray *newBuf = [[[IOSCharArray alloc] initWithLength:(int) [((IOSCharArray *) NIL_CHK(buf)) count] * 2] autorelease];
          [JavaLangSystem arraycopyWithId:buf withInt:0 withId:newBuf withInt:0 withInt:offset];
          buf = newBuf;
        }
        if (mode == JavaUtilProperties_UNICODE) {
          int digit = [JavaLangCharacter digitWithUnichar:nextChar withInt:16];
          if (digit >= 0) {
            unicode = (unicode << 4) + digit;
            if (++count < 4) {
              continue;
            }
          }
          else if (count <= 4) {
            @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"Invalid Unicode sequence: illegal character"] autorelease];
          }
          mode = JavaUtilProperties_NONE;
          [((IOSCharArray *) NIL_CHK(buf)) replaceCharAtIndex:offset++ withChar:(unichar) unicode];
          if (nextChar != 0x000a) {
            continue;
          }
        }
        if (mode == JavaUtilProperties_SLASH) {
          mode = JavaUtilProperties_NONE;
          switch (nextChar) {
            case 0x000d:
            mode = JavaUtilProperties_CONTINUE;
            continue;
            case 0x000a:
            mode = JavaUtilProperties_IGNORE;
            continue;
            case 'b':
            nextChar = 0x0008;
            break;
            case 'f':
            nextChar = 0x000c;
            break;
            case 'n':
            nextChar = 0x000a;
            break;
            case 'r':
            nextChar = 0x000d;
            break;
            case 't':
            nextChar = 0x0009;
            break;
            case 'u':
            mode = JavaUtilProperties_UNICODE;
            unicode = count = 0;
            continue;
          }
        }
        else {
          switch (nextChar) {
            case '#':
            case '!':
            if (firstChar) {
              while (YES) {
                intVal = [((JavaIoBufferedReader *) NIL_CHK(br)) read];
                if (intVal == -1) {
                  break;
                }
                nextChar = (unichar) intVal;
                if (nextChar == 0x000d || nextChar == 0x000a) {
                  break;
                }
              }
              continue;
            }
            break;
            case 0x000a:
            if (mode == JavaUtilProperties_CONTINUE) {
              mode = JavaUtilProperties_IGNORE;
              continue;
            }
            case 0x000d:
            mode = JavaUtilProperties_NONE;
            firstChar = YES;
            if (offset > 0 || (offset == 0 && keyLength == 0)) {
              if (keyLength == -1) {
                keyLength = offset;
              }
              NSString *temp = [NSString stringWithCharacters:buf offset:0 length:offset];
              [self putWithId:[NIL_CHK(temp) substring:0 endIndex:keyLength] withId:[NIL_CHK(temp) substring:keyLength]];
            }
            keyLength = -1;
            offset = 0;
            continue;
            case '\\':
            if (mode == JavaUtilProperties_KEY_DONE) {
              keyLength = offset;
            }
            mode = JavaUtilProperties_SLASH;
            continue;
            case ':':
            case '=':
            if (keyLength == -1) {
              mode = JavaUtilProperties_NONE;
              keyLength = offset;
              continue;
            }
            break;
          }
          if ([JavaLangCharacter isWhitespaceWithUnichar:nextChar]) {
            if (mode == JavaUtilProperties_CONTINUE) {
              mode = JavaUtilProperties_IGNORE;
            }
            if (offset == 0 || offset == keyLength || mode == JavaUtilProperties_IGNORE) {
              continue;
            }
            if (keyLength == -1) {
              mode = JavaUtilProperties_KEY_DONE;
              continue;
            }
          }
          if (mode == JavaUtilProperties_IGNORE || mode == JavaUtilProperties_CONTINUE) {
            mode = JavaUtilProperties_NONE;
          }
        }
        firstChar = NO;
        if (mode == JavaUtilProperties_KEY_DONE) {
          keyLength = offset;
          mode = JavaUtilProperties_NONE;
        }
        [((IOSCharArray *) NIL_CHK(buf)) replaceCharAtIndex:offset++ withChar:nextChar];
      }
      if (mode == JavaUtilProperties_UNICODE && count <= 4) {
        @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"Invalid Unicode sequence: expected format \\uxxxx"] autorelease];
      }
      if (keyLength == -1 && offset > 0) {
        keyLength = offset;
      }
      if (keyLength >= 0) {
        NSString *temp = [NSString stringWithCharacters:buf offset:0 length:offset];
        NSString *key = [NIL_CHK(temp) substring:0 endIndex:keyLength];
        NSString *value = [NIL_CHK(temp) substring:keyLength];
        if (mode == JavaUtilProperties_SLASH) {
          value = [NSString stringWithFormat:@"%@\x00", value];
        }
        [self putWithId:key withId:value];
      }
    }
  }
}

- (id<JavaUtilEnumeration>)propertyNames {
  JavaUtilHashtable *selected = [[[JavaUtilHashtable alloc] init] autorelease];
  [self selectPropertiesWithJavaUtilHashtable:selected withBOOL:NO];
  return ((id<JavaUtilEnumeration>) [((JavaUtilHashtable *) NIL_CHK(selected)) keys]);
}

- (id<JavaUtilSet>)stringPropertyNames {
  JavaUtilHashtable *stringProperties = [[[JavaUtilHashtable alloc] init] autorelease];
  [self selectPropertiesWithJavaUtilHashtable:stringProperties withBOOL:YES];
  return ((id<JavaUtilSet>) [JavaUtilCollections unmodifiableSetWithJavaUtilSet:((id<JavaUtilSet>) [((JavaUtilHashtable *) NIL_CHK(stringProperties)) keySet])]);
}

- (void)selectPropertiesWithJavaUtilHashtable:(JavaUtilHashtable *)selectProperties
                                     withBOOL:(BOOL)isStringOnly {
  if (defaults_ != nil) {
    [defaults_ selectPropertiesWithJavaUtilHashtable:selectProperties withBOOL:isStringOnly];
  }
  id<JavaUtilEnumeration> keys = ((id<JavaUtilEnumeration>) [self keys]);
  while ([((id<JavaUtilEnumeration>) NIL_CHK(keys)) hasMoreElements]) {
    id key = (id) [((id<JavaUtilEnumeration>) NIL_CHK(keys)) nextElement];
    if (isStringOnly && !([key isKindOfClass:[NSString class]])) {
      continue;
    }
    id value = [self getWithId:key];
    [((JavaUtilHashtable *) NIL_CHK(selectProperties)) putWithId:key withId:value];
  }
}

- (void)saveWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                      withNSString:(NSString *)comment {
  @try {
    [self storeWithJavaIoOutputStream:outArg withNSString:comment];
  }
  @catch (JavaIoIOException *e) {
  }
}

- (id)setPropertyWithNSString:(NSString *)name
                 withNSString:(NSString *)value {
  return [self putWithId:name withId:value];
}

- (void)storeWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                       withNSString:(NSString *)comment {
  @synchronized(self) {
    {
      [self storeWithJavaIoWriter:[[[JavaIoOutputStreamWriter alloc] initWithJavaIoOutputStream:outArg withNSString:@"ISO-8859-1"] autorelease] withNSString:comment];
    }
  }
}

- (void)storeWithJavaIoWriter:(JavaIoWriter *)writer
                 withNSString:(NSString *)comment {
  @synchronized(self) {
    {
      if (comment != nil) {
        [((JavaIoWriter *) NIL_CHK(writer)) writeWithNSString:@"#"];
        [((JavaIoWriter *) NIL_CHK(writer)) writeWithNSString:comment];
        [((JavaIoWriter *) NIL_CHK(writer)) writeWithNSString:[JavaLangSystem lineSeparator]];
      }
      [((JavaIoWriter *) NIL_CHK(writer)) writeWithNSString:@"#"];
      [((JavaIoWriter *) NIL_CHK(writer)) writeWithNSString:[((NSObject *) [[[JavaUtilDate alloc] init] autorelease]) description]];
      [((JavaIoWriter *) NIL_CHK(writer)) writeWithNSString:[JavaLangSystem lineSeparator]];
      JavaLangStringBuilder *sb = [[[JavaLangStringBuilder alloc] initWithInt:200] autorelease];
      {
        id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilSet>) [self entrySet]) iterator]);
        while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
          id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
          NSString *key = (NSString *) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey];
          [self dumpStringWithJavaLangStringBuilder:sb withNSString:key withBOOL:YES];
          [((JavaLangStringBuilder *) NIL_CHK(sb)) appendWithUnichar:'='];
          [self dumpStringWithJavaLangStringBuilder:sb withNSString:(NSString *) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue] withBOOL:NO];
          [((JavaLangStringBuilder *) NIL_CHK(sb)) appendWithNSString:[JavaLangSystem lineSeparator]];
          [((JavaIoWriter *) NIL_CHK(writer)) writeWithNSString:[((JavaLangStringBuilder *) NIL_CHK(sb)) description]];
          [((JavaLangStringBuilder *) NIL_CHK(sb)) setLengthWithInt:0];
        }
      }
      [((JavaIoWriter *) NIL_CHK(writer)) flush];
    }
  }
}

- (void)loadFromXMLWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  @synchronized(self) {
    {
      if (inArg == nil) {
        @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"in == null"] autorelease];
      }
      @try {
        id<OrgXmlSaxXMLReader> reader = [OrgXmlSaxHelpersXMLReaderFactory createXMLReader];
        [((id<OrgXmlSaxXMLReader>) NIL_CHK(reader)) setContentHandlerWithOrgXmlSaxContentHandler:[[[JavaUtilProperties_$1 alloc] initWithJavaUtilProperties:self] autorelease]];
        [((id<OrgXmlSaxXMLReader>) NIL_CHK(reader)) parseWithOrgXmlSaxInputSource:[[[OrgXmlSaxInputSource alloc] initWithJavaIoInputStream:inArg] autorelease]];
      }
      @catch (OrgXmlSaxSAXException *e) {
        @throw [[[JavaUtilInvalidPropertiesFormatException alloc] initWithJavaLangThrowable:e] autorelease];
      }
    }
  }
}

- (void)storeToXMLWithJavaIoOutputStream:(JavaIoOutputStream *)os
                            withNSString:(NSString *)comment {
  [self storeToXMLWithJavaIoOutputStream:os withNSString:comment withNSString:@"UTF-8"];
}

- (void)storeToXMLWithJavaIoOutputStream:(JavaIoOutputStream *)os
                            withNSString:(NSString *)comment
                            withNSString:(NSString *)encoding {
  @synchronized(self) {
    {
      if (os == nil) {
        @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"os == null"] autorelease];
      }
      else if (encoding == nil) {
        @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"encoding == null"] autorelease];
      }
      NSString *encodingCanonicalName = @"UTF-8";
      JavaIoPrintStream *printStream = [[[JavaIoPrintStream alloc] initWithJavaIoOutputStream:os withBOOL:NO withNSString:encodingCanonicalName] autorelease];
      [((JavaIoPrintStream *) NIL_CHK(printStream)) printWithNSString:@"<?xml version=\"1.0\" encoding=\""];
      [((JavaIoPrintStream *) NIL_CHK(printStream)) printWithNSString:encodingCanonicalName];
      [((JavaIoPrintStream *) NIL_CHK(printStream)) printlnWithNSString:@"\"?>"];
      [((JavaIoPrintStream *) NIL_CHK(printStream)) printWithNSString:@"<!DOCTYPE properties SYSTEM \""];
      [((JavaIoPrintStream *) NIL_CHK(printStream)) printWithNSString:JavaUtilProperties_PROP_DTD_NAME_];
      [((JavaIoPrintStream *) NIL_CHK(printStream)) printlnWithNSString:@"\">"];
      [((JavaIoPrintStream *) NIL_CHK(printStream)) printlnWithNSString:@"<properties>"];
      if (comment != nil) {
        [((JavaIoPrintStream *) NIL_CHK(printStream)) printWithNSString:@"<comment>"];
        [((JavaIoPrintStream *) NIL_CHK(printStream)) printWithNSString:[self substitutePredefinedEntriesWithNSString:comment]];
        [((JavaIoPrintStream *) NIL_CHK(printStream)) printlnWithNSString:@"</comment>"];
      }
      {
        id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilSet>) [self entrySet]) iterator]);
        while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
          id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
          NSString *keyValue = (NSString *) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey];
          NSString *entryValue = (NSString *) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue];
          [((JavaIoPrintStream *) NIL_CHK(printStream)) printWithNSString:@"<entry key=\""];
          [((JavaIoPrintStream *) NIL_CHK(printStream)) printWithNSString:[self substitutePredefinedEntriesWithNSString:keyValue]];
          [((JavaIoPrintStream *) NIL_CHK(printStream)) printWithNSString:@"\">"];
          [((JavaIoPrintStream *) NIL_CHK(printStream)) printWithNSString:[self substitutePredefinedEntriesWithNSString:entryValue]];
          [((JavaIoPrintStream *) NIL_CHK(printStream)) printlnWithNSString:@"</entry>"];
        }
      }
      [((JavaIoPrintStream *) NIL_CHK(printStream)) printlnWithNSString:@"</properties>"];
      [((JavaIoPrintStream *) NIL_CHK(printStream)) flush];
    }
  }
}

- (NSString *)substitutePredefinedEntriesWithNSString:(NSString *)s {
  s = [NIL_CHK(s) replaceAll:@"&" withReplacement:@"&amp;"];
  s = [NIL_CHK(s) replaceAll:@"<" withReplacement:@"&lt;"];
  s = [NIL_CHK(s) replaceAll:@">" withReplacement:@"&gt;"];
  s = [NIL_CHK(s) replaceAll:@"'" withReplacement:@"&apos;"];
  s = [NIL_CHK(s) replaceAll:@"\"" withReplacement:@"&quot;"];
  return s;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&defaults_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilProperties *typedCopy = (JavaUtilProperties *) copy;
  typedCopy.defaults = defaults_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:defaults_ name:@"defaults"]];
  return result;
}

@end
@implementation JavaUtilProperties_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilProperties *)this$0 {
  return this$0_;
}
- (void)setThis$0:(JavaUtilProperties *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;
- (NSString *)key {
  return key_;
}
- (void)setKey:(NSString *)key {
  JreOperatorRetainedAssign(&key_, key);
}
@synthesize key = key_;

- (void)startElementWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)attributes {
  JreOperatorRetainedAssign(&key_, nil);
  if ([NIL_CHK(qName) isEqual:@"entry"]) {
    JreOperatorRetainedAssign(&key_, [((id<OrgXmlSaxAttributes>) NIL_CHK(attributes)) getValueWithNSString:@"key"]);
  }
}

- (void)charactersWithJavaLangCharacterArray:(IOSCharArray *)ch
                                     withInt:(int)start
                                     withInt:(int)length {
  if (key_ != nil) {
    NSString *value = [NSString stringWithCharacters:ch offset:start length:length];
    [this$0_ putWithId:key_ withId:value];
    JreOperatorRetainedAssign(&key_, nil);
  }
}

- (id)initWithJavaUtilProperties:(JavaUtilProperties *)outer$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$0);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&key_, nil);
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilProperties_$1 *typedCopy = (JavaUtilProperties_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.key = key_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:key_ name:@"key"]];
  return result;
}

@end
