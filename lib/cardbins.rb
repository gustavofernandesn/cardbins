require "cardbins/version"
require "cardbins/brand"

module Cardbins
  def self.bin(card_bin)
    brand_name = Brand.new(card_bin).find
  end
end
