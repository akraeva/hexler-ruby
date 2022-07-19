#!/usr/bin/env ruby

def result (real_a, real_b, pred_a, pred_b)  
    if (real_a==pred_a)&&(real_b==pred_b)
        res = 2
    elsif (((real_a==real_b)&&(pred_a==pred_b)) || ((real_a>real_b)&&(pred_a>pred_b)) || ((real_a<real_b)&&(pred_a<pred_b)))
        res = 1
    else
        res = 0
    end
    res
  end
  
    puts result(1, 2, 1, 2) == 2
    puts result(1, 3, 1, 2) == 1
    puts result(4, 3, 0, 0) == 0
  
  #можно былло и без res