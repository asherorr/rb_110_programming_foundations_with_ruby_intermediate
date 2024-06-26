#PEDAC

#Problem
#given a string of words separated by spaces, write a method
#that takes this string of words and returns a string in which
#the first and last letters of every word are swapped

#You may assume that every word contains at least one letter
#and that the string will always contain at least one word
#you may also assume that each string contains nothing
#but words and spaces

#Example/Test Case
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

#Data Structure
#string object input to string object output

#Algorithm
#split the string into array object elements divided by spaces
#loop through each element in the array
#convert the element into an array of characters
#swap the first and last characters if the string is greater than 1
#convert the element back into a string
#reverse the element
#return a string with the reversed elements

#Code
def swap(str_obj)
  new_obj = str_obj.split(" ")
  new_obj.map do |ele|
    ele[0], ele[-1] = ele[-1], ele[0]
  end
  new_obj.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'