#PEDAC

#Problem
#write a method that returns an Array that
#contains every other element of an Array
#that is passed in as an argument
#The values in the returned list should be those values
#that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

#Example/Test Case
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
# oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

#Data Structure
#array object of Integer object elements as input
#array object of integer object elements as output

#Algorithm
#loop through each element with the index in the array
#if the element's index is even, select the element
#return the new array

#Code
def oddities(arg)
  final_arr = []
  arg.each_with_index do |element, index|
    final_arr << element if index.even? 
  end
  
  final_arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]