require 'pry'
#PEDAC

#Problem
#write a method that takes a floating point number
#that represents an angle between 0 and 360 degrees and returns
#a string that represents that angle in degrees, minutes, and seconds

#You should use a degree symbol (°) to represent degrees
#a single quote (') to represent minutes
#and a double quote (") to represent seconds. 
#A degree has 60 minutes, while a minute has 60 seconds.

#You can use the following constant to represent the degree symbol:
DEGREE = "\u00B0"

#Examples/Test Case
# All test cases should return true
# puts dms(30) == %(30°00'00")
# puts dms(76.73) == %(76°43'48")
# puts dms(254.6) == %(254°36'00")
# puts dms(93.034773) == %(93°02'05")
# puts dms(0) == %(0°00'00")
# puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

#You should use two digits numbers with leading zeros when formatting the minutes and seconds

#Data Structure
#integer object input
#string object output

#Algorithm

def dms(angle)
  # Ensure the angle is within the range 0 to 360
  angle = angle % 360

  # Extract degrees
  degrees = angle.to_i

  # Calculate minutes
  minutes_full = (angle - degrees) * 60
  minutes = minutes_full.to_i

  # Calculate seconds
  seconds = ((minutes_full - minutes) * 60).round

  # Format the result
  result = format("%d°%02d'%02d\"", degrees, minutes, seconds)

  puts result
end

dms(30) 
dms(76.73)
dms(254.6) 
dms(93.034773) 
dms(0) 
dms(360) 