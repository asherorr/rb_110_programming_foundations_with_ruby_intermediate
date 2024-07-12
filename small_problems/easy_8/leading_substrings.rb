require 'pry'
#PEDAC

#Problem
#write a method that returns a list of all substrings of a string
#that start at the beginning of the original string
#the return value should be arranged in order from shortest to longest
#subtring

#Example/Test Case
# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

#Data Structure
#string object input
#array object of string objects as output

#Algorithm
#initialize var `arr` to []
#initialize var `str` to ""

#loop through each character in the arg
#increment str with the new letter
#add `str` to new_arr

#Code
def leading_substrings(arg)
  arr = []
  str = ""
  
  arg.each_char do |letter|
    str += letter
    arr << str
  end
  
  arr
  
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']