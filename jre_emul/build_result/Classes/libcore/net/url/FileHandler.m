//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/net/url/FileHandler.java
//
//  Created by retechretech on 13-9-25.
//

#include "java/net/URL.h"
#include "libcore/net/url/FileHandler.h"

@implementation LibcoreNetUrlFileHandler

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (void)parseURLWithJavaNetURL:(JavaNetURL *)url
                  withNSString:(NSString *)spec
                       withInt:(int)start
                       withInt:(int)end {
  if (end < start) {
    return;
  }
  NSString *parseString = @"";
  if (start < end) {
    parseString = [((NSString *) nil_chk([((NSString *) nil_chk(spec)) substring:start endIndex:end])) replace:'\\' withChar:'/'];
  }
  [super parseURLWithJavaNetURL:url withNSString:parseString withInt:0 withInt:[((NSString *) nil_chk(parseString)) length]];
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

@end
