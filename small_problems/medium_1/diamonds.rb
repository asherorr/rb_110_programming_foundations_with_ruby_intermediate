#PEDAC

#Problem
#write a method that displays a 4-pointed diamond
#in an n x n grid
#where n is an odd integer that is supplied as an arg to the method
#you can assume that the argument will always be odd

#Examples/Test Case
# diamond(3)

# *
# ***
# *
 
# diamond(9)

#     *
#   ***
#   *****
# *******
# *********
# *******
#   *****
#   ***
#     *

#Data Structure
#Integer object input
#Intermediate: Array object that holds each diamond-line as an element
#Lines of "*" string objects as output

#Algorithm
#initialize var `diamonds` to []
#initialize var `counter` to 0
#initialize var `range` to 0..arg

#loop through each number in `range`
#create a string object titled `diamond_str` to ""
#for each number in the iteration, append `*` to diamond_str arg number of times
#append `diamond_str` to `diamonds`
#loop through `diamonds` and remove any elements where the size is not odd.


#put each ele in `diamonds` to the console
#initialize var `width` to arg / 2
#initialize var `spaces` to " "
#put spaces*width + diamond[0]
#subtract width by 1 and increment index by 1
#stop when width hits 0. This is first half

#for second half, initialize `index` to -2
#initialize `spaces` to " "
#initialize `width` to 1
#while index is greater than or equal to -diamonds.size (-5) 
  #puts spaces *width + diamonds[index]
  #increment width by 1
  #increment index by -1
  #put the width + index to the console

#Code
def diamond(arg)
  diamonds = []
  counter = 0
  range = 1..arg
  
  range.each do |num|
    diamond_str = ""
    if num.odd?
      diamond_str << ("*"*num)
    else
      next
    end
    diamonds << diamond_str
  end 
  
  width = arg / 2
  spaces = " "
  diamonds.each_with_index do |ele, index|
    puts spaces*width + diamonds[index]
    width -= 1
  end


  index = -2
  spaces = " "
  width = 1
  while index >= -diamonds.size
    puts spaces*width + diamonds[index]
    width += 1
    index -= 1
  end
end

diamond(9)
puts "--"
diamond(3)
puts "--"
diamond(1)