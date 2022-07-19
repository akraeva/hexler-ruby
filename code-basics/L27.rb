#!/usr/bin/env ruby

def my_filter (array)
    array.select {|element| yield(element)}
end



coll = [1, 2, 3]
puts my_filter(coll) { |v| v.even? } == [2]
puts my_filter(coll) { |v| v.odd? } == [1, 3]

# Примеры выше можно записать и так
# & – преобразует символ в блок и передаст его как блок
puts my_filter(coll, &:even?) == [2]
puts my_filter(coll, &:odd?) == [1, 3]