#!/usr/bin/env ruby

def link_to (link_name, link_url, *parametrs)
    parametrs_str = ""
    parametrs.each {|hash| hash.map {|option, value| parametrs_str ="#{parametrs_str} #{option.to_s}=\"#{value}\"" } }
    "<a href=\"#{link_url}\"#{parametrs_str}>#{link_name}</a>"
  end
  
  
  puts link_to 'name', '/url'
  # <a href="/url">name</a>
  
  puts link_to 'name', '/url', class: 'link'
  # <a href="/url" class="link">name</a>
  
  puts link_to 'name', '/url', class: 'link', data: "11.02.2022"
  
  #Текст ссылки
  #Сама ссылка
  #Хеш с атрибутами (не обязательный)