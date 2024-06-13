#PEDAC

#Problem
#Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. 

#Example/Test Case
# triangle(5)
#     *
#   **
#   ***
# ****
# *****

# triangle(9)
#         *
#       **
#       ***
#     ****
#     *****
#   ******
#   *******
# ********
# *********

#Data Structure
#Integers converted into string objects.

#Algorithm
#loop through each integer (1-n)
#establish a space counter, which is set to num - 1
#establish a star counter, which is set to 1
#puts the counter of spaces, then add the star

#Code
def triangle(num)
  space_counter = num -1 
  star_counter = 1
  iterations = 0
  result = ""
  
  num.times do
    if iterations == 0
      result += " "*space_counter + "*"*star_counter
      space_counter -= 1
      star_counter += 1
      iterations += 1
    else
      result += "\n" + " "*space_counter + "*"*star_counter
      space_counter -= 1
      star_counter += 1
      iterations += 1
    end
  end
  
  puts result
end 

triangle(5)
triangle(9)
