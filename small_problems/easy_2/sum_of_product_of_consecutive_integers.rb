require 'pry'
#PEDAC

#Problem
#write a program that asks the user to enter an int greater than 0 
#then asks if the user the sum or product
#of all numers between 1 and the entered integer

#Example/Test Case
#>> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

#Data Structure
#strings and integers

#Algorithm
#prompt user to enter an integer greater than 0
#store response in var `int_obj` and convert to_i
#prompt user to enter s to compute or p
#store response in var `choice`

#initialize var `int_range` to range of 1..int_obj

#if `choice` == s
#invoke inject method on the range with + symbol
#if `choice` == p
#invoke inject method on the range with * symbol

def sum_or_product_of
  puts "Please enter an integer greater than 0:"
  int_obj = gets.chomp.to_i
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp
  
  int_range = 1..int_obj
  
  if choice == "s"
    int_range.inject(:+) 
  else
    int_range.inject(:*)
  end
end

sum_or_product_of