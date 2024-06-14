#PEDAC

#Problem
#build a program that displays when the user will retire
#and how many years she has to work till retirement

#Example/Test case
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

#Data Structure
#string and integer objects

#Algorithm
#prompt for age and covert to i, store in var `age`
#prompt for age to retire and convert to i, store in var `retirement_age`
#store year (2024) in var `year`
#add `retirement_age` to `year` and store in var `retirement_year`
#subtract `age` from `retirement_age` and store in var `years_of_work_left`

#Code
def retirement_calculator
  puts "What is your age?"
  age = gets.chomp.to_i
  puts "At what age would you like to retire?"
  retirement_age = gets.chomp.to_i
  
  year = Time.now.year
  retirement_year = retirement_age + year
  years_of_work_left = retirement_age - age
  
  puts "It's #{year}. You will retire in #{retirement_year}."
  puts "You only have #{years_of_work_left} years of work to go!"
end

retirement_calculator