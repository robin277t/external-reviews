class SpellChecker

  def initialize
    @dictionary = ["the", "bear"] #dictionary must always contain only lowercase words
  end


  def highlight_wrong_words(string_to_test)

    if string_to_test.include?(" ")
       split_string_input = string_to_test.split
      # print split_string_input
      # return string_to_test
      
      multi_word_string_output = split_string_input.map do |word|
        if @dictionary.include?(word)
          word = word
        else
          word = "~#{word}~"
        end 
      end
      print multi_word_string_output
    return multi_word_string_output.join(" ")  
    end
    
    sanitized_string = string_to_test.downcase

    if @dictionary.include?(sanitized_string)
      return string_to_test
    elsif !@dictionary.include?(sanitized_string)
      return "~#{string_to_test}~"
    end
  end

end