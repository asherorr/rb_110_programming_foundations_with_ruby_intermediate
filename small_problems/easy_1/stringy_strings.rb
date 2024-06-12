#PEDAC

#Problem
#write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1.
#the length of the string should match the given integer.
#input: integer object
#output: string object

#Example/Test Case
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

#Data Structure
#Integers as inputs, strings as output.

#Algorithm
#find the length of the integer object (a sequence/range)
#loop through each number in the sequence
#if the number is even, put a "1"
#if the number is odd, put a "0"
#join this string together, removing the spaces.

#Code
def stringy(num)
  str_obj = ""
  for number in (0..num - 1)
    if number.even?
      str_obj << "1"
    else
      str_obj << "0"
    end
  end
  
  str_obj
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'