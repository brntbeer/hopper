require 'rubygems'
require 'rake'
require 'yaml'

$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__) + '/app')

require 'boot'

task :default => :test

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -rubygems -r ./app/boot"
end

desc "Sets up your install with some demo data"
task :setup do
  puts "Clearing your redis database"
  Rake::Task['redis:reset'].invoke

  puts "Generating some test data"
  project = Hopper::Project.new('github.com/holman/boom')
  project.save
end

namespace :redis do
  desc "Wipe all data in redis"
  task :reset do
    $redis.flushdb
  end
end