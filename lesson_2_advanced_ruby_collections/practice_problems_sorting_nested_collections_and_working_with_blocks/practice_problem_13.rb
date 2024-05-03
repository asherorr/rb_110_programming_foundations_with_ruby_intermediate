#Given the following data structure, return a new array..
#... containing the same sub-arrays as the original
#... but ordered logically by only taking into consideration the odd numbers they contain.

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

#Problem
#input: nested array
#output: nested array

#Example/Test Case
#[[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

#Data Structure
#nested arrays

#Algorithm
#arr calls sort_by method with sub_arr as argument
#sub array calls select method and passes in element as argument
#element calls .odd? method

#Code
p (arr.sort_by do |sub_arr|
  sub_arr.select do |element|
    element.odd?
  end
end)