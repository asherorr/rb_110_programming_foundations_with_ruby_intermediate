#PEDAC

#Problem
#write a method that searches for all multiples of 3 or 5
#that lie btween 1 and some other number
#and then computes the sum of those multiples.

#for instance, if the supplied number is 20, the result should be 98
#(3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

#you may assume that the number passed in is an integer greater than 1

#Examples/Test Case
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

#Data Structure
#integer objects

#Algorithm
#initialize object `nums` set to the range of 1..arg
#loop through `nums` and select all elements that are multiples of 3 or 5
#sum the array returned by the select method

#Code
def multisum(arg)
  nums = 1..arg
  result = 0
  
  nums.each do |number|
    if number % 3 == 0 || number % 5 == 0
    result += number
    end
  end
  
  result
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168