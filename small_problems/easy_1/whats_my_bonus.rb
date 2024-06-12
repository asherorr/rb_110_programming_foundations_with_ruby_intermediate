#PEDAC

#Problem
#write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary.
#if the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.
#input: positive integer, boolean

#Example/Test Case:
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

#Data Structure
#inputs: positive integer and boolean
#output: integer

#Algorithm
#check the status of the boolean object
#if it's true, reassign num to return value of dividing the integer by 2
#if it's false, reassign num to 0
#return the num

#Code
def calculate_bonus(num, bool)
  if bool
    num = num / 2
  else
    num = 0
  end
  num
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

#other solution
# def calcuilate_bonus(salary, bonus)
#   bonus ? (salary / 2) : 0
# end