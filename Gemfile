source "https://rubygems.org"

gem "fastlane"
gem "unicode_utils" # emoji names
gem "mini_magick" # dynamically create a new app icon
gem "rake" # it's cool

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval(File.read(plugins_path), binding) if File.exist?(plugins_path)
