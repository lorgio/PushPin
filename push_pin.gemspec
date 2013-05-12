# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'push_pin/version'

Gem::Specification.new do |spec|
  spec.name          = "push_pin"
  spec.version       = PushPin::VERSION
  spec.authors       = ["Lorgio A Jimenez"]
  spec.email         = ["lorgio.jimenez@gmail.com"]
  spec.description   = %q{Screen Scraper for Pintrest boards}
  spec.summary       = %q{yea....}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "mechanize"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
