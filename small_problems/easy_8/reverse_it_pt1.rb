#PEDAC

#Problem
#write a method that takes one argument, a string
#and returns a new string with the words in reverse order

#Example/Test Case
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

#Data Structure
#String object input
#String object output

#Algorithm
#convert arg to an array split by space
#reverse the array
#convert the array to a string and return that object

#Code
def reverse_sentence(arg)
  reversed_arg = arg.split(" ").reverse!
  reversed_arg.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''