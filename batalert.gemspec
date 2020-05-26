require 'batalert/version'

Gem::Specification.new do |spec|
  spec.name          = "batalert"
  spec.version       = Batalert::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Utkarsh Gupta"]
  spec.email         = ["utkarsh@debian.org"]
  spec.license       = "MIT"
  spec.summary       = %q{Battery notifications/alerts}
  spec.description   = %q{Battery notifications/alerts so your battery never dies! 💯}
  spec.homepage      = "https://github.com/utkarsh2102/batalert"
  spec.files         = Dir["exe/*", "lib/**/*", "LICENSE"]
  spec.executables   = Dir.glob("exe/*").map{ |f| File.basename(f) }
  spec.bindir        = "exe"
  spec.require_paths = ["lib"]
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.add_dependency               'espeak-ruby'
  spec.add_dependency               'libnotify'
  spec.add_dependency               'whenever'
  spec.add_development_dependency   'minitest'
end
