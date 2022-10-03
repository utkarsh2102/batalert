# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'batalert/version'

Gem::Specification.new do |spec|
  spec.name          = 'batalert'
  spec.version       = Batalert::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Utkarsh Gupta']
  spec.email         = ['utkarsh@debian.org']
  spec.license       = 'MIT'
  spec.summary       = 'Battery notifications/alerts for your favorite WM! 💯'
  spec.homepage      = 'https://github.com/utkarsh2102/batalert'
  spec.files         = Dir['config/*', 'exe/*', 'lib/**/*', 'LICENSE', 'README.md']
  spec.executables   = Dir.glob('exe/*').map { |f| File.basename(f) }
  spec.bindir        = 'exe'
  spec.require_paths = ['lib']
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6.0')

  spec.add_dependency               'espeak-ruby', '~> 1.1.0'
  spec.add_dependency               'libnotify'
  spec.add_dependency               'volumerb'
  spec.add_development_dependency   'minitest'
  spec.add_development_dependency   'rake'
  spec.add_development_dependency   'rubocop'
  spec.add_development_dependency   'rubocop-packaging'
  spec.add_development_dependency   'whenever'
end
