//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "java/lang/Error.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/NullPointerException.h"
#include "java/net/MalformedURLException.h"
#include "java/net/URI.h"
#include "java/net/URISyntaxException.h"
#include "java/net/URL.h"
#include "java/net/URLStreamHandler.h"
#include "java/net/URLStreamHandlerFactory.h"
#include "java/util/Hashtable.h"
#include "libcore/net/url/FileHandler.h"
#include "libcore/net/url/UrlUtils.h"

@implementation JavaNetURL

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaNetURL_streamHandlerFactory_ name:@"JavaNetURL_streamHandlerFactory_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaNetURL_streamHandlers_ name:@"JavaNetURL_streamHandlers_"]];
  return result;
}

static id<JavaNetURLStreamHandlerFactory> JavaNetURL_streamHandlerFactory_;
static JavaUtilHashtable * JavaNetURL_streamHandlers_;

+ (id<JavaNetURLStreamHandlerFactory>)streamHandlerFactory {
  return JavaNetURL_streamHandlerFactory_;
}

+ (void)setStreamHandlerFactory:(id<JavaNetURLStreamHandlerFactory>)streamHandlerFactory {
  JreOperatorRetainedAssign(&JavaNetURL_streamHandlerFactory_, nil, streamHandlerFactory);
}

+ (JavaUtilHashtable *)streamHandlers {
  return JavaNetURL_streamHandlers_;
}

+ (void)setURLStreamHandlerFactoryWithJavaNetURLStreamHandlerFactory:(id<JavaNetURLStreamHandlerFactory>)factory {
  @synchronized([self class]) {
    {
      if (JavaNetURL_streamHandlerFactory_ != nil) {
        @throw [[[JavaLangError alloc] initWithNSString:@"Factory already set"] autorelease];
      }
      [((JavaUtilHashtable *) nil_chk(JavaNetURL_streamHandlers_)) clear];
      JreOperatorRetainedAssign(&JavaNetURL_streamHandlerFactory_, nil, factory);
    }
  }
}

- (id)initWithNSString:(NSString *)spec {
  return JreMemDebugAdd([self initJavaNetURLWithJavaNetURL:(JavaNetURL *) check_class_cast(nil, [JavaNetURL class]) withNSString:spec withJavaNetURLStreamHandler:nil]);
}

+ (IOSObjectArray *)__exceptions_JavaNetURLWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaNetMalformedURLException getClass] } count:1 type:[IOSClass getClass]];
}

- (id)initWithJavaNetURL:(JavaNetURL *)context
            withNSString:(NSString *)spec {
  return JreMemDebugAdd([self initJavaNetURLWithJavaNetURL:context withNSString:spec withJavaNetURLStreamHandler:nil]);
}

+ (IOSObjectArray *)__exceptions_JavaNetURLWithJavaNetURL_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaNetMalformedURLException getClass] } count:1 type:[IOSClass getClass]];
}

- (id)initJavaNetURLWithJavaNetURL:(JavaNetURL *)context
                      withNSString:(NSString *)spec
       withJavaNetURLStreamHandler:(JavaNetURLStreamHandler *)handler {
  if (self = [super init]) {
    port_ = -1;
    if (spec == nil) {
      @throw [[[JavaNetMalformedURLException alloc] init] autorelease];
    }
    if (handler != nil) {
      JavaNetURL_set_streamHandler_(self, handler);
    }
    spec = [((NSString *) nil_chk(spec)) trim];
    JavaNetURL_set_protocol_(self, [LibcoreNetUrlUrlUtils getSchemePrefixWithNSString:spec]);
    int schemeSpecificPartStart = protocol_ != nil ? ([protocol_ length] + 1) : 0;
    if (protocol_ != nil && context != nil && ![protocol_ isEqual:context->protocol_]) {
      context = nil;
    }
    if (context != nil) {
      [self setWithNSString:context->protocol_ withNSString:[context getHost] withInt:[context getPort] withNSString:[context getAuthority] withNSString:[context getUserInfo] withNSString:[context getPath] withNSString:[context getQuery] withNSString:[context getRef]];
      if (streamHandler_ == nil) {
        JavaNetURL_set_streamHandler_(self, context->streamHandler_);
      }
    }
    else if (protocol_ == nil) {
      @throw [[[JavaNetMalformedURLException alloc] initWithNSString:[NSString stringWithFormat:@"Protocol not found: %@", spec]] autorelease];
    }
    if (streamHandler_ == nil) {
      [self setupStreamHandler];
      if (streamHandler_ == nil) {
        @throw [[[JavaNetMalformedURLException alloc] initWithNSString:[NSString stringWithFormat:@"Unknown protocol: %@", protocol_]] autorelease];
      }
    }
    @try {
      [((JavaNetURLStreamHandler *) nil_chk(streamHandler_)) parseURLWithJavaNetURL:self withNSString:spec withInt:schemeSpecificPartStart withInt:[((NSString *) nil_chk(spec)) length]];
    }
    @catch (JavaLangException *e) {
      @throw [[[JavaNetMalformedURLException alloc] initWithNSString:[((JavaLangException *) nil_chk(e)) description]] autorelease];
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaNetURL:(JavaNetURL *)context
            withNSString:(NSString *)spec
withJavaNetURLStreamHandler:(JavaNetURLStreamHandler *)handler {
  return [self initJavaNetURLWithJavaNetURL:context withNSString:spec withJavaNetURLStreamHandler:handler];
}

- (id)initWithNSString:(NSString *)protocol
          withNSString:(NSString *)host
          withNSString:(NSString *)file {
  return JreMemDebugAdd([self initJavaNetURLWithNSString:protocol withNSString:host withInt:-1 withNSString:file withJavaNetURLStreamHandler:nil]);
}

+ (IOSObjectArray *)__exceptions_JavaNetURLWithNSString_withNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaNetMalformedURLException getClass] } count:1 type:[IOSClass getClass]];
}

- (id)initWithNSString:(NSString *)protocol
          withNSString:(NSString *)host
               withInt:(int)port
          withNSString:(NSString *)file {
  return JreMemDebugAdd([self initJavaNetURLWithNSString:protocol withNSString:host withInt:port withNSString:file withJavaNetURLStreamHandler:nil]);
}

+ (IOSObjectArray *)__exceptions_JavaNetURLWithNSString_withNSString_withInt_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaNetMalformedURLException getClass] } count:1 type:[IOSClass getClass]];
}

- (id)initJavaNetURLWithNSString:(NSString *)protocol
                    withNSString:(NSString *)host
                         withInt:(int)port
                    withNSString:(NSString *)file
     withJavaNetURLStreamHandler:(JavaNetURLStreamHandler *)handler {
  if (self = [super init]) {
    port_ = -1;
    if (port < -1) {
      @throw [[[JavaNetMalformedURLException alloc] initWithNSString:[NSString stringWithFormat:@"port < -1: %d", port]] autorelease];
    }
    if (protocol == nil) {
      @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"protocol == null"] autorelease];
    }
    if (host != nil && [host contains:@":"] && [host charAtWithInt:0] != '[') {
      host = [NSString stringWithFormat:@"[%@]", host];
    }
    JavaNetURL_set_protocol_(self, protocol);
    JavaNetURL_set_host_(self, host);
    self->port_ = port;
    file = [LibcoreNetUrlUrlUtils authoritySafePathWithNSString:host withNSString:file];
    int hash_ = [((NSString *) nil_chk(file)) indexOfString:@"#"];
    if (hash_ != -1) {
      JavaNetURL_set_file_(self, [file substring:0 endIndex:hash_]);
      JavaNetURL_set_ref_(self, [file substring:hash_ + 1]);
    }
    else {
      JavaNetURL_set_file_(self, file);
    }
    [self fixURLWithBoolean:NO];
    if (handler == nil) {
      [self setupStreamHandler];
      if (streamHandler_ == nil) {
        @throw [[[JavaNetMalformedURLException alloc] initWithNSString:[NSString stringWithFormat:@"Unknown protocol: %@", protocol]] autorelease];
      }
    }
    else {
      JavaNetURL_set_streamHandler_(self, handler);
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)protocol
          withNSString:(NSString *)host
               withInt:(int)port
          withNSString:(NSString *)file
withJavaNetURLStreamHandler:(JavaNetURLStreamHandler *)handler {
  return [self initJavaNetURLWithNSString:protocol withNSString:host withInt:port withNSString:file withJavaNetURLStreamHandler:handler];
}

- (void)fixURLWithBoolean:(BOOL)fixHost {
  int index;
  if (host_ != nil && [host_ length] > 0) {
    JavaNetURL_set_authority_(self, host_);
    if (port_ != -1) {
      JavaNetURL_set_authority_(self, [NSString stringWithFormat:@"%@:%d", authority_, port_]);
    }
  }
  if (fixHost) {
    if (host_ != nil && (index = [host_ lastIndexOf:'@']) > -1) {
      JavaNetURL_set_userInfo_(self, [host_ substring:0 endIndex:index]);
      JavaNetURL_set_host_(self, [host_ substring:index + 1]);
    }
    else {
      JavaNetURL_set_userInfo_(self, nil);
    }
  }
  if (file_ != nil && (index = [file_ indexOf:'?']) > -1) {
    JavaNetURL_set_query_(self, [file_ substring:index + 1]);
    JavaNetURL_set_path_(self, [file_ substring:0 endIndex:index]);
  }
  else {
    JavaNetURL_set_query_(self, nil);
    JavaNetURL_set_path_(self, file_);
  }
}

- (void)setWithNSString:(NSString *)protocol
           withNSString:(NSString *)host
                withInt:(int)port
           withNSString:(NSString *)file
           withNSString:(NSString *)ref {
  if (self->protocol_ == nil) {
    JavaNetURL_set_protocol_(self, protocol);
  }
  JavaNetURL_set_host_(self, host);
  JavaNetURL_set_file_(self, file);
  self->port_ = port;
  JavaNetURL_set_ref_(self, ref);
  hashCode__ = 0;
  [self fixURLWithBoolean:YES];
}

- (BOOL)isEqual:(id)o {
  if (o == nil) {
    return NO;
  }
  if (self == o) {
    return YES;
  }
  if ([self getClass] != [nil_chk(o) getClass]) {
    return NO;
  }
  return [((JavaNetURLStreamHandler *) nil_chk(streamHandler_)) equalsWithJavaNetURL:self withJavaNetURL:(JavaNetURL *) check_class_cast(o, [JavaNetURL class])];
}

- (BOOL)sameFileWithJavaNetURL:(JavaNetURL *)otherURL {
  return [((JavaNetURLStreamHandler *) nil_chk(streamHandler_)) sameFileWithJavaNetURL:self withJavaNetURL:otherURL];
}

- (NSUInteger)hash {
  if (hashCode__ == 0) {
    hashCode__ = [((JavaNetURLStreamHandler *) nil_chk(streamHandler_)) hashCodeWithJavaNetURL:self];
  }
  return hashCode__;
}

- (void)setupStreamHandler {
  JavaNetURL_set_streamHandler_(self, [((JavaUtilHashtable *) nil_chk(JavaNetURL_streamHandlers_)) getWithId:protocol_]);
  if (streamHandler_ != nil) {
    return;
  }
  if (JavaNetURL_streamHandlerFactory_ != nil) {
    JavaNetURL_set_streamHandler_(self, [JavaNetURL_streamHandlerFactory_ createURLStreamHandlerWithNSString:protocol_]);
    if (streamHandler_ != nil) {
      [JavaNetURL_streamHandlers_ putWithId:protocol_ withId:streamHandler_];
      return;
    }
  }
  if ([((NSString *) nil_chk(protocol_)) isEqual:@"file"]) {
    JavaNetURL_set_streamHandler_(self, [[[LibcoreNetUrlFileHandler alloc] init] autorelease]);
  }
  if (streamHandler_ != nil) {
    [JavaNetURL_streamHandlers_ putWithId:protocol_ withId:streamHandler_];
  }
}

- (JavaNetURI *)toURI {
  return [[[JavaNetURI alloc] initWithNSString:[self toExternalForm]] autorelease];
}

+ (IOSObjectArray *)__exceptions_toURI {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaNetURISyntaxException getClass] } count:1 type:[IOSClass getClass]];
}

- (JavaNetURI *)toURILenient {
  if (streamHandler_ == nil) {
    @throw [[[JavaLangIllegalStateException alloc] initWithNSString:protocol_] autorelease];
  }
  return [[[JavaNetURI alloc] initWithNSString:[((JavaNetURLStreamHandler *) nil_chk(streamHandler_)) toExternalFormWithJavaNetURL:self withBoolean:YES]] autorelease];
}

+ (IOSObjectArray *)__exceptions_toURILenient {
  return [IOSObjectArray arrayWithObjects:(id[]) { [JavaNetURISyntaxException getClass] } count:1 type:[IOSClass getClass]];
}

- (NSString *)description {
  return [self toExternalForm];
}

- (NSString *)toExternalForm {
  if (streamHandler_ == nil) {
    return [NSString stringWithFormat:@"unknown protocol(%@)://%@%@", protocol_, host_, file_];
  }
  return [((JavaNetURLStreamHandler *) nil_chk(streamHandler_)) toExternalFormWithJavaNetURL:self];
}

- (NSString *)getProtocol {
  return protocol_;
}

- (NSString *)getAuthority {
  return authority_;
}

- (NSString *)getUserInfo {
  return userInfo_;
}

- (NSString *)getHost {
  return host_;
}

- (int)getPort {
  return port_;
}

- (int)getDefaultPort {
  return [((JavaNetURLStreamHandler *) nil_chk(streamHandler_)) getDefaultPort];
}

- (NSString *)getFile {
  return file_;
}

- (NSString *)getPath {
  return path_;
}

- (NSString *)getQuery {
  return query_;
}

- (NSString *)getRef {
  return ref_;
}

- (void)setWithNSString:(NSString *)protocol
           withNSString:(NSString *)host
                withInt:(int)port
           withNSString:(NSString *)authority
           withNSString:(NSString *)userInfo
           withNSString:(NSString *)path
           withNSString:(NSString *)query
           withNSString:(NSString *)ref {
  NSString *file = path;
  if (query != nil && ![query isEmpty]) {
    file = [NSString stringWithFormat:@"%@%@", file, [NSString stringWithFormat:@"?%@", query]];
  }
  [self setWithNSString:protocol withNSString:host withInt:port withNSString:file withNSString:ref];
  JavaNetURL_set_authority_(self, authority);
  JavaNetURL_set_userInfo_(self, userInfo);
  JavaNetURL_set_path_(self, path);
  JavaNetURL_set_query_(self, query);
}

+ (void)initialize {
  if (self == [JavaNetURL class]) {
    JreOperatorRetainedAssign(&JavaNetURL_streamHandlers_, nil, [[[JavaUtilHashtable alloc] init] autorelease]);
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaNetURL_set_streamHandler_(self, nil);
  JavaNetURL_set_query_(self, nil);
  JavaNetURL_set_path_(self, nil);
  JavaNetURL_set_userInfo_(self, nil);
  JavaNetURL_set_ref_(self, nil);
  JavaNetURL_set_file_(self, nil);
  JavaNetURL_set_host_(self, nil);
  JavaNetURL_set_authority_(self, nil);
  JavaNetURL_set_protocol_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaNetURL *)other {
  [super copyAllFieldsTo:other];
  JavaNetURL_set_authority_(other, authority_);
  JavaNetURL_set_file_(other, file_);
  other->hashCode__ = hashCode__;
  JavaNetURL_set_host_(other, host_);
  JavaNetURL_set_path_(other, path_);
  other->port_ = port_;
  JavaNetURL_set_protocol_(other, protocol_);
  JavaNetURL_set_query_(other, query_);
  JavaNetURL_set_ref_(other, ref_);
  JavaNetURL_set_streamHandler_(other, streamHandler_);
  JavaNetURL_set_userInfo_(other, userInfo_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:protocol_ name:@"protocol"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:authority_ name:@"authority"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:host_ name:@"host"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:file_ name:@"file"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:ref_ name:@"ref"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:userInfo_ name:@"userInfo"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:path_ name:@"path"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:query_ name:@"query"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:streamHandler_ name:@"streamHandler"]];
  return result;
}

@end
