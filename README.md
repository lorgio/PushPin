# PushPin

PushPin Allows you to get the URLs of the Pintrest Pins from a person's board.  This would be useful to find the underlying information for other benifits.

## Requirements

It uses mechanize

## Installation

Add this line to your application's Gemfile:

    gem 'push_pin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install push_pin

## Usage
  Just require the library, and pass in the Pintrest Board URL

    require "push_pin"

    my_pintreset_board_url = "http://pinterest.com/lorgio/testboard/"
    push_pin = PushPin::Scraper.new(my_pintreset_board_url)

  Once you set this up you can get the actual URLs of the pins themselves

    push_pin.pintrest_pin_urls

  Or the origin URLs of each pin on the board

    push_pin.pintrest_pin_origin_urls

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
