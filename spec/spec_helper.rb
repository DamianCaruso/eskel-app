ENV['RACK_ENV'] = 'test'
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
$: << File.expand_path('../lib', File.dirname(__FILE__))

class UnitTest < Minitest::Spec
  register_spec_type(self) do |desc, *addl|
    addl.include? :unit
  end
end