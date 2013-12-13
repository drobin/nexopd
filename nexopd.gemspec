# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nexopd/version'

Gem::Specification.new do |gem|
  gem.name          = "nexopd"
  gem.version       = Nexopd::VERSION
  gem.authors       = ["Robin Doer"]
  gem.email         = ["robin@robind.de"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "em-sshd"
  gem.add_dependency "nexop"
  gem.add_dependency "nexop-userauth"
  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "redcarpet"
  gem.add_development_dependency "yard"
end
