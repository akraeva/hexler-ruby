#!/usr/bin/env ruby

def reverse(str)
    res_str=""
    str.each_char { |ch| res_str="#{ch}#{res_str}"}
    res_str
  end
  
  puts reverse 'hexlet' # telxeh
  puts reverse 'basics' # scisab