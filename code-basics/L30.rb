#!/usr/bin/env ruby

def valid_date?(date)
    day, month = date[0,5].split "-"
    (1..31).to_a.include?(day.to_i) && (1..12).to_a.include?(month.to_i)   
end



puts valid_date?('11-11-2011') 
puts valid_date?('13-11-2011') 
puts !valid_date?('11-13-2011')
puts !valid_date?('55-11-2011')