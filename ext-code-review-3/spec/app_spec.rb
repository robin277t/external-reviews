require_relative "../app.rb"

RSpec.describe"Spell Checker Tests" do
  
  context"1st test block, single word input strings" do
    it"single word correctly spelled" do
      test_spell_checker = SpellChecker.new
      expect(test_spell_checker.highlight_wrong_words("the")).to eq("the")
    end
    
    it"single word incorrectly spelled" do
      test_spell_checker = SpellChecker.new
      expect(test_spell_checker.highlight_wrong_words("twhe")).to eq("~twhe~")
    end

    it"single word correctly spelled with random capital letters" do
      test_spell_checker = SpellChecker.new
      expect(test_spell_checker.highlight_wrong_words("tHe")).to eq("tHe")
    end
  end

end