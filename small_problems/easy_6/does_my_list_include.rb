#PEDAC

#Problem
#write a method named include? that takes an Array
#and a search value as arguments

#This method should return `true` if the search value is in the array
#and false if it is not

#You may not use the Array#include? method.

#Example/Test Case
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

#Data Structure
#Array object of integer object elements input
#boolean as output

#Algorithm
#loop through each element in arr
#compare each element to the target val
#if the element equals a target, return true
#if it reaches the end of the array without finding a match, return false

#Code
def include?(arr, target)
  result = false
  arr.each do |num|
    if num == target
      result = true
    else
      next
    end 
  end
  result
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false