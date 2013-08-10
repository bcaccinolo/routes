# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'routes/version'

Gem::Specification.new do |spec|
  spec.name          = "routes"
  spec.version       = Routes::VERSION
  spec.authors       = ["Benoit Caccinolo"]
  spec.email         = ["benoit.caccinolo@gmail.com"]
  spec.summary = "Routes: rake routes 10x faster with search feature"
  spec.description = "Routes: rake routes 10x faster with search feature. A command line to fastly search through the rails routes."
  spec.homepage      = "http://github.com/bcaccinolo/routes"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
