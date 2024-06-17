#PEDAC

#Problem
#write a program that solicits 6 numbers from the user
#then prints a message that describes whether or not
#the 6th number appears amongst the first 5 numbers

#Examples/Test Case
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

#Data Structure
#Integers

#Algorithm
#Prompt user for nums and store in var `{1_num}`
#add integers to an Array object `arr`
#prompt user for last number and store in var `last_num`
#if `arr` includes the `last_num` then put that it does
#if not then print a different message

#Code
def searching
  arr = []
  
  puts "Enter the first number: "
  first_num = gets.chomp.to_i
  puts "Enter the second number: "
  second_num = gets.chomp.to_i
  puts "Enter the third number: "
  third_num = gets.chomp.to_i
  puts "Enter the fourth number: "
  fourth_num = gets.chomp.to_i
  puts "Enter the fifth number: "
  fifth_num = gets.chomp.to_i
  
  arr.append(first_num, second_num, third_num, fourth_num, fifth_num)
  
  puts "Enter the last number: "
  last_num = gets.chomp.to_i

  if arr.include?(last_num)
    puts "The number #{last_num} appears in #{arr}."
  else
    puts "The number #{last_num} does not appear in #{arr}."
  end
  
end

searching