require 'pry'
#PEDAC

#Problem
#create a tip calculator
#the program should prompt for a bill amount and tip rate
#compute the tip and display the tip and total amount of bill

#Example/Test Case
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

#Data Structure
#string and integer objects

#Algorithm
#prompt for bill and store in var `bill` 
#prompt for percentage and store in var `bill
#convert inputs to integer
#convert tip input to a decimal form (divide by 100)
#multiply bill by percentage of tip to calculate tip
#output the tip and total bill

#Code
def tip
  puts "What is the bill?"
  bill = gets.chomp.to_i
  puts "What is the tip percentage?"
  tip = gets.chomp.to_i/100.0
  
  tip = tip * bill
  
  total = tip + bill
  
  puts "The tip is $#{tip}"
  puts "The total is $#{total}"
end

tip