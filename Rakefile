# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
$:.unshift("~/.rubymotion/rubymotion-templates")

require 'motion/project/template/osx'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'motionmd'
  app.deployment_target = '10.14'
  app.info_plist['CFBundleIconName'] = 'AppIcon'
  # HERE COMES THE IMPORTANT CMARK STUFF
  app.vendor_project("vendor/cmark", :static)
end
