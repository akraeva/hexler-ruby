#!/usr/bin/env ruby

hash1 = { key: 'value' }
hash2 = { key2: 'value2' }
hash3 = { key3: 'value3', key: 'new value' }

def merge_all(*hashes)
  result={}
  hashes.map  {|hash| result.merge!(hash) }
  result
end


puts  merge_all(hash1, hash2, hash3)
# { key: 'new value', key2: 'value2', key3: 'value3' }
