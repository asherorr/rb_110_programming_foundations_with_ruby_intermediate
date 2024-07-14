#PEDAC

#Problem
#create a method that takes 2 arguments
#an array and a hash
#the array will contain 2 or more elements that
#when combined with adjoining spaces, will produce a person's name.
#the hash will containt wo keys: :title and :occupation
#and the appropriate values

#Your method should return a greeting that uses the person's
#full name, and mentions the person's title and occupation

#Example/Test Case
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."

#Data Structure
#Array object and hash object input
#String object output

#Algorithm
#initialize var name
#loop through each element in arg1
#if the element is not the last element in the array
#add the element with a space 
#if the element is the last element, add it without a space

#interpolate the name into a final string with title and occupation

#Code
def greetings(arg1, arg2)
  "Hello, #{arg1.join(" ")}! Nice to have a #{arg2[:title]} #{arg2[:occupation]} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })