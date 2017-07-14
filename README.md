# Cardbins

This gem will help you to identify the card's brand name by the initial bin.
You should inform the first six digits of credit or debit card.

Included Cards:

- MASTER
- VISA
- ELO
- AMEX
- TICKET
- SODEXO
- VR
- ALELO
- HIPERCARD

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
2.4.1 :001 > require 'cardbins'
 => true
2.4.1 :002 > brand = Cardbins.search("636297")
 => "ELO"
 ```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gustavofernandesn/cardbins.
