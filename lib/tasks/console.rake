desc 'start console'
task :console => :environment do
  require 'irb'
  ARGV.clear
  IRB.start
end