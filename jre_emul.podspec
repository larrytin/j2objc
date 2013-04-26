Pod::Spec.new do |s|
  s.name         = "jre_emul"
  s.version      = "0.7.2"
  s.license      = {
    :type => 'Apache 2.0',
    :text => <<-LICENSE
                Copyright (c) 2011 Google Inc.
 
                Licensed under the Apache License, Version 2.0 (the "License");
                you may not use this file except in compliance with the License.
                You may obtain a copy of the License at
 
                    http://www.apache.org/licenses/LICENSE-2.0
 
                Unless required by applicable law or agreed to in writing, software
                distributed under the License is distributed on an "AS IS" BASIS,
                WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
                See the License for the specific language governing permissions and
                limitations under the License.
    LICENSE
  }
  s.summary      = "J2ObjC's JRE emulation library, emulates a subset of the Java runtime library."
  s.homepage     = "https://code.google.com/p/j2objc/"
  s.author       = "Google Inc."
  s.source       = { :git => "https://github.com/goodow/j2objc.git", :tag => "v#{s.version}" }

  s.source_files = 'jre_emul/Classes/**/*.m', 'jre_emul/Classes/**/*.mm', 'jre_emul/build_result/Classes/**/*.m'
  s.preserve_paths = 'dist/include/**/*.h', 'jre_emul/icu4c/i18n/include/**', 'jre_emul/icu4c/common/**'
  s.exclude_files = 'jre_emul/Classes/*Test.{h,m}', 'dist/include/junit/**'

  s.xcconfig = { 'GCC_WARN_MISSING_PARENTHESES' => 'NO', 'HEADER_SEARCH_PATHS' => \
    '"${PODS_ROOT}/jre_emul/dist/include" "${PODS_ROOT}/jre_emul/jre_emul/icu4c/i18n/include" "${PODS_ROOT}/jre_emul/jre_emul/icu4c/common"', \
    'OTHER_LDFLAGS' => '-licucore -lstdc++', 'OTHER_CFLAGS' => '-DU_DISABLE_RENAMING=1' }
# USE_HEADERMAP = NO

end
