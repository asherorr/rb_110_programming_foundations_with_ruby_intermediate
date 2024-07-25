#PEDAC

#Problem
#write a method that rotates an array by moving
#the first element to the end of the array

#the original array should not be modified
#do not use method Array#rotate or Array#rotate! for your implementation.

#Example/Test Case
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

#Data Structure
#Array object of elements (Integer or String) as input
#array object of elements (Integer or String) as output

#Algorithm
#initialize var final_arr
#copy the arg to final_arr
#replace the last element with the first element
#replace the first element with the last element

#Code
def rotate_array(arg)
  final_arr = arg.dup
  
  final_arr.append(final_arr[0])
  final_arr.delete_at(0)
  p final_arr
end 

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true