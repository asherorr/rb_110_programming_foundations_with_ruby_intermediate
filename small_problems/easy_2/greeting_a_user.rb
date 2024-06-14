#PEDAC

#Problem
#write a program that will ask for a user's name.
#the program will then greet the user
#If the user writes "{name}!" then the computer yells back to the user.

#Example/Test Case
# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

#Data Structure
#string objects

#Algorithm
#write frame for greeting user 
#prompt for name and store in var 'name`'
#split the string into an array
#if the last element in the array is "!" pop that element and return a joined string
#else put the alternative prompt

#Code
# def greeting
#   puts "What is your name?"
#   name = gets.chomp
  
  
#   if name[-1] == "!"
#     arr = name.split("")
#     arr.pop
#     name_without_exclamation = arr.join
#     puts "HELLO #{name_without_exclamation.upcase}. WHY ARE WE SCREAMING?"
#   else
#     puts "Hello #{name}."
#   end
# end

# greeting

#second solution
def greeting_2
  print 'What is your name? '
  name = gets.chomp
  
  if name[-1] == '!'
    name = name.chop
    puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
  end
end

