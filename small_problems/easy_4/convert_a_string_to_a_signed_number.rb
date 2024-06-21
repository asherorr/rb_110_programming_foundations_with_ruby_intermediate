require 'pry'
#PEDAC

#Problem
#write a method that takes a String of digits, and returns the appropriate num
#as an integer
#The String may have a leading + or - sign
#if the first character is a +, the method should return a positive number
#if the leading char is -, you should return a negative number.
#if no sign is given, return a positive number

#Example/Test Case
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

#Data Structure
#integer

#Algorithm
#initialize DIGITS constant
#if the first character is a +, remove the sign
#perform operation as normal
#if the first character is a -, remove the sign
#convert value to a negative integer at the end
#if no sign, proceed normally.

#Code
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

# def string_to_signed_integer(string)
#   if string[0] == "+" || string[0] == "-"
#     updated_str = string.delete(string[0])

#     digits = updated_str.chars.map { |char| DIGITS[char] }
  
#     value = 0
#     digits.each { |digit| value = 10 * value + digit }
#   else
#     digits = string.chars.map { |char| DIGITS[char] }
  
#     value = 0
#     digits.each { |digit| value = 10 * value + digit }
#   end
  
#   if string[0] == "-"
#     -value
#   else
#     value
#   end
  
# end

#second solution
def string_to_signed_integer(string)
  case string[0]
  when "-" then -string_to_integer(string[1..-1])
  when "+" then string_to_integer(string[1..-1])
  else string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100