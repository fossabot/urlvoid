# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'urlvoid/version'

Gem::Specification.new do |spec|
  spec.name        = 'urlvoid'
  spec.version     = URLVoid::VERSION
  spec.authors     = ['pwelch']
  spec.email       = ['paul@pwelch.net']

  spec.summary     = 'Gem for URLVoid API.'
  spec.description = 'Gem for URLVoid API.'
  spec.homepage    = 'https://github.com/urlvoid'
  spec.license     = 'MIT'

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files   = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rest-client'
  spec.add_dependency 'activesupport'
  spec.add_dependency 'nokogiri'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'pry'
end
