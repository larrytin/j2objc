//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/annotation/src/main/java/java/lang/annotation/ElementType.java
//
//  Created by retechretech on 13-4-26.
//

#import "JreEmulation.h"
#import "java/lang/Enum.h"

typedef enum {
  JavaLangAnnotationElementType_TYPE = 0,
  JavaLangAnnotationElementType_FIELD = 1,
  JavaLangAnnotationElementType_METHOD = 2,
  JavaLangAnnotationElementType_PARAMETER = 3,
  JavaLangAnnotationElementType_CONSTRUCTOR = 4,
  JavaLangAnnotationElementType_LOCAL_VARIABLE = 5,
  JavaLangAnnotationElementType_ANNOTATION_TYPE = 6,
  JavaLangAnnotationElementType_PACKAGE = 7,
} JavaLangAnnotationElementType;

@interface JavaLangAnnotationElementTypeEnum : JavaLangEnum < NSCopying > {
}
+ (JavaLangAnnotationElementTypeEnum *)TYPE;
+ (JavaLangAnnotationElementTypeEnum *)FIELD;
+ (JavaLangAnnotationElementTypeEnum *)METHOD;
+ (JavaLangAnnotationElementTypeEnum *)PARAMETER;
+ (JavaLangAnnotationElementTypeEnum *)CONSTRUCTOR;
+ (JavaLangAnnotationElementTypeEnum *)LOCAL_VARIABLE;
+ (JavaLangAnnotationElementTypeEnum *)ANNOTATION_TYPE;
+ (JavaLangAnnotationElementTypeEnum *)PACKAGE;
+ (IOSObjectArray *)values;
+ (JavaLangAnnotationElementTypeEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
- (id)initWithNSString:(NSString *)name withInt:(int)ordinal;
@end
