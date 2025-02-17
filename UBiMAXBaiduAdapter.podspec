
Pod::Spec.new do |s|
  s.name             = 'UBiMAXBaiduAdapter'
  s.version          = '5.371.3'
  s.summary          = 'UBiX聚合Sass SDK Now Adapter'
  s.homepage         = 'https://www.ubixai.com/product/md'
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhugq' => 'guoqiang.zhu@ubixai.com' }
  s.source           = { :git => 'https://github.com/ubixai/UBiMAXBaiduAdapter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'

  s.static_framework = true
  s.vendored_frameworks = 'UBiMAXBaiduAdapter.framework'
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'OTHER_LINK_FLAG' => '$(inherited) -ObjC' }

 s.dependency 'BaiduMobAdSDK', '5.371'
 s.dependency 'UBiMAXAdSDK'
 s.dependency 'UBiMAXSplash'

end
