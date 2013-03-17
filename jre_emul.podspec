Pod::Spec.new do |s|
  s.name         = "jre_emul"
  s.version      = "0.6.1"
  s.summary      = "J2ObjC's JRE emulation library, emulates a subset of the Java runtime library."
  s.homepage     = "https://code.google.com/p/j2objc/"
  s.author       = { "Larry Tin" => "dev@goodow.com" }
  s.source       = { :git => "https://github.com/goodow/j2objc.git", :tag => "v#{s.version}" }

  s.source_files = 'jre_emul/Classes/**/*.m', 'jre_emul/build_result/Classes/**/*.m'
# , 'junit/src/main/native/**/*.m', 'junit/build_result/junit/**/*.m'
  s.exclude_files = 'jre_emul/Classes/*Test.m'
  s.preserve_paths = 'jre_emul/build_result/include/**'

# s.public_header_files = FileList['jre_emul/Classes/java/lang/reflect/*.h'].exclude(/build_result/)
# s.header_mappings_dir = 'dist/include' 
# s.frameworks = 'SenTestingKit'

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/jre_emul/jre_emul/build_result/include"', 'GCC_WARN_MISSING_PARENTHESES' => 'NO' }
# USE_HEADERMAP = NO

end
