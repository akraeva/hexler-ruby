#!/usr/bin/env ruby

#Зачада: выкинуть слова на f и последнюю букву upper

#Решение: 
#1) разбить
#2) отвильтровать слова на F
#3) перевернуть > сделать capitalise > обратно
#4) соединить

str = "one two tree four five six seven" #eight nine

res = str.split(" ").\
  select{|el| !el.start_with?("f")}.\
  map{|el| el.reverse}.map(&:capitalize).\
  map(&:reverse).join(" ")

puts res
