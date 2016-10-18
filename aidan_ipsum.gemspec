# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aidan_ipsum/version'

Gem::Specification.new do |spec|
  spec.name          = "aidan_ipsum"
  spec.version       = AidanIpsum::VERSION
  spec.authors       = ["Tom Dracz"]
  spec.email         = ["tjdracz@gmail.com"]

  spec.summary       = "AidanIpsum generator"
  spec.description   = "Generate comedy gold"
  spec.homepage      = "https://github.com/tomdracz/aidan_ipsum"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
