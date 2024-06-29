require 'pry'
#PEDAC

#Problem
#write a method that calculates and returns the index of the first
#Fibonacci number that has the number of digits specified as an argument.
#The first Fibonacci number has index 1.

#Example/Test Case
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

#Data Structure
#input: integer object
#output: integer objects
#I will need to use an array, since I need the index.

#Algorithm
#set up array of fibonacci digits
#start with an array of [1, 1]
#if the index value is equal to 0, skip
#for the next element, add the last element to its successor
#add that result to the array

#check if the last element in the array has the number of digits
#as specified by the arg

#if yes, return the index value of that element
#if not, keep going.

#Code

def find_fibonacci_index_by_length(num)
  fib_digits = [1, 1]
  
  index_found = false
  
  until index_found
    fib_digits.each_with_index do |element, index|
      if index == 0
        next
      else
        previous_element = fib_digits[index - 1]
        new_num = element + previous_element
        fib_digits << new_num
        if new_num.to_s.length == num
          index_found = true
          break
        end
      end
    end 
  end
  last_num = fib_digits[-1]
  index = fib_digits.index(last_num) + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847