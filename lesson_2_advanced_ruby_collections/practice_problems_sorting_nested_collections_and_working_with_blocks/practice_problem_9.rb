#Given this data structure, return a new array of the same structure..
#... but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

#Problem
#sort sub arrays in descending order
#input: nested array
#output: nested array

#Example/Test Case
#arr = [['c', 'b', 'a'], [3, 2, 1]]

#Data Structure
#nested array

#Algorithm
#call map on arr and pass a do/end block with sub_array as arg
#sort each sub_array by its elements
#sort the elements in descending order.

#Code
# p (arr.map do |sub_array|
#   if sub_array[0].is_a?(String)
#     sub_array.sort.reverse
#   else
#     sub_array.sort_by do |element|
#       -element
#   end
#   end
# end)

#second solution
p (arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end)