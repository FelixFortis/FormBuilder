$:.unshift(File.dirname(__FILE__) + '/../../lib')
require 'rspec/core/rake_task'
require 'cucumber/rake/task'

desc 'Run RSpec'
RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = %w{--format documentation}
end

desc 'Run Cucumber'
Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = %w{--format pretty}
end

task :default => [:cucumber, :spec]