def array_to_hash(array)
  # TODO: implement the method :)
  hash = {}
  # puts array
  array.each_with_index do |value, index|
    key = block_given? ? yield(index) : index.to_s
    hash[key] = value
  end
  return hash
end
