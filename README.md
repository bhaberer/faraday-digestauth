# Faraday::Digestauth

This gem started as a direct copy of a gist belonging to @kapkaev

It is located at https://gist.github.com/kapkaev/5088751

I merely gemmed it up so that I could use it in multiple places.

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
