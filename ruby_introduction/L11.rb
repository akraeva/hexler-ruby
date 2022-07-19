#!/usr/bin/env ruby

def factorial (num)
    iter = -> (current, accum) {
      return accum if current > num
      iter.call(current+1, accum * current)
    }
    iter.call(1,1)
  end
  
  puts factorial(3)
  
  def my_pow(base, initial_exp)
    # BEGIN (write your solution here)
    pow_iter = -> (current, accum) {
      return accum if current < 1 #current.zero?
      pow_iter.call(current-1, accum*base )
    } 
    # END
    pow_iter.call(initial_exp, 1)
  end
  
   puts my_pow(2, 3) == 8 
   puts my_pow(3, 3) == 27 
   puts my_pow(1, 2) == 1 