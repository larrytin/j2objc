//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/io/FileDescriptor.java
//
//  Created by retechretech on 13-3-15.
//

#import "JreEmulation.h"

@interface JavaIoFileDescriptor : NSObject {
 @public
  long long int descriptor_;
  BOOL readOnly_;
}

@property (nonatomic, assign) long long int descriptor;
@property (nonatomic, assign) BOOL readOnly;

+ (JavaIoFileDescriptor *)in;
+ (JavaIoFileDescriptor *)out;
+ (JavaIoFileDescriptor *)err;
+ (long long int)getStdInDescriptor;
+ (long long int)getStdOutDescriptor;
+ (long long int)getStdErrDescriptor;
- (id)init;
- (void)sync;
- (void)syncImpl;
- (BOOL)valid;
@end