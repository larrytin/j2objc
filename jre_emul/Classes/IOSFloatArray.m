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
//  IOSFloatArray.m
//  JreEmulation
//
//  Created by Tom Ball on 6/16/11.
//

#import "IOSFloatArray.h"
#import "IOSClass.h"

@implementation IOSFloatArray

- (id)initWithLength:(NSUInteger)length {
  if ((self = [super initWithLength:length])) {
    buffer_ = calloc(length, sizeof(float));
  }
  return self;
}

- (id)initWithFloats:(const float *)floats count:(NSUInteger)count {
  if ((self = [self initWithLength:count])) {
    if (floats != nil) {
      memcpy(buffer_, floats, count * sizeof(float));
    }
  }
  return self;
}

+ (id)arrayWithFloats:(const float *)floats count:(NSUInteger)count {
  id array = [[IOSFloatArray alloc] initWithFloats:floats count:count];
#if ! __has_feature(objc_arc)
  [array autorelease];
#endif
  return array;
}

float IOSFloatArray_Get(__unsafe_unretained IOSFloatArray *array, NSUInteger index) {
  IOSArray_checkIndex(array->size_, index);
  return array->buffer_[index];
}

float *IOSFloatArray_GetRef(__unsafe_unretained IOSFloatArray *array, NSUInteger index) {
  IOSArray_checkIndex(array->size_, index);
  return &array->buffer_[index];
}

- (float)floatAtIndex:(NSUInteger)index {
  IOSArray_checkIndex(size_, index);
  return buffer_[index];
}

- (float *)floatRefAtIndex:(NSUInteger)index {
  IOSArray_checkIndex(size_, index);
  return &buffer_[index];
}

- (float)replaceFloatAtIndex:(NSUInteger)index withFloat:(float)value {
  IOSArray_checkIndex(size_, index);
  buffer_[index] = value;
  return value;
}

- (void)getFloats:(float *)buffer length:(NSUInteger)length {
  IOSArray_checkIndex(size_, length - 1);
  memcpy(buffer, buffer_, length * sizeof(float));
}

- (void) arraycopy:(NSRange)sourceRange
       destination:(IOSArray *)destination
            offset:(NSInteger)offset {
  IOSArray_checkRange(size_, sourceRange);
  IOSArray_checkRange(destination->size_, NSMakeRange(offset, sourceRange.length));
  memmove(((IOSFloatArray *) destination)->buffer_ + offset,
          self->buffer_ + sourceRange.location,
          sourceRange.length * sizeof(float));
}

- (NSString *)descriptionOfElementAtIndex:(NSUInteger)index {
  return [NSString stringWithFormat:@"%g", buffer_[index]];
}

- (IOSClass *)elementType {
  return [IOSClass floatClass];
}

+ (IOSClass *)iosClass {
  return [IOSClass arrayClassWithComponentType:[IOSClass floatClass]];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[IOSFloatArray allocWithZone:zone]
          initWithFloats:buffer_ count:size_];
}

- (void)dealloc {
  free(buffer_);
#if ! __has_feature(objc_arc)
  [super dealloc];
#endif
}

@end
