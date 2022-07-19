#!/usr/bin/env ruby

def convert(array)
    array.sort.select{|str| str[-1]=="?"}.map(&:downcase)
end #есть метод end_with()

strings = ['wow?', 'One?', 'tWo!', 'THREE']
puts convert(strings) == ["one?", "wow?"]