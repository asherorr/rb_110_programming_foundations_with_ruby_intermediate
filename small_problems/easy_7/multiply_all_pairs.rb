#PEDAC

#Problem
#write a method that takes two Array arguments
#in which each Array contains a list of numbers
#and returns a new Array that contains the product
#of every pair of numbers that can be formed
#between the elements of the two Arrays
#the results should be sorted by increasing value

#you may assume that neither argument is an empty Array.

#Example/Test Case
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

#Data Structure
#2 array object inputs of Integer object elements
#1 Array object of Integer object elements sorted in ascending order

#Algorithm
#initialize var `new_arr` to []
#initialize `first_num` to 0th index of arg1
#loop through each element in arg2
#multiply the element by first_num and add return value to new_arr

#
#sort new_arr in ascending order

#Code
def multiply_all_pairs(arg1, arg2)
  new_arr = []
  
  arg1.each do |num_in_arg1|
    arg2.each do |num_in_arg2|
      new_arr << num_in_arg1 * num_in_arg2
    end
  end
  
  p new_arr.sort!
end
    
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]