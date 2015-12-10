# TawkRails

[![Gem Version](https://badge.fury.io/rb/tawk_rails.svg)](http://badge.fury.io/rb/tawk_rails)

Rails simple helper for [Tawk](https://www.tawk.to/) live chat script.

## Installation

Add this line to your application's Gemfile:

    gem 'tawk_rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tawk_rails

## Usage

Create file `tawk.rb` in `config/initializes/tawk.rb` and add

    TawkRails.configure do |config|
      config.id_site = 'replace-me-with-your-id_site'
    end

place render method where you want in view.

    <%= tawk_init %>

## Contributing

1. Fork it ( https://github.com/luizpicolo/tawk_rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
