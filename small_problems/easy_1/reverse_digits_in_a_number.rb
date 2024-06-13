#PEDAC

#Problem
#Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

#Example/Test Case
# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1

#Data Structure
#integers

#Algorithm
#transform the integer into an array
#initialize a new array `result`
#loop through each number in the arg, starting at the last element
#add the element to the array
#when done, convert the array to an integer 

#Code
def reversed_number(num)
  num = num.to_s.reverse!.to_i
  puts num
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1