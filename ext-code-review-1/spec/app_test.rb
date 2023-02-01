require_relative '../lib/app'

describe "Input string conversions" do
    
    it "Split input string by '-' " do
        testString = "Green-Green"
        testConv = StringConv.new
        expect(testConv.string_to_array(testString)).to eq (["Green", "Green"])
    end

    it "Count occurrences of 'Green' inside array" do
        testString = "Green-Amber"
        testConv = StringConv.new
        test_variable = testConv.string_to_array(testString)
        expect(testConv.arrayCountOne(test_variable)).to eq (1)
    end

    it "Count occurrences of all Grades and return to array" do
        testString = "Green-Amber"
        testConv = StringConv.new
        test_variable = testConv.string_to_array(testString)
        expect(testConv.arrayCountAll(test_variable)).to eq ([1,1])
    end

end