require 'pry'
#PEDAC

#Problem
#write a method that returns a list of all substrings of a string
#the returned list should be ordered by where in the str the substring begins
#this means that all substrings that start at position 0 should
#come first, then all substrings that start at position 1, and so on.
#since multiple substrings will occur at each position, the substrings
#at a given position should be returned in order from shortest to longest

#You may (and should) use the leading_substrings method you wrote
#in the previous exercise.

#Example/Test Case
# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

#Data Structure
#string object input
#list of string objects as output

#Algorithm
#while size of arg is greater than 0
#invoke leading_substrings on arg
#delete the element at the 0th index of arg
#repeat

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

def substrings(arg)
  result = []
  
  while arg.length > 0
    result += leading_substrings(arg)
    arg.slice!(0)
    break if arg.length == 0
  end 

  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]