//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "java/lang/annotation/Documented.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Inherited.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"

@implementation JavaLangAnnotationInheritedImpl
- (IOSClass *)annotationType {
  return [IOSClass classWithProtocol:@protocol(JavaLangAnnotationInherited)];
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangAnnotationDocumentedImpl alloc] init] autorelease], [[[JavaLangAnnotationRetentionImpl alloc] initWithValue:[JavaLangAnnotationRetentionPolicyEnum RUNTIME]] autorelease], [[[JavaLangAnnotationTargetImpl alloc] initWithValue:[IOSObjectArray arrayWithObjects:(id[]) { [JavaLangAnnotationElementTypeEnum ANNOTATION_TYPE] } count:1 type:[NSObject getClass]]] autorelease] } count:3 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

@end

