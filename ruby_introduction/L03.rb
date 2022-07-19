#!/usr/bin/env ruby

str = 'i like ruby'

solution1 = str.reverse
puts solution1 == 'ybur ekil i' 

solution2 = ''
solution2 << 'i '

solution2 << 'like '
solution2 << 'ruby'
puts solution2 == str

solution3 = "yes, #{str}"
puts solution3 == 'yes, i like ruby' 