require 'pry'
#PEDAC

#Problem
#write a method that takes an Array of integers as input
#multiplies all the numbers together
#divides the result by the number of entries in the array
#and then prints the result rounded to 3 decimal places
#assume the array is non-empty.

#Example/Test Case
# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

#Data Structure
#array object of integer object elements input
#integer object output

#Algorithm
#initialize var `result`
#initialize var `size` to the length of the array

#loop through each num in the array
#multiply the current num by the next num unless next num is nil
#reassign `result` to return value of above operation

#coerce result rounded to 3 decimal places
#return result

#Code
def show_multiplicative_average(arr)
  result = 0
  size = arr.size
  
  arr.each_with_index do |ele, index|
    next_element = arr[index+1]
    if size == 1
      result = ele.to_f
    elsif result == 0
      result = ele * next_element
    else
      result = result * next_element unless next_element == nil
    end
  end
  
  result = result.to_f / size
  
  result.round(3)
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667