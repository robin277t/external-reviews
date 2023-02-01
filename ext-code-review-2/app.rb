
  def band_pass_filter(frequency_array, lower_bound, upper_bound)
    
    processed_array = frequency_array.map do |number| 
      number < lower_bound ? number = lower_bound : number
      number > upper_bound ? number = upper_bound : number
    end

    processed_array

  end

