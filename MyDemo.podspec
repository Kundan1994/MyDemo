Pod::Spec.new do |s|
  s.name             = 'MyDemo'
  s.version          = '1.0'
  s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'
 
  s.description      = <<-DESC
This fantastic view changes its color gradually makes your app look fantastic!
                       DESC
 
  s.homepage         = 'https://github.com/Kundan1994/MyDemo'
  s.license          = { :type => 'MIT', :text => <<-LICENSE
                   Copyright 2019
                   Permission is granted to...
                 LICENSE
               }
  s.author           = { 'Kundan Suryavanshi' => 'kundansuryavanshi43@gmail.com' }
  s.source           = { :git => 'https://github.com/Kundan1994/MyDemo.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'My Demo/FantasticView.swift'
  s.swift_version = "5.0"
 
end