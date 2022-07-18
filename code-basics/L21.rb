#!/usr/bin/env ruby

data = [
    ['ruby', 'dynamic', 'strong'],
    ['js', 'dynamic', 'weak'],
    ['c', 'static', 'weak'],
    ['kotlin', 'static', 'strong']
  ]
  
  def convert (mas)
    res=[]
    mas.each do |record|
      i1, _, i2 = record
      res << [i1, i2]
    end
  #   res.each { |x| puts "#{x}"}
    res
  end
  
  
  result = convert(data)
  # [
  #   ['ruby', 'strong'],
  #   ['js', 'weak'],
  #   ['c', 'weak'],
  #   ['kotlin', 'strong']
  # ]

  result.map {|r| puts "#{r}"}