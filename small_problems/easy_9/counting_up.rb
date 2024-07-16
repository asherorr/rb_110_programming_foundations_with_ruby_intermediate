#PEDAC

#Problem
#write a method that takes an integer argument
#and returns an Array of all integers, in sequence, 
#between 1 and the argument

#Example/Test Case
#you may assume that the argument will always be a valid integer
#that is greater than 0.

#Data Structure
#Integer object input
#Array object output

#Algorithm
#initialize var final_arr to []
#initialize var rnge to 1..arg

#loop through each element in rnge
#add to final_arr

#return final_arr

#Code
def sequence(arg)
  final_arr = []
  rnge = 1..arg
  
  rnge.each {|num| final_arr << num}
  
  final_arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]