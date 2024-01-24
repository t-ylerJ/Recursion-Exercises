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

def array_sum2(arr)
  #base case
  if arr.length > 0
  #inductive 
  
    array_sum2(arr[0]) + array_sum2(arr[1..-1])
  end

end

# [1] - 1 
# [1,2] - 3 = 1 + 2 = prev.sol + arr[-1]
# [1,2,3] - 6 = 3 + 3 = prev.sol + arr[-1]