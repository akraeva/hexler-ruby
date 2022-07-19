#!/usr/bin/env ruby

def words_by_letters(text)
    words = text.strip.split(" ").sort
    words.each_with_object({}) do |word, acc|
        acc[word[0]] ||= []
        acc[word[0]] << word
    end
end

sentence = 'hexlet helps people to become developers'
result = words_by_letters(sentence)
# {
#   b: ['become'],
#   d: ['developers'],
#   h: ['helps', 'hexlet'],
#   p: ['people'],
#   t: ['to']
# }

result.map {|str| puts "#{str}"}