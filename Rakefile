require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rake/file_list'

Rake::TestTask.new(:test) do |test|
  test.libs      << 'lib' << 'test'
  t.test_files   = FileList['test/test_*.rb']
  test.verbose   = true
end

task :default => :test
