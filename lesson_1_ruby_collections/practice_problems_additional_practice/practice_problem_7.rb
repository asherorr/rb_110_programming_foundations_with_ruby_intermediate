#Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

#Problem
#create a hash that exppresses the frequency with which each letter occurs in the string
#input: string object
#output: hash object (key is the letter, value is the number of times it appears in the string)

#Example/Test Case
# "Freect" -> { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

#Data Structure
#String object, but operation returns a hash object.

#Algorithm
#initialize an empty hash object
#loop through each character in statement
#determine how many times the character is in the object
#create a new key:value pair for the hash. The key is the character, the value is the number.
#return the hash.

#Code

def num_times_letter_occurs(str_obj)
  hash_obj = {}
  
  str_obj.each_char do |letter|
    num_times = str_obj.count(letter)
    hash_obj[letter] = num_times
  end 
  
  hash_obj
end

p num_times_letter_occurs(statement)
