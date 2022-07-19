#!/usr/bin/env ruby

func = ->(num){num**2}

def sum_of_range(first, last, func)
  if first==last
    func.call(last)
  else
    func.call(first)+sum_of_range(first+1, last, func)
  end
end

puts sum_of_range(1,3,func)

func = ->(num){num**3}
puts sum_of_range(1,3,func)