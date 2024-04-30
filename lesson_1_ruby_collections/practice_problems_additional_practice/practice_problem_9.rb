#Write your own version of the rails titleize implementation.

words = "the flintstones rock"

#Problem
#write my own version of the titleize implementation
#input: string object
#output: string object

#Example/Test Case
#words = "the flintstones rock" -> words = "The Flintstones Rock"

#Data Structure
#strings
#possibly arrays

#Algorithm
#separate the words into individual arrays
#uppercase the first index of each array
#convert the array back into a string

#Code

#first solution
# def titleize(str_obj)
#   split_obj = str_obj.split(' ')
  
#   for word in split_obj
#     word.capitalize!
#   end
  
#   split_obj.join(" ")
# end
    
# p titleize(words)

#second solution
words.split.map { |word| word.capitalize }.join(' ')