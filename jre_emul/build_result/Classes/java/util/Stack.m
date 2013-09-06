//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/Stack.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSObjectArray.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/util/EmptyStackException.h"
#include "java/util/Stack.h"
#include "java/util/Vector.h"

@implementation JavaUtilStack

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (BOOL)empty {
  return [self isEmpty];
}

- (id)peek {
  @synchronized(self) {
    {
      @try {
        return (id) [((IOSObjectArray *) nil_chk(elementData_)) objectAtIndex:elementCount_ - 1];
      }
      @catch (JavaLangIndexOutOfBoundsException *e) {
        @throw [[[JavaUtilEmptyStackException alloc] init] autorelease];
      }
    }
  }
}

- (id)pop {
  @synchronized(self) {
    {
      if (elementCount_ == 0) {
        @throw [[[JavaUtilEmptyStackException alloc] init] autorelease];
      }
      int index = --elementCount_;
      id obj = (id) [((IOSObjectArray *) nil_chk(elementData_)) objectAtIndex:index];
      [elementData_ replaceObjectAtIndex:index withObject:nil];
      modCount_++;
      return obj;
    }
  }
}

- (id)pushWithId:(id)object {
  [self addElementWithId:object];
  return object;
}

- (int)searchWithId:(id)o {
  @synchronized(self) {
    {
      IOSObjectArray *dumpArray = elementData_;
      int size = elementCount_;
      if (o != nil) {
        for (int i = size - 1; i >= 0; i--) {
          if ([o isEqual:[((IOSObjectArray *) nil_chk(dumpArray)) objectAtIndex:i]]) {
            return size - i;
          }
        }
      }
      else {
        for (int i = size - 1; i >= 0; i--) {
          if ([((IOSObjectArray *) nil_chk(dumpArray)) objectAtIndex:i] == nil) {
            return size - i;
          }
        }
      }
      return -1;
    }
  }
}

@end
