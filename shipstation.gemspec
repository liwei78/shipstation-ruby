# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "shipstation/version"

Gem::Specification.new do |gem|
  gem.name          = "shipstation-rb"
  gem.version       = ShipStation::VERSION
  gem.licenses      = 'MIT'
  gem.authors       = ["Rique Li"]
  gem.email         = ["hi@liwei.me"]
  gem.description   = 'An API wrapper for the ShipStation API.base on Cody Duval\'s 0.0.1'
  gem.summary       = 'Ruby wrapper ShipStation API'
  gem.homepage      = 'https://github.com/liwei78/shipstation-ruby'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'rash', '0.4.0'
  gem.add_dependency 'ruby_odata', '0.1.6'
  gem.add_development_dependency 'minitest', '~> 4.2'
  gem.add_development_dependency 'turn', '~> 0.9'
  gem.add_development_dependency 'rake', '~> 10.3'
  gem.add_development_dependency 'vcr', '~> 2.9'
  gem.add_development_dependency 'webmock', '~> 1.18'
  gem.add_development_dependency 'bundler', '1.3.5'
end