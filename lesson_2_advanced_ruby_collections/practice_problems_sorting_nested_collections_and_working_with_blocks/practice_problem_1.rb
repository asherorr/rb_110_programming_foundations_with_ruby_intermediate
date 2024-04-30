#How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

#P
#order this array of number strings by descending numeric value
#input: arr object
#output: array object

#Example/Test Case
# ['10', '11', '9', '7', '8'] -> ['11', '10', '9', '8', '7']

#Data Structure
#arrays

#Algorithm
#arr calls sort_by and passes in block with argument element
#element calls map method and convers to integer
#return value is sorted by sort_by

#Code
arr.sort_by do |element|
  -element.to_i
end

