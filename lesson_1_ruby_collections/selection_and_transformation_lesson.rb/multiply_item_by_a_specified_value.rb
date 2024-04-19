my_numbers = [1, 4, 3, 7, 2, 6]

def double_numbers(array_nums, num)
  array_nums.map! do |element|
    element * num
  end
end

p double_numbers(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
p my_numbers