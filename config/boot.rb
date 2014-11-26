ESKEL_ROOT = File.expand_path('..', File.dirname(__FILE__)) unless defined?(ESKEL_ROOT)
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
require 'bundler/setup' if File.exist?(ENV['BUNDLE_GEMFILE'])

require 'eskel'
require 'eskel/assets'