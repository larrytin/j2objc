// Copyright 2011 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//
//  IOSBooleanArray.m
//  JreEmulation
//
//  Created by Tom Ball on 6/16/11.
//

#import "IOSBooleanArray.h"
#import "IOSClass.h"

@implementation IOSBooleanArray

- (id)initWithLength:(NSUInteger)length {
  if ((self = [super initWithLength:length])) {
    buffer_ = calloc(length, sizeof(BOOL));
  }
  return self;
}

- (id)initWithBooleans:(const BOOL *)booleans count:(NSUInteger)count {
  if ((self = [self initWithLength:count])) {
    if (booleans != nil) {
      memcpy(buffer_, booleans, count * sizeof(BOOL));
    }
  }
  return self;
}

+ (id)arrayWithBooleans:(const BOOL *)booleans count:(NSUInteger)count {
  id array = [[IOSBooleanArray alloc] initWithBooleans:booleans count:count];
#if __has_feature(objc_arc)
  return array;
#else
  return [array autorelease];
#endif
}

BOOL IOSBooleanArray_Get(__unsafe_unretained IOSBooleanArray *array, NSUInteger index) {
  IOSArray_checkIndex(array->size_, index);
  return array->buffer_[index];
}

BOOL *IOSBooleanArray_GetRef(__unsafe_unretained IOSBooleanArray *array, NSUInteger index) {
  IOSArray_checkIndex(array->size_, index);
  return &array->buffer_[index];
}

- (BOOL)booleanAtIndex:(NSUInteger)index {
  IOSArray_checkIndex(size_, index);
  return buffer_[index];
}

- (BOOL *)booleanRefAtIndex:(NSUInteger)index {
  IOSArray_checkIndex(size_, index);
  return &buffer_[index];
}

- (BOOL)replaceBooleanAtIndex:(NSUInteger)index withBoolean:(BOOL)boolean {
  IOSArray_checkIndex(size_, index);
  buffer_[index] = boolean;
  return boolean;
}

- (void)getBooleans:(BOOL *)buffer length:(NSUInteger)length {
  IOSArray_checkIndex(size_, length - 1);
  memcpy(buffer, buffer_, length * sizeof(BOOL));
}

- (void) arraycopy:(NSRange)sourceRange
       destination:(IOSArray *)destination
            offset:(NSInteger)offset {
  IOSArray_checkRange(size_, sourceRange);
  IOSArray_checkRange(destination->size_, NSMakeRange(offset, sourceRange.length));
  memmove(((IOSBooleanArray *) destination)->buffer_ + offset,
          self->buffer_ + sourceRange.location,
          sourceRange.length * sizeof(BOOL));
}

- (NSString *)descriptionOfElementAtIndex:(NSUInteger)index {
  return [NSString stringWithFormat:@"%@", (buffer_[index] ? @"YES" : @"NO")];
}

- (IOSClass *)elementType {
  return [IOSClass booleanClass];
}

+ (IOSClass *)iosClass {
  return [IOSClass arrayClassWithComponentType:[IOSClass booleanClass]];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[IOSBooleanArray allocWithZone:zone]
          initWithBooleans:buffer_ count:size_];
}

- (void)dealloc {
  free(buffer_);
#if ! __has_feature(objc_arc)
  [super dealloc];
#endif
}

@end
