Pod::Spec.new do |s|
  s.name         = "jre_emul"
  s.version      = "0.0.1"
  s.source       = { :git => "https://github.com/goodow/j2objc.git", :tag => "v#{s.version}" }

  s.source_files = 'jre_emul/Classes', 'jre_emul/Classes/**/*.{h,m}', 'jre_emul/build_result/Classes/**/*.{h,m}'
  s.public_header_files = 'jre_emul/build_result/include/**/*.h'
  s.header_mappings_dir = 'jre_emul/build_result/include'

end
