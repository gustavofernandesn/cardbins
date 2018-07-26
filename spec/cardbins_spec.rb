require "spec_helper"

RSpec.describe Cardbins do
  # Version app test

  it "Check if the app has a version number" do
    expect(Cardbins::VERSION).not_to be nil
  end

  # Hipercard bin test

  it "Test HIPERCARD 01: Bin: 637612" do
    range = Cardbins::Brand.search("637612")
    expect(range).to eql("HIPERCARD")
  end

  it "Test HIPERCARD 02: Bin: 606282" do
    range = Cardbins::Brand.search("606282")
    expect(range).to eql("HIPERCARD")
  end

  it "Test HIPERCARD 03: Bin: 637599" do
    range = Cardbins::Brand.search("637599")
    expect(range).to eql("HIPERCARD")
  end

  # Visa bin test

  it "Test VISA 01: Bin: 589916" do
    range = Cardbins::Brand.search("459450")
    expect(range).to eql("VISA")
  end

  it "Test VISA 02: Bin: 453211" do
    range = Cardbins::Brand.search("453211")
    expect(range).to eql("VISA")
  end

  it "Test VISA 03: Bin: 439354" do
    range = Cardbins::Brand.search("439354")
    expect(range).to eql("VISA")
  end

  it "Test VISA 04: Bin: 457672" do
    range = Cardbins::Brand.search("457672")
    expect(range).to eql("VISA")
  end

  # Amex bin test

  it "Test AMEX 01: Bin: 376449" do
    range = Cardbins::Brand.search("376449")
    expect(range).to eql("AMEX")
  end

  it "Test AMEX 02: Bin: 376485" do
    range = Cardbins::Brand.search("376485")
    expect(range).to eql("AMEX")
  end

  # Mastercard bin test

  it "Test MASTER 01: Bin: 589916" do
    range = Cardbins::Brand.search("589916")
    expect(range).to eql("MASTERCARD")
  end

  it "Test MASTER 02: Bin: 526863" do
    range = Cardbins::Brand.search("526863")
    expect(range).to eql("MASTERCARD")
  end

  it "Test MASTER 03: Bin: 525663" do
    range = Cardbins::Brand.search("525663")
    expect(range).to eql("MASTERCARD")
  end

  it "Test MASTER 04: Bin: 536390" do
    range = Cardbins::Brand.search("536390")
    expect(range).to eql("MASTERCARD")
  end

  # Elo bin test

  it "Test ELO 01: Bin: 636297" do
    range = Cardbins::Brand.search("636297")
    expect(range).to eql("ELO")
  end

  it "Test ELO 02: Bin: 636368" do
    range = Cardbins::Brand.search("636368")
    expect(range).to eql("ELO")
  end

  it "Test ELO 03: Bin: 451416" do
    range = Cardbins::Brand.search("451416")
    expect(range).to eql("ELO")
  end

  it "Test ELO 04: Bin: 438935" do
    range = Cardbins::Brand.search("438935")
    expect(range).to eql("ELO")
  end

  it "Test ELO 05: Bin: 506735" do
    range = Cardbins::Brand.search("506735")
    expect(range).to eql("ELO")
  end

  # Brand test by id

  it "Test Search Brand 01: VISA" do
    id = 1
    brand = Cardbins::Brand.brand_search(id)
    expect(brand).to eql("VISA")
  end

  it "Test Search Brand 02: MASTERCARD" do
    id = 2
    brand = Cardbins::Brand.brand_search(id)
    expect(brand).to eql("MASTERCARD")
  end

  it "Test Search Brand 03: ELO" do
    id = 19
    brand = Cardbins::Brand.brand_search(id)
    expect(brand).to eql("ELO")
  end

  it "Test Search Brand 04: SODEXO" do
    id = 8
    brand = Cardbins::Brand.brand_search(id)
    expect(brand).to eql("SODEXO")
  end
end
