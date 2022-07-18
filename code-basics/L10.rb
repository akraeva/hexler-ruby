#!/usr/bin/env ruby

def average(start_num, end_num)
    aver = 0.0
    count = end_num - start_num + 1
    start_num.upto(end_num) { |i| aver += i }
    aver/count
  end
  
  puts average(5, 8) # (5 + 6 + 7 + 8) / 4; 26 / 4; 6.5
  puts average(2, 4) # (2 + 3 + 4) / 3; 9 / 3; 3.0