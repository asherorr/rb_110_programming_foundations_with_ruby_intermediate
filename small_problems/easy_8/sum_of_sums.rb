require 'pry'
#PEDAC

#Problem
#write a method that takes an Array of numbers and then returns
#the sum of the sums of each leading subsequence for that Array
#You may assume that the Array always contains at least one number.

#Example/Test Case
# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

#Data Structure
#Array object of integer object elements input
#Integer object as output

#Algorithm
#initialize var `sum` to 0
#initialize `new_arr` to []

#loop through each element in the arr
#add the element to new_arr
#update the sum to mirror the sum of `new_arr`

#Code
def sum_of_sums(arr)
  sum = 0
  new_arr = []
  
  arr.each do |element|
    new_arr << element
    sum += new_arr.sum
  end
  
sum

end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35