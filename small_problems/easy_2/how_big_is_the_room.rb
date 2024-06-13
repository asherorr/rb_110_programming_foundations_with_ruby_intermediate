#PEDAC

#Problem
#build a program that asks a user for the length and width of a room
#in meters and then displays the area of the room in both square meters and sqft

#Example/Test Case
#Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

#Data Structure
#string and integer objects

#Algorithm
#get length in meters
#get width in meters
#convert length to i
#convert width to i
#calculate square meters and square feet
#puts with these values interpolated 

#Code
def how_big_is_the_room
  puts "Enter the length of the room in meters: "
  length = gets.chomp.to_i
  puts "Enter the width of the room in meters: "
  width = gets.chomp.to_i
  
  square_meters = length * width
  square_feet = square_meters * 10.7639
  
  puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet.)."
end

how_big_is_the_room