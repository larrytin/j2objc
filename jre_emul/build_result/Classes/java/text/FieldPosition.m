//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "java/text/FieldPosition.h"
#include "java/text/Format.h"

@implementation JavaTextFieldPosition

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithInt:(int)field {
  if (self = [super init]) {
    myField_ = field;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaTextFormat_Field:(JavaTextFormat_Field *)attribute {
  if (self = [super init]) {
    JavaTextFieldPosition_set_myAttribute_(self, attribute);
    myField_ = -1;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaTextFormat_Field:(JavaTextFormat_Field *)attribute
                           withInt:(int)field {
  if (self = [super init]) {
    JavaTextFieldPosition_set_myAttribute_(self, attribute);
    myField_ = field;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)clear {
  beginIndex_ = endIndex_ = 0;
}

- (BOOL)isEqual:(id)object {
  if (!([object isKindOfClass:[JavaTextFieldPosition class]])) {
    return NO;
  }
  JavaTextFieldPosition *pos = (JavaTextFieldPosition *) check_class_cast(object, [JavaTextFieldPosition class]);
  return myField_ == ((JavaTextFieldPosition *) nil_chk(pos))->myField_ && myAttribute_ == pos->myAttribute_ && beginIndex_ == pos->beginIndex_ && endIndex_ == pos->endIndex_;
}

- (int)getBeginIndex {
  return beginIndex_;
}

- (int)getEndIndex {
  return endIndex_;
}

- (int)getField {
  return myField_;
}

- (JavaTextFormat_Field *)getFieldAttribute {
  return myAttribute_;
}

- (NSUInteger)hash {
  int attributeHash = (myAttribute_ == nil) ? 0 : [myAttribute_ hash];
  return attributeHash + myField_ * 10 + beginIndex_ * 100 + endIndex_;
}

- (void)setBeginIndexWithInt:(int)index {
  beginIndex_ = index;
}

- (void)setEndIndexWithInt:(int)index {
  endIndex_ = index;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"%@[attribute=%@, field=%d, beginIndex=%d, endIndex=%d]", [[self getClass] getName], myAttribute_, myField_, beginIndex_, endIndex_];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaTextFieldPosition_set_myAttribute_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaTextFieldPosition *)other {
  [super copyAllFieldsTo:other];
  other->beginIndex_ = beginIndex_;
  other->endIndex_ = endIndex_;
  JavaTextFieldPosition_set_myAttribute_(other, myAttribute_);
  other->myField_ = myField_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:myAttribute_ name:@"myAttribute"]];
  return result;
}

@end
