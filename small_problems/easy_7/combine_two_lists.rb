#PEDAC

#Problem
#write a method that combines two Arrays passed in as arguments
#and returns a new Array that contains all elements
#from both Array arguments, with the elements taken in alternation

#you may assume that both input Arrays are non-empty
#and that they have the same number of elements

#Example/Test Case
#interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#Data Structure
#argument 1: Array object of integer elements
#argument 2: Array object of string elements

#Algorithm
#initialize final_arr
#initialize counter to 0
#initialize size to 0
#get size of arr1
#get size of arr2
#update size

#add the 0th index in arg1 to final_arr
#add the 0th index in arg2 to final_arr

#stop when the size is equivalent to the size of final_arr

#Code
def interleave(arg1, arg2)
  final_arr = []
  index = 0
  size = arg1.size + arg2.size
  
  while final_arr.length != size
    final_arr << arg1[index]
    final_arr << arg2[index]
    index += 1
    break if final_arr.length == size
  end
  
  final_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']