#Write code that changes the array below so that all of the names are shortened to just the first three characters. 
#Do not create a new array.


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#Problem
#shorten all the names to just the first three characters.
#do not create a new array
#input: array object
#output: array object

#Example/Test Case
#flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#flintstones = %w(Fre Bar Wil Bet Bam Peb)

#Data Structure
#array object of string object elements

#Algorithm
#loop through each name in the Flintstones array
#delete the characters past the third character
#return the array

#Code

#first solution
# for name in flintstones
#   name.slice!(3..)
# end


#second solution
#flintstones.map! { |name| name[0,3] }
