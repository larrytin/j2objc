Pod::Spec.new do |s|
  s.name         = "jre_emul"
  s.version      = "0.7.1"
  s.summary      = "J2ObjC's JRE emulation library, emulates a subset of the Java runtime library."
  s.homepage     = "https://code.google.com/p/j2objc/"
  s.author       = "Google Inc."
  s.source       = { :git => "https://github.com/goodow/j2objc.git", :tag => "v#{s.version}" }

  s.source_files = FileList['jre_emul/Classes/**/*.m','jre_emul/Classes/**/*.mm', \
    'jre_emul/build_result/Classes/**/*.m'].exclude(/.*Test\.[hm]$/)
  s.preserve_paths = FileList['dist/include/**/*.h', 'jre_emul/icu4c/i18n/include/**', \
    'jre_emul/icu4c/common/**'].exclude(/dist\/include\/junit\/.*/)

# s.public_header_files = FileList['jre_emul/Classes/java/lang/reflect/*.h'].exclude(/build_result/)
# s.header_mappings_dir = 'dist/include' 
# s.frameworks = 'SenTestingKit'

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/jre_emul/dist/include" "${PODS_ROOT}/jre_emul/jre_emul/icu4c/i18n/include" "${PODS_ROOT}/jre_emul/jre_emul/icu4c/common"', \
    'OTHER_LDFLAGS' => '-licucore -lstdc++', 'GCC_WARN_MISSING_PARENTHESES' => 'NO' }
# USE_HEADERMAP = NO

end
