#!/usr/bin/env ruby

def product(num1, num2, func)
    if num1==num2
      num1
    else
      func.call(product(num1+1, num2, func), num1)
    end
  end
  
  puts (3 == product(1, 2, -> (first, second) { first + second }) )
  puts (6 == product(1, 3, -> (first, second) { first * second }))
  puts (3 == product(3, 3, -> (first, second) { first * second }))
  
  puts (product(2, 4, -> (first, second) { first**second }) ) == 4096
  
  #  return num1 if num1 == num2
   
  #  func.call(product(num1, num2 - 1, func), num2)

  