#!/usr/bin/env ruby

sentence = '  Ruby one love  '
puts "\n #1 = > #{sentence}"
puts "\n #2 = > #{sentence.strip}"
puts "\n #3 = > #{sentence.strip.split}"
puts "\n #4 = > #{sentence.strip.split.last}" 
puts "\n #5 = > #{sentence.strip.split.last.size}" 

#обрезать / разбить на массив / взять последний / его длина
sentence.strip.split.last.size

#===================

def happy?(numb)
    str = numb.to_s
    i2 = str.length/2-1
    i4 = str.length-1
    i3 = i4 - i2
    sum_numb(str[0..i2]) == sum_numb(str[i3..i4])
  end
  
  def sum_numb(str)
    sum=0
    str.each_char do |ch|
      sum += ch.to_i
    end
    sum
  end
  
  puts happy? 33 
  puts !(happy? 3833)
  puts happy? 123_321 
  puts happy? 666_666 
  puts !(happy? 123_456)
