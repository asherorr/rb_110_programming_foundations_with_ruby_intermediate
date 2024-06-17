#PEDAC

#Problem
#write a method that takes a number as an argument.
#if the argument is a positive number, return the negative of that number
#if the number is 0 or negative, return the original number

#Example/Test Case
## All test cases should return true
# puts negative(5) == -5
# puts negative(-3) == -3
# puts negative(0) == 0      # There's no such thing as -0 in ruby

#Data Structure
#integers

#Algorithm
#check if the number is 0 or negative
#if yes, return the original number
#if not, return the negative of that number.

def negative(num)
  if num == 0 || num.negative?
    return num
  else
    num = num.to_s
    num = "-" + num
    num = num.to_i
  end
end

# All test cases should return true
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby