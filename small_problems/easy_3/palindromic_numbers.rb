#PEDAC

#Problem
#write a method that returns true if its integer is palindromic
#false if otherwise
#a palindromic number reads the same forwards and backwards.

#Example/Test Case
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

#Data Structure
#Integer input and string objects

#Algorithm
#convert arg to string
#reverse string
#convert string to_i
#check if the numbers are the same

#Code
def palindromic_number?(arg)
  arg_to_string = arg.to_s
  arg_reversed = arg_to_string.reverse
  reversed_arg_to_i = arg_reversed.to_i
  reversed_arg_to_i == arg
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true