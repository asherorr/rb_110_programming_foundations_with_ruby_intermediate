require 'pry'
#PEDAC

#Problem
#create a method that takes two integers as arguments
#the first argument is a count, and the second is the first
#number of a sequence that your method will create

#The method should return an Array that contains the same
#number of elements as the count argument, while
#the values of each element will be multiples of the starting
#number

#Example/Test Case
# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []

#Data Structure
#Two integer objects as input
#one Array object as output

#Algorithm
#initialize var final_arr to []
#initialize object rnge to 1..infinity (1..Float::INFINITY)

#until the size of final_arr is equal to count, do this:
#loop through each element in the rnge
#check if it's evenly divisible (a multiple) of starting_num
#if yes, add it to the final_arr
#if not, then go on to the next sequence
#return final_arr

#Code
def sequence(count, starting_num)
  final_arr = []
  num = starting_num
  
  until final_arr.size == count
      if starting_num == 0
        final_arr << 0
      elsif num % starting_num == 0
        final_arr << num
      end
      num += 1 if starting_num > 0
      num -= 1 if starting_num < 0
  end
  
  final_arr
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []