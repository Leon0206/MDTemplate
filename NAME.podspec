#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  def self.smart_version
    tag = `git describe --abbrev=0 --tags 2>/dev/null`.strip
    if $?.success? then tag else "0.0.1" end
  end
  s.name             = '${POD_NAME}'
  s.version          = smart_version
  s.summary          = <<-DESC
TODO: Add long description of the pod here.
                       DESC

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
XiaoYing pod  - ${POD_NAME}
                       DESC
  s.homepage         = 'git@github.com:Leon0206${POD_NAME}'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'leon0206' => '634376133@qq.com' }
  s.source           = { :git => 'git@github.com:Leon0206/${POD_NAME}.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '9.0'

 
  s.preserve_paths = "#{s.name}/Classes/**/*","Framework/**/*", "#{s.name}/Assets/**/*",

  $use_binary = nil

  $use_binary = ENV['use_binary']
  $pod_use_binary = ENV["#{s.name}_use_binary"]

  if $pod_use_binary =='1'
    $use_binary = true
  elsif $pod_use_binary =='0'
    $use_binary = false
  else
    if $use_binary == '1'
      $use_binary = true
    end
  end

  tag = `git describe --abbrev=0 --tags 2>/dev/null`.strip
  if tag && !tag.empty?
    $use_binary =false
  end

  if $use_binary ==true
    s.vendored_frameworks = "Framework/**/*.framework"
  else
    s.source_files = "#{s.name}/Classes/**/*"
  end


end
