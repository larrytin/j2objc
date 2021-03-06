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
//  IOSByteArray.m
//  JreEmulation
//
//  Created by Tom Ball on 6/16/11.
//

#import "IOSByteArray.h"
#import "IOSClass.h"

@implementation IOSByteArray

- (id)initWithLength:(NSUInteger)length {
  if ((self = [super initWithLength:length])) {
    buffer_ = calloc(length, sizeof(char));
  }
  return self;
}

- (id)initWithBytes:(const char *)bytes count:(NSUInteger)count {
  if ((self = [self initWithLength:count])) {
    if (bytes != nil) {
      memcpy(buffer_, bytes, count * sizeof(char));
    }
  }
  return self;
}

+ (id)arrayWithBytes:(const char *)bytes count:(NSUInteger)count {
  id array = [[IOSByteArray alloc] initWithBytes:bytes count:count];
#if __has_feature(objc_arc)
  return array;
#else
  return [array autorelease];
#endif
}

char IOSByteArray_Get(__unsafe_unretained IOSByteArray *array, NSUInteger index) {
  IOSArray_checkIndex(array->size_, index);
  return array->buffer_[index];
}

char *IOSByteArray_GetRef(__unsafe_unretained IOSByteArray *array, NSUInteger index) {
  IOSArray_checkIndex(array->size_, index);
  return &array->buffer_[index];
}

- (char)byteAtIndex:(NSUInteger)index {
  IOSArray_checkIndex(size_, index);
  return buffer_[index];
}

- (char *)byteRefAtIndex:(NSUInteger)index {
  IOSArray_checkIndex(size_, index);
  return &buffer_[index];
}

- (char)replaceByteAtIndex:(NSUInteger)index withByte:(char)byte {
  IOSArray_checkIndex(size_, index);
  buffer_[index] = byte;
  return byte;
}

- (void)getBytes:(char *)buffer
          offset:(NSUInteger)offset
          length:(NSUInteger)length {
  IOSArray_checkRange(size_, NSMakeRange(offset, length));
  memcpy(buffer, &buffer_[offset], length);
}

- (void)replaceBytes:(const char *)source
              length:(NSUInteger)length
              offset:(NSUInteger)destOffset {
  IOSArray_checkRange(size_, NSMakeRange(destOffset, length));
  memcpy(&buffer_[destOffset], source, length);
}

- (void) arraycopy:(NSRange)sourceRange
       destination:(IOSArray *)destination
            offset:(NSInteger)offset {
  IOSArray_checkRange(size_, sourceRange);
  IOSArray_checkRange(destination->size_, NSMakeRange(offset, sourceRange.length));
  memmove(((IOSByteArray *) destination)->buffer_ + offset,
          self->buffer_ + sourceRange.location,
          sourceRange.length * sizeof(char));
}

- (NSString *)descriptionOfElementAtIndex:(NSUInteger)index {
  return [NSString stringWithFormat:@"0x%x", buffer_[index]];
}

- (IOSClass *)elementType {
  return [IOSClass byteClass];
}

+ (IOSClass *)iosClass {
  return [IOSClass arrayClassWithComponentType:[IOSClass byteClass]];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[IOSByteArray allocWithZone:zone]
          initWithBytes:buffer_ count:size_];
}

- (NSData *)toNSData {
  return [NSData dataWithBytes:buffer_ length:size_];
}

- (void)dealloc {
  free(buffer_);
#if ! __has_feature(objc_arc)
  [super dealloc];
#endif
}

@end
