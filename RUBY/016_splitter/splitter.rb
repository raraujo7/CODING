def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In addition to this split, each array should be *sorted*.
  arr_limited = array.select { |a| a.length == size }.sort
  arr_rest = array.reject { |a| a.length == size }.sort
  [arr_limited, arr_rest]
end

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
  arr_limited = array.select { |a| yield(a) }.sort
  arr_rest = array.reject { |a| yield(a) }.sort
  [arr_limited, arr_rest]
end
