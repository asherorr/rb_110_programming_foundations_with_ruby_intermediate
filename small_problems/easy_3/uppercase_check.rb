#PEDAC

#Problem
#write a method that takes a string argument
#and returns true if all of the alphabetic chars
#inside the string are uppercase, and `false` otherwise.
#characters that are not alphabetic should be ignored.

#Example/Test Case
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

#Data Structure
#string objects

#Algorithm
#remove non-alphabetic characters from arg
#make a copy of the arg that's upcased
#compare it to the arg (with non-alphabetic chars removed)

#Code
def uppercase?(arg)
  arg_without_alnum = arg.gsub(/\p{^Alnum}/, '')
  arg_without_alnum_upcased = arg_without_alnum.upcase
  arg_without_alnum == arg_without_alnum_upcased
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

#second solution
# def uppercase?(arg)
#   arg == arg.upcase
# end