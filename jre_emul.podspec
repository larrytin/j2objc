Pod::Spec.new do |s|
  s.name         = "jre_emul"
  s.version      = "0.0.1"
  s.source       = { :git => "https://github.com/goodow/j2objc.git", :tag => "v#{s.version}" }

  s.source_files = 'dist/include/**/*.h', 'jre_emul/Classes/**/*.m', 'jre_emul/build_result/Classes/**/*.m', 'junit/src/main/native/**/*.m', 'junit/build_result/junit/**/*.m'
# s.public_header_files = 'dist/include', 'dist/include/**/*.h'
  s.header_mappings_dir = 'dist/include'

end
