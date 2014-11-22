require_relative 'spec_helper'
require_relative '../config/boot'
require 'minitest/capybara'

Capybara.app = Cuba  

class AcceptanceTest < UnitTest
  include Capybara::DSL
  include Capybara::Assertions

  register_spec_type(self) do |desc, *addl|
    addl.include? :feature
  end

  def session
    Capybara.current_session.driver.request.env['rack.session']
  end

  def teardown
    Capybara.reset_session!
    Capybara.use_default_driver
  end
end