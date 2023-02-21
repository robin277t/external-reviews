require_relative "../app"

RSpec.describe "First block of tests" do
  it "return 1st single value inside default range" do
    expect(modify_frequencies([50])).to eq ([50])
  end

  it "return 2nd single value inside default range" do
    expect(modify_frequencies([100])).to eq ([100])
  end

  it "return 3rd single value inside default range" do
    expect(modify_frequencies([300])).to eq ([300])
  end

end