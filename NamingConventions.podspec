


Pod::Spec.new do |s|
  s.name             = 'NamingConventions'
  s.version          = '0.1.06'
  s.summary          = 'This provides a solution to parse and convert name/ids from different conventions.'
  s.swift_version    = '4.0'

  s.description      = <<-DESC
This project defines a way to determine the naming convention has been used for a given string, and convert name/IDs with a specific naming-convention, to its equivalent name/ID in other naming-convention.
                       DESC
  s.homepage         =  'https://github.com/Acidmanic/SwiftNamingConventions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Acidmanic' => 'acidmanic.moayedi@gmail.com' }
  s.source           = { :git => 'https://github.com/Acidmanic/SwiftNamingConventions.git', :tag => s.version }
  s.social_media_url = 'https://about.me/moayedi'

  s.ios.deployment_target = '9.3'

  s.source_files = 'NamingConventions/Classes/**/*'

end
