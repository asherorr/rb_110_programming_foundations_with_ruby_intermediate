#PEDAC

#Problem
#write a method that takes one argument
#a positive integer
#and returns the sum of its digits.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

#Examples/TestCase
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

#Data Structure
#Integer object input

#Algorithm
#convert the arg to s
#scan the array to get the digits in an Array form
#convert the elements (strings) in the Array to integers
#sum the array and return value of that expression

#Code
def sum(arg)
  formatted_arg = arg.to_s.scan(/\d/)
  formatted_arg.map! {|num| num.to_i}
  result = formatted_arg.sum
  p result
end

p sum(23) == 5
p sum(496) == 19
p sum(123_456_789) == 45
