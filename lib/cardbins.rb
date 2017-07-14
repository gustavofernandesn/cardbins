require "cardbins/version"
require "cardbins/brand"

module Cardbins
  def self.search(bin)
    range = Cardbins::Brand.search(bin)
  end
end
