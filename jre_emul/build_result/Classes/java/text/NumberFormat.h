//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/text/NumberFormat.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaTextNumberFormat_H_
#define _JavaTextNumberFormat_H_

#import "JreEmulation.h"
#include "java/text/Format.h"

@interface JavaTextNumberFormat : JavaTextFormat {
}

+ (JavaTextNumberFormat *)instance;
+ (void)setInstance:(JavaTextNumberFormat *)instance;
- (id)init;
+ (JavaTextNumberFormat *)getInstance;
+ (JavaTextNumberFormat *)getNumberInstance;
- (NSString *)formatWithDouble:(double)number;
@end

#endif // _JavaTextNumberFormat_H_
