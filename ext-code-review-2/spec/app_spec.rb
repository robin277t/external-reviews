require_relative "../app.rb"

RSpec.describe "Basic input test" do
  
  # let(:app_test) {Filter.new}

  it "tests program receives input" do
    expect(band_pass_filter([40],40,1000)).to eq ([40])
  end

  it "tests program receives input" do
    expect(band_pass_filter([50,50],40,1000)).to eq ([50,50])
  end

  it "tests program receives input" do
    expect(band_pass_filter([30,50],40,1000)).to eq ([40,50])
  end

  it "tests program receives input" do
    expect(band_pass_filter([50,1200],40,1000)).to eq ([50,1000])
  end
  
  it "tests program receives input" do
    expect(band_pass_filter([30,1200],40,1000)).to eq ([40,1000])
  end

  it "tests program receives input" do
    expect(band_pass_filter([30,1200],40,1000)).to eq ([40,1000])
  end

  it "tests program receives input" do
    expect(band_pass_filter([30,1200],50,800)).to eq ([50,800])
  end

end