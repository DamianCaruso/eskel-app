source 'https://rubygems.org'
ruby '2.1.5'

gem 'eskel', github: 'DamianCaruso/eskel'
gem 'slim'

gem 'rack-protection'
gem 'rack-request-id'
gem 'rack-rewrite'
gem 'rack-zippy'

gem 'rake-pipeline',             github: 'livingsocial/rake-pipeline'
gem 'rake-pipeline-web-filters', github: 'wycats/rake-pipeline-web-filters'

gem 'coffee-script'
gem 'compass'
gem 'yui-compressor'

group :production do
  gem 'newrelic_rpm'
  gem 'puma'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
  gem 'guard'
  gem 'shotgun'
end

group :development, :test do
  gem 'minitest',          '~> 5.4.2'
  gem 'minitest-capybara', '~> 0.7.1'
end
