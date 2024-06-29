require 'pry'
#PEDAC

#Problem
#write a method that takes an Array as an argument, and reverses
#its elements in place; that is, mutate the Array passed into this
#method. The return value should be the same Array object.

#You may not use Array#reverse or Array#reverse!

#Examples/Test Case
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1] # true
# list == [4, 3, 2, 1] # true
# list.object_id == result.object_id # true

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"] # true
# list == ["c", "d", "e", "b", "a"] # true

# list = ['abc']
# reverse!(list) == ["abc"] # true
# list == ["abc"] # true

# list = []
# reverse!(list) == [] # true
# list == [] # true

#Data Structure
#input: array object
#output: array object

#Algorithm
#call map! on the array
#access each element in the array
#initialize `end` to -1
#initialize `start` to 0
#swap the elements at these two pointers
#move the start pointer one step forward and `end` one step backward
#repeat until the `start` pointer is no longer less than the `end` pointer

#Code
def reverse!(list)
  start = -list.length
  
  ending = -1
  while start < ending
    list[start], list[ending] = list[ending], list[start]
    start += 1
    ending -= 1
  end
  
  list
end

list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true
