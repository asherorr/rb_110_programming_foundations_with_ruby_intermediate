#PEDAC

#Problem
#convert a number to a string
#do not use any standard conversion methods in Ruby

#Example/Test Case
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

#Data Structure
#hash object for storing conversion data
#integer object inputs
#string object outputs

#Algorithm
#initialize `DIGITS` var to hash object of key=>value pairs (int=> str)
#initialize method `integer_to_string`
#split integer object into individual numbers
#initialize var `result` to empty string
#loop through each integer object, get str value from DIGITS, and add that to `result`

#Code
DIGITS = {0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9"}

def integer_to_string(int)
  array_obj = int.digits.reverse
  result = ""
  
  array_obj.each do |num|
    result += DIGITS[num]
  end

  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'