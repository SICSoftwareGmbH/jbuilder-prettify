# jbuilder-prettify

This gem provides an easy way to configure pretty output with jbuilder.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jbuilder-prettify'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jbuilder-prettify

## Usage

Enable pretty output in development environment (`config/environments/development.rb`)

```ruby
config.jbuilder.prettify = true
```

or set it in a controller based on the current request

```ruby
class ApplicationController < ActionController::Base
  before_action :prettify_json

  def prettify_json
    Jbuilder.prettify = %w( 1 true yes ).includes?(params[:pretty_json])
  end
end
```

## Contributing

1. Fork it ( https://github.com/SICSoftwareGmbH/jbuilder-prettify/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

[![Gem Version](https://img.shields.io/gem/v/jbuilder-prettify.svg)](https://rubygems.org/gems/jbuilder-prettify)
