# Cardbins

If you have a payment app and you need to check the card's brand name, this
gem may can help you to find it. The card's bins data is stored into a xml
file and it will be used to compare the card's bins range informed and returns
the correct brand name.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cardbins'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cardbins

## Usage

```ruby
2.4.1 :001 > require 'Cardbins'
 => true
2.4.1 :002 > brand = Cardbins.bin("636297")
 => "ELO"
 ```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gustavofernandesn/cardbins.
