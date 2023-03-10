class BandPassFilter

  def modify_frequencies(frequency_array, upper_limit = 1000, lower_limit = 40)

    if !frequency_array.is_a?(Array)  || !frequency_array.all? {|i| i.is_a?(Integer) } || !upper_limit.is_a?(Integer) || !lower_limit.is_a?(Integer)
        raise("data error")
      # puts "error found"
    end

    new_frequency_array = frequency_array.map do |number|
      if number > upper_limit
        number = upper_limit
      elsif number < lower_limit
        number = lower_limit
      else 
        number = number
      end
    end

    return new_frequency_array

  end

end