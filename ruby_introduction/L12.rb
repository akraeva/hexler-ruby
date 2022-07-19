#!/usr/bin/env ruby

ar=[1, 2, 3, 4, 5]

ar.each do |el|
  puts el
end

def sum_of(range)
  # BEGIN (write your solution here)
  sum=0
  range.each do |el|
    sum += yield el
  end
  sum
  # END
end

result = sum_of(1..3) do |num|
  num * 2
end
puts result == 12

result = sum_of([1, 100, 3]) do |num|
  num + 3
end
puts result == 113