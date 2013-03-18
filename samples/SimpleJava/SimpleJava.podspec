Pod::Spec.new do |s|
  s.name         = "SimpleJava"
  s.version      = "0.0.1"
  s.author       = { "Larry Tin" => "dev@goodow.com" }
  s.source       = { :git => "https://github.com/goodow/j2objc.git", :tag => "v#{s.version}" }

  s.source_files = 'target/generated_sources/**/*.{h,m}'
  s.header_mappings_dir = 'target/generated_sources' 

  s.dependency 'jre_emul', '~> 0.6.1'
end
