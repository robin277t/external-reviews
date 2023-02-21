require_relative "../app"

RSpec.describe "Band Pass Filter Tests" do
  
  let(:testBandPassFilter) {BandPassFilter.new}

  context "Block 1 in-range single values" do
    it "return 1st single value inside default range" do
      expect(testBandPassFilter.modify_frequencies([50])).to eq ([50])
    end

    it "return 2nd single value inside default range" do
      expect(testBandPassFilter.modify_frequencies([100])).to eq ([100])
    end

    it "return 3rd single value inside default range" do
      expect(testBandPassFilter.modify_frequencies([300])).to eq ([300])
    end

  end

  context "Block2 above range single values" do
    it "return 1st value default upper bound 1000 when input >1000" do
      expect(testBandPassFilter.modify_frequencies([1200])).to eq ([1000])
    end
    
    it "return 2nd value default upper bound 1000 when input >1000" do
      expect(testBandPassFilter.modify_frequencies([1500])).to eq ([1000])
    end
    
    it "return 1st user input upper bound value when input >user upper bound input" do
      expect(testBandPassFilter.modify_frequencies([1500], 1100)).to eq ([1100])
    end
    
    it "return 2nd user input upper bound value when input >user upper bound input" do
      expect(testBandPassFilter.modify_frequencies([1600], 1300)).to eq ([1300])
    end

    it "return 3rd user input upper bound value when input >user upper bound input" do
      expect(testBandPassFilter.modify_frequencies([950], 900)).to eq ([900])
    end
  end

  context"Block 3, single values below minimum" do
    it"1st value input below default min returns default min" do
      expect(testBandPassFilter.modify_frequencies([30])).to eq ([40])
    end

    it"2nd value input below default min returns default min" do
      expect(testBandPassFilter.modify_frequencies([20])).to eq ([40])
    end
    
    it"1st value input below min that customer has input separate to defualt min" do
      expect(testBandPassFilter.modify_frequencies([20],1000,30)).to eq ([30])
    end

    it"2nd value input below min that customer has input separate to defualt min" do
      expect(testBandPassFilter.modify_frequencies([70],1000,80)).to eq ([80])
    end
  end

end