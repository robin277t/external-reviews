class SpellChecker

  def initialize
    @dictionary = ["the"] #dictionary must always contain only lowercase words
  end


  def highlight_wrong_words(string_to_test)

    sanitized_string = string_to_test.downcase

    if @dictionary.include?(sanitized_string)
      return string_to_test
    elsif !@dictionary.include?(sanitized_string)
      return "~#{string_to_test}~"
    end
  end

end