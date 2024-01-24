def range(start, e)
  return [] if e < start
  return [] if e == start
  range(start, e - 1) + [e - 1]
end

def array_sum(arr)
  sum = 0
  arr.each{ |ele| sum += ele}
  return sum 
end
