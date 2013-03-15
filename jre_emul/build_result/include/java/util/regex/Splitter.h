//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/android/libcore/luni/src/main/java/java/util/regex/Splitter.java
//
//  Created by retechretech on 13-3-15.
//

@class IOSObjectArray;
@class JavaUtilRegexPattern;
@protocol JavaUtilList;

#import "JreEmulation.h"

@interface JavaUtilRegexSplitter : NSObject {
}

+ (NSString *)METACHARACTERS;
- (id)init;
+ (IOSObjectArray *)fastSplitWithNSString:(NSString *)re
                             withNSString:(NSString *)input
                                  withInt:(int)limit;
+ (IOSObjectArray *)splitWithJavaUtilRegexPattern:(JavaUtilRegexPattern *)pattern
                                     withNSString:(NSString *)re
                                     withNSString:(NSString *)input
                                          withInt:(int)limit;
+ (IOSObjectArray *)finishSplitWithJavaUtilList:(id<JavaUtilList>)list
                                   withNSString:(NSString *)input
                                        withInt:(int)begin
                                        withInt:(int)maxSize
                                        withInt:(int)limit;
@end
