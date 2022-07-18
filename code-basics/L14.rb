#!/usr/bin/env ruby

module MyNumber
    def self.reverse_int(number)
      if (number.class!=Integer) || (number == 0)
        0
      else 
        positive_number =  number > 0 ? true : false # есть в руби как отдельный метод positiv?
        str_number = number.abs().to_s
        str_result = ""
        (str_number.length).times do |i|
            str_result="#{str_number[i]}#{str_result}"
        end
        positive_number ? str_result.to_i : str_result.to_i*(-1)
      end  
    end
  end
    
  puts MyNumber.reverse_int(13) # 31
  puts MyNumber.reverse_int(-123) # -321
  puts MyNumber.reverse_int(8900) # 98