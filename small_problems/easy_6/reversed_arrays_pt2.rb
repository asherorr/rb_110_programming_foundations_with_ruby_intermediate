require 'pry'
#PEDAC

#Problem
#write a method that takes an array, and returns a new Array
#with the elements of the original list in reverse order
#do not not modify the original list.

#You may not use Array#reverse or Array#reverse!
#nor may you use the method you wrote in the previous
#exercise.

#Example/Test Case
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true

#Data Structure
#Array object input
#Array object returned

#Algorithm
#initialize a new Array `arr`
#if the size of the array is less than or equal to one, add the input to the new_array
#if it's greater than one, access the last item in the array
#add that item to the new array
#update the counter to the next negative number
#when the counter is equal to the negative of the size of the array
#break
#return the new array

#Code
def reverse(arr)
  new_arr = []
  if arr.size <= 1
    new_arr << arr
    new_arr.flatten!
  else
    arr_size = arr.length
    starter = -1
    while starter != -arr_size - 1
      new_arr << arr[starter]
      starter -= 1
      break if starter == -arr.size - 1
    end
  end
  
  new_arr
end

p reverse([1,2,3,4])
p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
p p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true