# frozen_string_literal: true

source 'https://rubygems.org'

# Specify your gem's dependencies in faraday-digestauth.gemspec
gemspec

install_if -> { ENV.fetch('FARADAY_VERSION', nil) } do
  gem 'faraday', ENV.fetch('FARADAY_VERSION', nil)
end

gem 'coveralls', '~> 0.1'
gem 'rake', '~> 12.3'
gem 'rspec', '~> 3'
gem 'rubocop', '~> 1.62'
gem 'rubocop-packaging', '~> 0.5'
gem 'rubocop-performance', '~> 1.20'
gem 'rubocop-rspec', '~> 2.27'
gem 'webmock', '~> 3.23'
