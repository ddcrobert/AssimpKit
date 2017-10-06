Pod::Spec.new do |s|
  s.name     = 'AssimpKit'
  s.version  = '1.2.0'
  s.license = { :type => 'BSD', :file => 'LICENSE.md' }
  s.summary  = 'A library that converts the files supported by Assimp to Scene Kit scenes.'
  s.homepage = 'https://github.com/dmsurti'
  s.author   = { 'Deepak Surti' => 'https://github.com/dmsurti' }
  s.platform = :ios
  s.source = { :git => 'https://github.com/ddcrobert/AssimpKit.git', :tag => 'v' + s.version.to_s }
  #s.preserve_paths = 'ArcGIS.framework/*'
  #s.resources = 'ArcGIS.framework/Versions/Current/Resources/ArcGIS.bundle'
  #s.library   = 'z', 'c++'
  #s.framework = 'CoreGraphics', 'CoreLocation',  'CoreText', 'Foundation', 'QuartzCore', 'OpenGLES', 'Security', 'UIKit'

  s.ios.deployment_target = '8.0'

  s.public_header_files = 'AssimpKit/AssimpKit/Assimp/include/**/*.{h}'
  s.vendored_libraries = 'AssimpKit/AssimpKit/Assimp/lib/ios/*.a'
  s.requires_arc = true

  s.prepare_command = <<-CMD
                        unzip AssimpKit/AssimpKit/Assimp/lib/ios/libIrrXML-fat.a.zip
                        unzip AssimpKit/AssimpKit/Assimp/lib/ios/libassimp-fat.a.zip
                   CMD
end
