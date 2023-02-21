class SpellChecker

  def initialize
    @dictionary = ["the", "bear", "woods"] #dictionary must always contain only lowercase words
  end


  def highlight_wrong_words(string_to_test)
    checked_string = string_to_test.split.map do |word|
        if @dictionary.include?(word.downcase)
          word = word
        else
          word = "~#{word}~"
        end 
      end
    return checked_string.join(" ")  
  end

end