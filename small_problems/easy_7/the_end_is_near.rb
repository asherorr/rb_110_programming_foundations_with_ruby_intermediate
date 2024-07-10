#PEDAC

#Problem
#write a method that returns 
#the next to last word in the String passed to it as an argument
#words are any sequence of non-blank characers
#you may assume that the input String will always contain at least two words

#Example/Test Case
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'

#Data Structure
#string object input
#string object output

#Algorithm
#split string by space
#get the size of the resulting array
#return the element at the -2 index of the array

#Code
def penultimate(arg)
  result = arg.split(" ")
  result[-2]
end 

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'