//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/android/libcore/luni/src/main/java/java/text/ParseException.java
//
//  Created by retechretech on 13-3-16.
//

#import "JreEmulation.h"
#import "java/lang/Exception.h"

#define JavaTextParseException_serialVersionUID 2703218443322787634

@interface JavaTextParseException : JavaLangException {
 @public
  int errorOffset_;
}

@property (nonatomic, assign) int errorOffset;

- (id)initWithNSString:(NSString *)detailMessage
               withInt:(int)location;
- (int)getErrorOffset;
@end