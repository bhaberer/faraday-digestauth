# Faraday::DigestAuth

[![Gem Version](https://badge.fury.io/rb/faraday-digestauth.png)](http://badge.fury.io/rb/faraday-digestauth)
[![Dependency Status](https://gemnasium.com/bhaberer/faraday-digestauth.png)](https://gemnasium.com/bhaberer/faraday-digestauth)
[![Build Status](https://travis-ci.org/bhaberer/faraday-digestauth.png?branch=master)](https://travis-ci.org/bhaberer/faraday-digestauth)
[![Coverage Status](https://coveralls.io/repos/bhaberer/faraday-digestauth/badge.png?branch=master)](https://coveralls.io/r/bhaberer/faraday-digestauth?branch=m    aster)
[![Code Climate](https://codeclimate.com/github/bhaberer/faraday-digestauth.png)](https://codeclimate.com/github/bhaberer/faraday-digestauth)

## Installation

Add this line to your application's Gemfile:

    gem 'faraday-digestauth'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faraday-digestauth

## Usage

```
require 'faraday'
require 'faraday/digestauth'

@conn = Faraday.new(url: HOSTNAME) do |f|
  f.request :digest, USERNAME, PASSWORD
  f.adapter  Faraday.default_adapter
end

@conn.get 'resource'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## History

This gem was extracted from [Hyperclient](https://github.com/codegram/hyperclient) by [@oriolgual](https://github.com/oriolgual).

## License

MIT License, see [LICENSE](LICENSE.txt) for details.
