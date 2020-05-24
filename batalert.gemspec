require './lib/batalert/version'
require 'rake/file_list'

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
  spec.files         = Rake::FileList['**/*'].exclude(*File.read('.gitignore').split)
  spec.executables   = Dir.glob("bin/*").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

end
