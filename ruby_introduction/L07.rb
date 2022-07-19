#!/usr/bin/env ruby

hash1 = { one: 1, two: 2, three: 3 }
hash1.merge!(:key => :value)
#rightway  hash1[:key] = :value
puts hash1

hash2 = { one: 1, two: 2, three: 3 }
hash2.delete(:one)
puts hash2