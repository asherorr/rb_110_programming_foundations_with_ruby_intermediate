#PEDAC

#Problem
#write a method thst takes a String of digits, and returns the appropriate
#number as an integer. You may not use String#to_i.

#Assume all characters will be numeric (no + or - signs or invalid characters)

#Examples/Test Case
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

#Data Structure
#string object

#Algorithm
#initialize hash object `DIGITS` with str as key and int as val
#initialize var `digits` to splitting the string..
#.. and calling map on the arr object. return the int val of str element..
#initialize variable `val` to Integer object 0
#call each on digits and set value to 10 * value + digit
#return value

#Code
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def convert_string(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

p convert_string('4321') == 4321
p convert_string('570') == 570