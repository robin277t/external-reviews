require_relative "../app.rb"

RSpec.describe"Spell Checker Tests" do

  let(:test_spell_checker) {SpellChecker.new}
  
  context"1st test block, single word input strings" do
    it"single word correctly spelled" do
      expect(test_spell_checker.highlight_wrong_words("the")).to eq("the")
    end
    
    it"single word incorrectly spelled" do
      expect(test_spell_checker.highlight_wrong_words("twhe")).to eq("~twhe~")
    end

    it"single word correctly spelled with random capital letters" do
      expect(test_spell_checker.highlight_wrong_words("tHe")).to eq("tHe")
    end
  end
  
  context"2nd test block, 2 word inputs" do
    it"two word string, all correct" do
      expect(test_spell_checker.highlight_wrong_words("the bear")).to eq("the bear")
    end

    it"two word string, 1 incorrect" do
      expect(test_spell_checker.highlight_wrong_words("thhe bear")).to eq("~thhe~ bear")
    end
  end

end