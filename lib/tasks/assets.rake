namespace :assets do
  task :precompile => :clean do
    env = ENV['RACK_ENV'] ||= ENV['RAILS_ENV'] || 'development'
    system "RACK_ENV=#{env} bundle exec rakep build"
  end

  task :clean do
    env = ENV['RACK_ENV'] ||= ENV['RAILS_ENV'] || 'development'
    system "RACK_ENV=#{env} bundle exec rakep clean"
  end
end