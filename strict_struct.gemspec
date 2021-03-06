# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'strict_struct/version'

Gem::Specification.new do |spec|
  spec.name          = "strict_struct"
  spec.version       = StrictStruct::VERSION
  spec.authors       = ["Mark IJbema"]
  spec.email         = ["markijbema@gmail.com"]
  spec.description   = %q{Extremely simple value objects}
  spec.summary       = %q{StrictStruct is an immutable, named parameters based, replacement for Struct}
  spec.homepage      = "https://github.com/markijbema/strict_struct"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", '3.0.0.beta2'
end
