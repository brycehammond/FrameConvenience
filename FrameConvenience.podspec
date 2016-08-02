Pod::Spec.new do |s|
  s.name = 'FrameConvenience'
  s.version = '0.1'
  s.license = 'MIT'
  s.summary = 'Simplified frame methods for UIView'
  s.homepage = 'https://github.com/Flyreel/FrameConvenience'
  s.authors = { 'Bryce Hammond' => 'bryce@flyreel.co' }
  s.source = { :git => 'https://github.com/Flyreel/FrameConvenience.git', :tag => '0.1' }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Source/*.swift'

  s.requires_arc = true
end