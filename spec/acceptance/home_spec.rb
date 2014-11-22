require_relative '../spec_acceptance_helper'

describe 'when I visit the home page', :feature do
  it 'should respond successfully' do
    visit '/'
    page.status_code.must_equal 200
    page.must_have_content /Welcome/
  end
end