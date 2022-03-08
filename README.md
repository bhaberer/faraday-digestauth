# Faraday::DigestAuth

[![Gem Version](https://badge.fury.io/rb/faraday-digestauth.svg)](https://badge.fury.io/rb/faraday-digestauth)
[![Coverage Status](https://coveralls.io/repos/bhaberer/faraday-digestauth/badge.svg?branch=master)](https://coveralls.io/r/bhaberer/faraday-digestauth?branch=master)
[![Code Climate](https://codeclimate.com/github/bhaberer/faraday-digestauth.svg)](https://codeclimate.com/github/bhaberer/faraday-digestauth)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faraday-digestauth'
```

And then execute:

```
$ bundle install
```

## Usage

```ruby
require 'faraday'
require 'faraday/digestauth'

conn = Faraday.new(url: HOSTNAME) do |f|
  f.request :digest, USERNAME, PASSWORD
  f.adapter Faraday.default_adapter
end

conn.get 'resource'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## History

This gem was extracted from [Hyperclient](https://github.com/codegram/hyperclient) by [@oriolgual](https://github.com/oriolgual) and turned into a gem by [@bhaberer](https://github.com/bhaberer).

Note: I'm not actively maintaining or managing this gem any longer, as I no longer work on projects using digest auth, if you would like to help maintain this gem please let me know.

## License

MIT License, see [LICENSE](LICENSE.txt) for details.
