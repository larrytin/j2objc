//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaUtilInputMismatchException_H_
#define _JavaUtilInputMismatchException_H_

#import "JreEmulation.h"
#include "java/io/Serializable.h"
#include "java/util/NoSuchElementException.h"

#define JavaUtilInputMismatchException_serialVersionUID 8811230760997066428

@interface JavaUtilInputMismatchException : JavaUtilNoSuchElementException < JavaIoSerializable > {
}

- (id)init;
- (id)initWithNSString:(NSString *)msg;
@end

#endif // _JavaUtilInputMismatchException_H_
