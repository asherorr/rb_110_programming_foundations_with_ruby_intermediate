#PEDAC

#Problem
#write a method that takes one argument, a positive integer, and returns a list
#of the digits in the number

#Examples
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

#Data Structure
#integer object input
#Array object output of integer object elements

#Algorithm
#convert the integer to a string
#loop through each element in the string
#add the letter converted to_i to an Array
#return the array

#Code
def digit_list(arg)
  new_arg = arg.to_s
  result = []
  
  new_arg.each_char do |letter|
    result << letter.to_i
  end
  
  result
end

#second solution
# def digit_list(arg)
#   arg.to_s.chars.map(&:to_i)
# end

p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
p digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) == [4, 4, 4]             # => true