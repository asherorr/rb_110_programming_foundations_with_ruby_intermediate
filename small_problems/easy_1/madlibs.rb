#PEDAC

#Problem
#create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

#Example/Test Case
# #Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

#Data Structure
#string objects

#Algorithm
#get noun
#get verb
#get adjective
#get adverb
#make sentence frame with the variables inserted

#Code
def madlibs
  puts "Enter a noun: "
  noun = gets.chomp
  puts "Enter a verb: "
  verb = gets.chomp
  puts "Enter an adjective: "
  adjective = gets.chomp
  puts "Enter an adverb: "
  adverb = gets.chomp
  
  frame = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
  puts frame
end

madlibs