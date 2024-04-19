my_numbers = [1, 4, 3, 7, 2, 6]

def double_numbers(array_nums)
  array_nums.map! do |element|
    element * 2
  end
end

p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]
p my_numbers