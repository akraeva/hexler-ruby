#!/usr/bin/env ruby

def apply_blocks(data, blocks)
    blocks.map { |f| data=f.call(data)}
    data
end

proc1 = proc { |x| x + 1 }
proc2 = proc { |x| x * 2 }


puts apply_blocks(5, [proc1, proc2]) == 12
# proc2.call(proc1.call(5))
puts apply_blocks(5, [proc2, proc1]) == 11
# proc1.call(proc2.call(5))