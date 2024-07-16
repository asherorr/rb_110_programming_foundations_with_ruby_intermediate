#PEDAC

#Problem
#write a method that determines the mean (average) of the three scores passed to it
#and returns the letter value associated with that grade.

#Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

#Example/Test Case
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"

#Data Structure
#three integer object elements as input
#string object as output

#Algorithm
#create a hash object `scores` that holds scores.
#add the three args together and divide by 3. Store in var `total`
#divide total by 3 to get the score
#pass in number to the grade_ranges hash to get the 

#Code

def get_grade(arg1, arg2, arg3)
  average = (arg1 + arg2 + arg3) / 3
  
  return "A" if (90..100).include?(average)
  return "B" if (80..90).include?(average)
  return "C" if (70..80).include?(average)
  return "D" if (60..70).include?(average)
  return "F" if (0..60).include?(average)
end
  
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"