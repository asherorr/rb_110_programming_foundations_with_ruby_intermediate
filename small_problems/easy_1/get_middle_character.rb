#PEDAC

#Problem
# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. 
#If the argument has an even length, you should return exactly two characters.

#Example/Test Case
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

#Data Structure
#string objects

#Algorithm
#find length of string
#divide length by 2 and store in var `middle`
#if the arg length is even return the element at the middle index - 1, and the following index
#if the arg length is odd return the element at the middle index -1

#Code
def center_of(str_obj)
  length = str_obj.length
  middle = length / 2
  
  if length.even?
    result = str_obj[middle-1] + str_obj[middle]
  else
    str_obj[middle]
  end
end

p center_of('I love ruby')
p center_of('Launch School') 
p center_of('Launch') 
p center_of('Launchschool') 
p center_of('x') 