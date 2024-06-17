#PEDAC

#Problem
#write a program that prompts the user for two positive integers
#then print the results of the following ops on those nums:
#addition, subtraction, quotient, remainder, and power
#do not worry about validating the input.

#Example/Test Case
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

#Data Structure
#Integers

#Algorithm
#prompt for first num and store in var `first_num`
#prompt for second num and store in var `second_num`

#perform addition operation on nums and store in var `add`
#perform subtraction operation on nums and store in var `subtract`
#perform multiplication op on nums and store in var `multiply`
#perform division op on nums and store in var `divide`
#perform modulo op on nums and store in var `remainder`
#perform power op on nums and store in var `power`

#Code
def arithmetic
  puts "Enter the first number: "
  first_num = gets.chomp.to_i
  puts "Enter the second number: "
  second_num = gets.chomp.to_i
  
  add = first_num + second_num
  subtract = first_num - second_num
  multiply = second_num * first_num
  divide = first_num / second_num
  remainder = first_num % second_num
  power = first_num ** second_num
  
  puts "Addition = #{add}"
  puts "Subtraction = #{subtract}"
  puts "Multiplication = #{multiply}"
  puts "Division = #{divide}"
  puts "Remainder = #{remainder}"
  puts "Power = #{power}"
end

arithmetic