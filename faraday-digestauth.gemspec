# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday/digestauth/version'

Gem::Specification.new do |spec|
  spec.name          = 'faraday-digestauth'
  spec.version       = Faraday::DigestAuth::VERSION
  spec.authors       = ['Brian Haberer', 'Oriol Gual']
  spec.email         = ['bhaberer@gmail.com', 'oriol.gual@gmail.com']
  spec.description   = 'Faraday extension to enable digest auth'
  spec.summary       = 'Digest Auth for Faraday'
  spec.homepage      = 'https://github.com/bhaberer/faraday-digestauth'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '>= 0.7'
  spec.add_dependency 'net-http-digest_auth', '~> 1.4'
  spec.add_development_dependency 'coveralls', '~> 0.1'
  spec.add_development_dependency 'rake', '~> 12.3.3'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'rubocop', '0.82.0'
  spec.add_development_dependency 'rubocop-rspec', '1.39.0'
  spec.add_development_dependency 'webmock', '~> 3.8.3'
end
