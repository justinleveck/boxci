# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shanty/version'

Gem::Specification.new do |spec|
  spec.name          = "shanty"
  spec.version       = Shanty::VERSION
  spec.authors       = ["Andrew De Ponte"]
  spec.email         = ["cyphactor@gmail.com"]
  spec.summary       = %q{Tool simplifying Vagrant based development & continuous integration environments.}
  spec.description   = %q{Shanty is focused on defining standards and building tooling around using Vagrant for development & continuous integration environments to make using them as easy as possible.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end