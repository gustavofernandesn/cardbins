require 'nokogiri'
require "cardbins/xml"

module Cardbins
  class Brand
    def initialize(card_bin)
      @card_bin = card_bin
    end

    def card_brand_name(brand_id)
      brand_name = ""

      doc = Xml.new("brand").read

      doc.xpath('//CrdBrd').each do
        |element|

        curr_brand_id = element.xpath('Id').text
        brand_name = element.xpath('Description').text

        if brand_id == curr_brand_id
          break
        end
      end

      if brand_name.to_s.empty?
          brand_name = "brand not found"
      end

      return brand_name
    end

    def compare_card_bins()
      brand = ""
      min_range = ""
      max_range = ""

      doc = Xml.new("bin").read

      doc.xpath('//BinRng').each do
          |element|

          brand_id = element.xpath('TefBrandId').text

          min_range = element.xpath('MinRange').text[0,6]
          max_range = element.xpath('MaxRange').text[0,6]

          if @card_bin.to_i >= min_range.to_i
            if @card_bin.to_i <= max_range.to_i
              brand = card_brand_name(brand_id)
              break
            end
          end
        end

      if brand.to_s.empty?
          brand = "bin not found"
      end

      return brand
    end

    def find()
      compare_card_bins()
    end
  end
end
