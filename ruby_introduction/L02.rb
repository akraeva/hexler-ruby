#!/usr/bin/env ruby

a = -4
b = 3
solution1 = a**b
puts solution1 == -64 

solution2 = b.to_f / a
puts solution2 == -0.75 

solution3 = a.abs + b.abs
puts solution3 == 7 