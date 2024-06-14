#PEDAC

#Problem
#print all even numbers from 1 to 99, inclusive, to the console.
#with each number on a separate line

#Example/Test Case

#Data Structure
#integer

#Algorithm
#store a range of numbers from 1-99 in the var `num`
#loop through each num and select each number that's even
#puts each number in that array

#Code
def odd_numbers
  nums = 1..99
  arr = nums.select {|num| num.even?}
  puts arr
end

odd_numbers