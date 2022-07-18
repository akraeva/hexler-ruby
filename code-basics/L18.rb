#!/usr/bin/env ruby

data = [
    ['11-9-2020', 'france', 10_000],
    ['11-10-2020', 'usa', 35_000],
    ['13-12-2020', 'india', 55_000],
    ['12-11-2020', 'france', 13_000],
    ['12-12-2020', 'usa', 22_000],
    ['11-12-2020', 'india', 54_000],
  ]
  
  def sort_cases(data_mas)
    data_mas.sort_by! do|row|
      year_i = row[0].length
      year = row[0][year_i-4..year_i]
      month = row[0][3..4]
      day = row[0][0..1]
  
      #нормальное решение:
      #day, month, year = row.first.split('-')
      
      Time.utc(year, month, day)
    end
    data_mas.reverse!
  end
  
  result = sort_cases(data)

  result.map {|r| puts "#{r}"}