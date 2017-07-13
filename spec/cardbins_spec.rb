require "spec_helper"

RSpec.describe Cardbins do
  it "has a version number" do
    expect(Cardbins::VERSION).not_to be nil
  end

  it "Search xml range bin" do
    range = Cardbins::Xml.search("541333")
    expect(range).to eql({"MinRange"=>"5099870000000000000", "MaxRange"=>"5990329999999999999", "TefBrandId"=>"4", "DataSetVersion"=>"0"})
  end

  it "Search xml brand" do
    id = 3
    brand = Cardbins::Xml.brand(id)
    expect(brand).to eql("VISA")
  end
end
