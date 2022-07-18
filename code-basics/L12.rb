#!/usr/bin/env ruby

def type_of_type(obj)
    if obj.class==(Hash) || obj.class==(Array) ||(obj.class==(Range))
       :complex
    else
      :simple
    end
  end
  
  # Ruby Way
  # [Hash, Array, Range].include?(value.class) ? :complex : :simple
  puts type_of_type({}) # :complex
  puts type_of_type('') # :simple