#PEDAC

#Problem
#write a program that will ask a user for an input
#of a word or multiple words
#and give back the number of characters
#spaces should not be counted as a character.

#Example/Test Case
# Please write word or multiple words: walk
# There are 4 characters in "walk".
# --
# Please write word or multiple words: walk, don't run
# There are 13 characters in "walk, don't run".

#Data Structure
#string objects

#Algorithm
#convert the string object to an array.
#remove the space object elements from the array
#return the number of elements in the string object and store in var `num`
#convert back to string
#put the number of characters

#code
def num_chars
  puts "Please write word or multiple words: "
  answer = gets.chomp
  
  arr = answer.split("")
  arr.delete(" ")
  num_chars = arr.size
  
  puts "There are #{num_chars} characters in #{answer}."
end

num_chars

#second solution
# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."