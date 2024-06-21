#PEDAC

#Problem
#write a method that takes an Array of numbers
#then returns an Array with the same number of elements
#and each element has the running total from the original Array.

#Example/Test Case
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

#Data Structure
#Integer

#Algorithm
#set a var `result` to 0
#set a var `new_array` to []
#loop through each element in the array
#update result to result += element
#add the result to `new_array`
#return `new_array`

#Code
def running_total(arg)
  result = 0
  new_array = []
  
  arg.each do |element|
    result += element
    new_array << result
  end
  
  new_array
end

#second solution
def running_total(arg)
  sum = 0
  array.map { |value| sum += value }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []