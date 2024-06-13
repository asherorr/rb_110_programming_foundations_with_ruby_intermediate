#PEDAC

#Problem
#Build a program that randomly generates and prints Teddy's age. 
#To get the age, you should generate a random number between 20 and 200.

#Example/Test Case
#Teddy is 69 years old!

#Data Structure
#integers and string objects

#Algorithm
#generate a random number between 20 and 200, store in var `age`
#print a string with the age interpolated

#Code
def how_old_is_teddy
  age = rand(20..200)
  puts "Teddy is #{age} years old!"
end

how_old_is_teddy