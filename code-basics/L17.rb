#!/usr/bin/env ruby

def intersection (array1, array2)  
array_res=[]
array2.each do |element|
  array_res << element if array1.include?(element)
end
array_res
end

puts intersection([1, 3, 8], [9, 3, 1]); # [3, 1]
puts intersection([8], [5, 0]) # []