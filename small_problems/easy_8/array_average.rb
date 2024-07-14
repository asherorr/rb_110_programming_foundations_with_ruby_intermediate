#PEDAC

#Problem
#write a method that takes one argument
#an array containing integers
#and returns the average of all numbers in the array
#the array will never be empty and the numbers will always
#be positive integers. Your result should also be an integer.

#Don't use the Array#sum method for solution.
#See if you can solve this problem using iteration more directly.

#Example/Test Case
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

#Data Structure
#Array object of integer object elements as arg
#Integer object returned

#Algorithm
#initialize var sum to 0
#initialize var size to size of arg
#loop through each element in the arg
#increment sum by the current element
#get result by dividing sum by the size
#return result

#Code
def average(arg)
  sum = 0
  size = arg.size
  
  arg.each {|num| sum += num}
  
  result = sum / size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40