#PEDAC

#Problem
#write a method that takes two Array arguments
#in which each Array contains a list of numbers
#and returns a new Array that contains the product
#of each pair of numbers from the arguments that
#have the same index
#you may assume that the arguments contain the same number of elements

#Example/Test Case
#multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#Data Structure
#array object input
#single array output

#Algorithm
#initialize var `new_arr`
#initialize var `index` to 0

#until index is greater than size of arg 1 minus 1
#add arg1[index] * arg2[index] to new_arr
#increment index += 1
#return new_arr

#Code
def multiply_list(arg1, arg2)
  new_arr = []
  index = 0
 
  until index > arg1.size - 1
    new_arr << arg1[index] * arg2[index]
    index += 1
  end
  
  p new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]