require 'cucumber/rake/task'
require 'rspec/core/rake_task'
require 'bundler/gem_tasks'
require 'yard'

task :default => :test

Cucumber::Rake::Task.new(:cucumber)

RSpec::Core::RakeTask.new(:spec)

YARD::Rake::YardocTask.new(:doc)

task :test => [:spec]

desc 'Run tests, both RSpec and Cucumber'
task :full_test => [:spec, :cucumber]
