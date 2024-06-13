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
#find the size of the string argument (number of characters)
#make the top or bottom the box "+", "-" (number determined by: size + 2), then "+"
#make a row: "|" + " " (number determined by: size + 2) + "|"
#make a row with a word: "|" + " " + str + " " + "|"
#print the top, the rows, and the bottom

#Code
def print_in_box(str)
  arg_size = str.length
  top_or_bottom = ("+" + ("-"*(arg_size + 2)) + "+").to_s
  row = "|" + (" "*(arg_size + 2)) + "|"
  row_with_word = "|" + " " + str + " " + "|"
  puts top_or_bottom
  puts row
  puts row_with_word
  puts row
  puts top_or_bottom
end

print_in_box("Asher")
print_in_box("To boldly go where no one has gone before.")
print_in_box("")