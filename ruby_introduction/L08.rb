#!/usr/bin/env ruby

def square (num)
    num**2
  end
  
  def sum_of_squres (num1, num2)
    square(num1) + square(num2)
  end
  
  puts sum_of_squres(3,5) == 34
  
  def cube num
    num * num * num
  end

  puts cube(3) == 27