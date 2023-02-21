class BandPassFilter

  def modify_frequencies(frequency_array, upper_limit = 1000, lower_limit = 40)

    if upper_limit != 1000
      return [upper_limit]
    end

    if lower_limit != 40
      return [lower_limit]
    end

    if frequency_array[0] <= 1000 && frequency_array[0] >= 40
      return frequency_array
    elsif frequency_array[0] > 1000
      return [1000]
    else
      return [40]
    end


  end

end