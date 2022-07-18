#!/usr/bin/env ruby

def invert_case(str)
    res=""
    str.each_char do |ch|
        res="#{res}#{(ch.upcase==ch ? ch.downcase : ch.upcase)}"
    end
    res
  end
  
  puts invert_case('Hello, World!') # hELLO, wORLD!
  puts invert_case('I loVe JS')     # i LOvE js
  