#PEDAC

#Problem
#write a method that takes a first name, a space, and a 
#last name passed as a single String argument
#and returns a string that contains the last name
#a comma, a space, and the first name

#Examples/Test Case
# swap_name('Joe Roberts') == 'Roberts, Joe'

#Data Structure
#string object as input
#string object as output

#Algorithm
#split the arg by space into an Array object
#call reverse method on Array object
#join the Array object elements together with ", " as separator

#Code
def swap_name(name)
  name.split(" ").reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'