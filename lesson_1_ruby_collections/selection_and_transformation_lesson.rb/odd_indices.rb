my_numbers = [1, 4, 3, 7, 2, 6]

def double_odd_indices(array)
  counter = 0
  
  loop do
    array[counter] *= 2 if counter.odd?
    counter += 1
    break if counter == array.size
  end
  array
end

p double_odd_indices(my_numbers)
p my_numbers

#P
#Problem: given an array of integers, double the integers at odd indices in the array.
#Input: array of integers
#Output: array of integers

#Example/Test Case
#my_numbers = [1, 4, 3, 7, 2, 6]
#double_odd_indices(my_numbers) -> [1, 8, 3, 14, 2, 12]

#Data Structure
#We'll be using arrays

#Algorithm
#loop through indexes in array
#if the index is odd, then multiply the element at that index by 2
#return array