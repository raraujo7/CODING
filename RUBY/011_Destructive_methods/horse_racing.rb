def horse_racing_format!(race_array)
  # TODO: modify the given array so that it is horse racing consistent. This method should return nil.
  race_array.each_with_index do |e, i|
    race_array[i] = "#{i + 1}-#{e}!"
  end
  return race_array.reverse!
end
