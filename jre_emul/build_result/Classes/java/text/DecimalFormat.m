//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/text/DecimalFormat.java
//
//  Created by retechretech on 13-9-4.
//

#include "java/text/DecimalFormat.h"

@implementation JavaTextDecimalFormat

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (NSString *)formatWithDouble:(double)number   {
    return [NSNumberFormatter
    localizedStringFromNumber:[NSNumber numberWithDouble:number]
    numberStyle:NSNumberFormatterDecimalStyle];
  }

@end
