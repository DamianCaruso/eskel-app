source 'https://rubygems.org'

gem 'eskel', '0.0.1'

gem 'rack-contrib',    github: 'rack/rack-contrib'
gem 'rack-protection', '~> 1.5.3'
gem 'rack-request-id', '~> 0.0.3'
gem 'rack-rewrite',    '~> 1.5.0'

group :production do
  gem 'newrelic_rpm'
  gem 'puma'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
end

group :development, :test do
  gem 'minitest',          '~> 5.4.2'
  gem 'minitest-capybara', '~> 0.7.1'
end
