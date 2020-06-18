# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rake/file_list'
require 'rubocop/rake_task'

RuboCop::RakeTask.new

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.test_files  = FileList['test/test_*.rb']
  test.verbose     = true
end

task default: %i[
  test
  rubocop
]
