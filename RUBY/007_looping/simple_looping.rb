def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  return -1 if min > max

  sum = 0
  for i in min..max
    next sum += i
  end
  return sum
end

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  return -1 if min > max

  sum = 0
  i = min
  while i <= max
    sum = sum + i
    i += 1
  end
  return sum
end
