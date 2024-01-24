
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
  return arr.first if arr.length == 1
  return 0 if arr.length == 0
  
   arr[-1] + array_sum2(arr[0...-1])
end

def exponent(b, n)
  return 1 if n == 0
  b * exponent(b, n - 1)
end

def exponent_2(b, n)
  return 1 if n == 0
  return b if n == 1
  if n.even?
    exponent_2(b, n / 2) * exponent_2(b, n / 2)
  else
    b * exponent_2(b, (n - 1) / 2) * exponent_2(b, (n - 1) / 2)
  end
end


class Array
  #[1, [2], [3, [4]]]
  # [1,[2],[3,[4]]]
  #[ele,]
  def deep_dup
    deep_copy = []
    self.each do |ele|
      if ele.is_a?(Array)
        deep_copy << ele.deep_dup
      else
        deep_copy << ele
      end
    end
  end
end







# class Array
#   def deep_dup(arr)
#     deep_dups = []
#       self.each do |ele| 
#       if ele.is_a?(Array)
#         arr += ele.flatten
#       else
#         arr << ele
   
#       end
#     deep_dups
#   end
# end



