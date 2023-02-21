class BandPassFilter

  def modify_frequencies(frequency_array, upper_limit = 1000, lower_limit = 40)

    if upper_limit != 1000
      return [upper_limit]
    end

    if frequency_array[0] < 1000
      return frequency_array
    else
      return [1000]
    end


  end

end