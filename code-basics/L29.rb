#!/usr/bin/env ruby

def gen_diff(hash_old, hash_new)
    old_keys = hash_old.keys #собрать ключи можно было умнее
    new_keys = hash_new.keys
    result ={}
    (old_keys - new_keys).each { |key| result[key] = "deleted"}
    (old_keys & new_keys).each do |key| 
        result[key] = hash_old[key] != hash_new[key] ? "changed" : "unchanged"
    end
    (new_keys - old_keys).each { |key| result[key] = "added"}
    result
end

#test 

result = gen_diff(
            { one: 'eon', two: 'two', four: true },
            { two: 'own', zero: 4, four: true }
        );
example = {one: 'deleted', 
            two: 'changed', 
            four: 'unchanged', 
            zero: 'added'
        }

puts  result == example
