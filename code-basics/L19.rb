#!/usr/bin/env ruby

def get_words_count_by_lang(str)
    hash={}
    str.split.each do |lang|
      hash[lang]=(hash.keys.include?(lang)) ? hash[lang]+1 : 1
    end
    hash
  end
  
  
  text = 'php ruby php java javascript go go go'
  result = get_words_count_by_lang text
  result.map {|r| puts "#{r}"}
  # {
  #   php: 2,
  #   ruby: 1,
  #   java: 1,
  #   javascript: 1,
  #   go: 3
  # }

  