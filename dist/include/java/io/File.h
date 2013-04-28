//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/File.java
//
//  Created by retechretech on 13-4-26.
//

@class IOSByteArray;
@class IOSObjectArray;
@class JavaIoFile_TempFileLocker;
@protocol JavaIoFileFilter;
@protocol JavaIoFilenameFilter;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/lang/Comparable.h"

#define JavaIoFile_pathSeparatorChar ':'
#define JavaIoFile_separatorChar '/'
#define JavaIoFile_serialVersionUID 301077366599181567

@interface JavaIoFile : NSObject < JavaIoSerializable, JavaLangComparable > {
 @public
  NSString *path_;
  NSString *properPath__;
}

@property (nonatomic, copy) NSString *path;
@property (nonatomic, copy) NSString *properPath_;

+ (NSString *)EMPTY_STRING;
+ (unichar)separatorChar;
+ (NSString *)separator;
+ (unichar)pathSeparatorChar;
+ (NSString *)pathSeparator;
+ (int)counter;
+ (int *)counterRef;
+ (int)counterBase;
+ (int *)counterBaseRef;
+ (JavaIoFile_TempFileLocker *)tempFileLocker;
+ (void)setTempFileLocker:(JavaIoFile_TempFileLocker *)tempFileLocker;
+ (BOOL)caseSensitive;
+ (BOOL *)caseSensitiveRef;
- (id)initWithJavaIoFile:(JavaIoFile *)dir
            withNSString:(NSString *)name;
- (id)initWithNSString:(NSString *)path;
- (id)initWithNSString:(NSString *)dirPath
          withNSString:(NSString *)name;
- (NSString *)calculatePathWithNSString:(NSString *)dirPath
                           withNSString:(NSString *)name;
+ (BOOL)isCaseSensitiveImpl;
+ (IOSObjectArray *)listRoots;
- (NSString *)fixSlashesWithNSString:(NSString *)origPath;
- (BOOL)canRead;
- (BOOL)canWrite;
- (int)compareToWithId:(JavaIoFile *)another;
- (BOOL)delete__;
- (BOOL)deleteDirImplWithNSString:(NSString *)filePath;
- (BOOL)deleteFileImplWithNSString:(NSString *)filePath;
- (void)deleteOnExit;
- (BOOL)isEqual:(id)obj;
- (BOOL)exists;
- (BOOL)existsImplWithNSString:(NSString *)filePath;
- (NSString *)getAbsolutePath;
- (JavaIoFile *)getAbsoluteFile;
- (NSString *)getCanonicalPath;
- (IOSByteArray *)resolveWithJavaLangByteArray:(IOSByteArray *)newResult;
- (IOSByteArray *)resolveLinkWithJavaLangByteArray:(IOSByteArray *)pathBytes
                                           withInt:(int)length
                                          withBOOL:(BOOL)resolveAbsolute;
- (JavaIoFile *)getCanonicalFile;
- (NSString *)getName;
- (NSString *)getParent;
- (JavaIoFile *)getParentFile;
- (NSString *)getPath;
- (NSUInteger)hash;
- (BOOL)isAbsolute;
- (BOOL)isDirectory;
- (BOOL)isDirectoryImplWithNSString:(NSString *)filePath;
- (BOOL)isFile;
- (BOOL)isFileImplWithNSString:(NSString *)filePath;
- (BOOL)isHidden;
- (BOOL)isHiddenImplWithNSString:(NSString *)filePath;
- (BOOL)isReadableImplWithNSString:(NSString *)filePath;
- (BOOL)isWritableImplWithNSString:(NSString *)filePath;
- (NSString *)getLinkImplWithNSString:(NSString *)filePath;
- (long long int)lastModified;
- (long long int)lastModifiedImplWithNSString:(NSString *)filePath;
- (BOOL)setLastModifiedWithLongInt:(long long int)time;
- (BOOL)setAttributeWithNSString:(NSString *)path
                    withNSString:(NSString *)attributeKey
                          withId:(id)value;
- (BOOL)setLastModifiedImplWithNSString:(NSString *)path
                            withLongInt:(long long int)time;
- (BOOL)setReadOnly;
- (BOOL)setReadOnlyImplWithNSString:(NSString *)path;
- (long long int)length;
- (long long int)lengthImplWithNSString:(NSString *)filePath;
- (IOSObjectArray *)list;
- (IOSObjectArray *)listFiles;
- (IOSObjectArray *)listFilesWithJavaIoFilenameFilter:(id<JavaIoFilenameFilter>)filter;
- (IOSObjectArray *)listFilesWithJavaIoFileFilter:(id<JavaIoFileFilter>)filter;
- (IOSObjectArray *)listWithJavaIoFilenameFilter:(id<JavaIoFilenameFilter>)filter;
+ (IOSObjectArray *)listImplWithNSString:(NSString *)path;
- (BOOL)mkdir;
- (BOOL)mkdirImplWithNSString:(NSString *)filePath;
- (BOOL)mkdirs;
- (BOOL)createNewFile;
- (int)newFileImplWithNSString:(NSString *)filePath OBJC_METHOD_FAMILY_NONE;
+ (JavaIoFile *)createTempFileWithNSString:(NSString *)prefix
                              withNSString:(NSString *)suffix;
+ (JavaIoFile *)createTempFileWithNSString:(NSString *)prefix
                              withNSString:(NSString *)suffix
                            withJavaIoFile:(JavaIoFile *)directory;
+ (JavaIoFile *)genTempFileWithNSString:(NSString *)prefix
                           withNSString:(NSString *)suffix
                         withJavaIoFile:(JavaIoFile *)directory;
- (NSString *)properPathWithBOOL:(BOOL)internal;
- (BOOL)renameToWithJavaIoFile:(JavaIoFile *)dest;
- (BOOL)renameToImplWithNSString:(NSString *)pathExist
                    withNSString:(NSString *)pathNew;
- (NSString *)description;
- (NSString *)getAbsoluteName;
@end

@interface JavaIoFile_TempFileLocker : NSObject {
}

- (id)init;
@end
