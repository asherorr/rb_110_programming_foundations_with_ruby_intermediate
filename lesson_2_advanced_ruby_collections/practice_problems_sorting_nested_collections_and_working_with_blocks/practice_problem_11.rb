#Given the following data structure use a combination of methods...
#... including either the select or reject method, to return a new array...
#... identical in structure to the original...
#... but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

#Problem
#input: nested array object
#output: nested array object

#Example/Test Case
#arr = [[], [3, 12], [9], [15]]

#Data Structure
#nested array

#Algorithm
#arr calls map method with sub_arr argument
#sub_arr calls select method and passes in element argument
#if element % 3 == 0, then select it.

#Code

p (arr.map do |sub_arr|
  sub_arr.select do |element|
    element % 3 == 0
  end
end)