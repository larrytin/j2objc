//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "java/lang/ref/ReferenceQueue.h"
#include "java/lang/ref/WeakReference.h"

@implementation JavaLangRefWeakReference

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithId:(id)r {
  return JreMemDebugAdd([super initWithId:r withJavaLangRefReferenceQueue:nil]);
}

- (id)initWithId:(id)r
withJavaLangRefReferenceQueue:(JavaLangRefReferenceQueue *)q {
  return JreMemDebugAdd([super initWithId:r withJavaLangRefReferenceQueue:q]);
}

@end
