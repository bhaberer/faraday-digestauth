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
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 3.0', '< 4'

  spec.add_dependency 'faraday', '>= 0.7'
  spec.add_dependency 'net-http-digest_auth', '~> 1.4'
end
