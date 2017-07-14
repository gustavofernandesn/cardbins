# Cardbins

- Search the brand name of credit and debit cards;
- The first six digits of card is required.

Cards supported:

- MASTER;
- VISA;
- ELO;
- AMEX;
- TICKET;
- SODEXO;
- VR;
- ALELO;
- HIPERCARD.

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
require 'cardbins'
 => true
brand = Cardbins.search("636297")
 => "ELO"
 ```

## Test

 rspec spec

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gustavofernandesn/cardbins
