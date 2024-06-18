#PEDAC

#Problem
#write a method that takes two strings as arguments
#determines the longest of the two strings
#and then returns the result of concatenating
#the shorter string, the longer string, and the shorter string
#once again. You may assume that all the strings are different lengths.

#Example/Test Case
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

#Data Structure
#string objects

#Algorithm
#get size of arg 1
#get size of arg 2
#if th size of arg 1 is greater than arg 2
#concat arg_2  + arg_1 + arg_2
#else concat arg_1 + arg_2 + arg1

#Code
def short_long_short(arg1, arg2)
  if arg1.size > arg2.size
    arg2 + arg1 + arg2
  else
    arg1 + arg2 + arg1
  end
  
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"