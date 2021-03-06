Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = "DNLazyTapButton"
s.summary = "DNLazyTapButton prevent monkey tapping."
s.requires_arc = true

# 2
s.version = "0.0.1"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Duy Nguyen" => "nbduy021092@gmail.com" }

# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/duynb92/DNLazyTapButton"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/duynb92/DNLazyTapButton.git", :tag => "#{s.version}"}

# 7
s.framework = "UIKit"

# 8
s.source_files = "DNLazyTapButton/**/*.{swift}"

# 9
# s.resources = "DNLazyTapButton/**/*.{png,jpeg,jpg,storyboard,xib}"

# 10
s.ios.deployment_target = "9.0"

end