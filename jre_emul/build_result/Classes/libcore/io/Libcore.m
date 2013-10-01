//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "libcore/io/Libcore.h"
#include "libcore/io/Os.h"
#include "libcore/io/Posix.h"

@implementation LibcoreIoLibcore

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:LibcoreIoLibcore_os_ name:@"LibcoreIoLibcore_os_"]];
  return result;
}

static id<LibcoreIoOs> LibcoreIoLibcore_os_;

+ (id<LibcoreIoOs>)os {
  return LibcoreIoLibcore_os_;
}

+ (void)setOs:(id<LibcoreIoOs>)os {
  JreOperatorRetainedAssign(&LibcoreIoLibcore_os_, nil, os);
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (void)initialize {
  if (self == [LibcoreIoLibcore class]) {
    JreOperatorRetainedAssign(&LibcoreIoLibcore_os_, nil, [[[LibcoreIoPosix alloc] init] autorelease]);
  }
}

@end
