#PEDAC

#Problem
#write a method that takes two arguments
#the first is the starting number, and the second is the ending number
#print out all numbers from the starting number to the ending number
#except if a number is divisible by 3, print "Fizz"
#if a number is divisible by 5, print "Buzz"
#if a number is divisible by 3 and 5, print "FizzBuzz"

#Example/Test Case
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

#Data Structure
#two integer objects as input
#string objects as output

#Algorithm
#initialize var final_arr to []
#initialize a var all_nums that's the range of 1..15
#loop through each element in all_nums
#if the element is divisible by 3 and 5, print "FizzBuzz"
#if the element is divisible by 5, print "Buzz"
#if the element is divisible by 3, print "Fizz"
#else simply print the number

#Code

def format(arg)
  arg + ", "
end

def fizzbuzz(arg1, arg2)
  final_str = ""
  all_nums = arg1..arg2
  
  all_nums.each do |num|
    if num % 3 == 0 && num % 5 == 0
      final_str += "Fizzbuzz"
    elsif num % 5 == 0
      final_str += "Buzz"
    elsif num % 3 == 0
      final_str += "Fizz"
    else
      final_str += num.to_s
    end
    final_str += ", " unless num == arg2
  end
  
  print final_str
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz