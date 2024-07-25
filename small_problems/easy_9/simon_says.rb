#PEDAC

#Problem
#create a method that takes in two arrays
#and returns true if the second array
#follows the first array by one element, and false otherwise
#in other words, determine if the second array is the first
#array shifted to the right by 1.

#both input arrays will be the same length, and will have a min length of 2
#The values of the 0-indexed element in the second list and the n-1th indexed element in the first list don't matter

#Example/TestCase

# simon_says([1, 2], [5, 1]) ➞ true
# simon_says([1, 2], [5, 5]) ➞ false
# simon_says([1, 2, 3, 4, 5], [0, 1, 2, 3, 4]) ➞ true
# simon_says([1, 2, 3, 4, 5], [5, 5, 1, 2, 3]) ➞ false

#Data Structure
#two array object of integer object elements as input
#boolean object as output

#Algorithm
#do not modify arg1
#loop through the elements after index 0 in second arg
#if the val at the 1 index of arg2 is same as val at 0 index of arg1
#check if the next element in arg1 and arg2 are the same
#you reach the end of arg2
#if they are, then return true. Otherwise, return false.

#Code
def simon_says(arg1, arg2)
  first_index = 0
  second_index = 1
  counter = 0
 
  if arg1[first_index] == arg2[second_index]
    while second_index != arg2.size
      result = arg1[first_index] <=> arg2[second_index]
      first_index += 1
      second_index += 1
      counter += 1 if result == 0
    end
  end
 
  if counter == arg2.size - 1
    return true
  else
    return false
  end
end

p simon_says([1, 2], [5, 1])
p simon_says([1, 2], [5, 5])
p simon_says([1, 2, 3, 4, 5], [0, 1, 2, 3, 4])
p simon_says([1, 2, 3, 4, 5], [5, 5, 1, 2, 3])