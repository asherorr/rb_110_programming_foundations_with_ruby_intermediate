#PEDAC

#Problem
#write a method that will take a short line of text, and print it within a box.
#input: string object
#output: string object

#Example/Test Case
#print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

#Data Structure
#string objects

#Algorithm
#two methods: initialize_box and print_in_box

#initialize_box method
#find the size of the string argument (number of characters)
#make the top of the box "+", "-" (number determined by: size + 2), then "+"
#make second row a "|" + " " (number determined by: size + 2) + "|"
#make third row a "|" + " " (number determined by: size + 2) + "|"
#make the bottom of the box "+", "-" (number determined by: size + 2), then "+"

#on the third row of the box, one space after the first pipe, insert the string argument.

#Code
def print_in_box(str)
  arg_size = str.length
  top_and_bottom = ""
  top_and_bottom = "+" + ("-"*(arg_size + 2)) + "+"
  side = "|"
  result = "" 
  result = top_and_bottom +  + top_and_bottom
end

p print_in_box("Asher")