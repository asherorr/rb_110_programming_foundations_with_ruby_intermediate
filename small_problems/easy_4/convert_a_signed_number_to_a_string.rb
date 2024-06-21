#PEDAC

#Problem
#convert a signed number to a string
#do not use any standard conversion methods in Ruby

#Example/Test Case
# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'

#Data Structure
#hash object for storing conversion data
#integer object inputs
#string object outputs

#Algorithm
#initialize var `is_negative` to false
#check if number is negative (less than 0)
#if yes, set `is_negative` to true and initialize var `new_num`

#store absolute value in new_num
#invoke #integer_to_string method on new_num
#add a "-" to the return value of #integer_to_string

#if not negative, simply invoke #integer_to_string_method on arg

#then call the integer_to_string 

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

def signed_integer_to_string(int)
  if int < 0
    new_num = int.abs
    result = integer_to_string(new_num)
    "-" << result
  else
    result = integer_to_string(int)
  end
end
    
  

p signed_integer_to_string(4321) == '4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'