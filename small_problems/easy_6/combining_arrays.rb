#PEDAC

#Problem
#write a method that takes two arrays as arguments
#and returns an Array that contains all of the values
#from the argument Arrays. There should be no duplication
#of values in the returned Array, even if there are duplicates
#in the original Arrays.

#Example/Test Case
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#Data Structure
#two array objects as input
#one array object as outpit

#Algorithm
#merge arg1 with arg3
#remove the duplictes
  #

#Code
def merge(arg1, arg2)
  new_arr = arg1 + arg2
  new_arr.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]