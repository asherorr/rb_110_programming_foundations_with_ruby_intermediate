require 'pry'
require "pry-byebug"

def double_num(num)
  num + 2
end


def double_evens(arr)
  arr.map do |num|
    binding.pry
    new_num = num.even? ? double_num(num) : num
  end
end