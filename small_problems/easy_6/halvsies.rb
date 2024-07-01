require 'pry'
#PEDAC

#Problem
#write a method that takes an Array as an argument
#and returns two Arrays (as a pair of nested arrays)
#that contain the first half and second half of the original Array

#if the original array contains an odd number of elements
#the middle element should be placed in the first half Array

#Example/Test Case
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

#Data Structure
#Array object of Integer objects

#Algorithm
#initialize `final_arr` to []
#initialize first_arr to []
#initialize second_arr to []
#determine the size of the first array
#if the size is even, slice! the array starting at 0
#the length will be size divided by 2
#add those elements to first_arr
#copy the remaining elements to second_arr
#add first_arr and second_arr to final_arr

#if it's odd, slice the array starting at 0
#the length will be the size divded by 2 + 1
#add those elements to first_arr
#copy the remaining elements to second_arr
#add first_arr and second_arr to final_arr

#return final_arr

#Code
def halvsies(arr)
  final_arr = []
  first_arr = []
  second_arr = []
  
  size = arr.size
  length = size / 2
  if size.even?
    first_arr = arr.slice!(0, length)
    second_arr = arr + second_arr
  else
    first_arr = arr.slice!(0, (length + 1))
    second_arr = arr + second_arr
  end 
  
  final_arr << first_arr
  final_arr << second_arr
  p final_arr
end

halvsies([1, 2, 3, 4])
halvsies([1, 5, 2, 4, 3])
halvsies([5])
halvsies([]) 