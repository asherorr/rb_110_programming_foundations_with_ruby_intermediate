#PEDAC

#Problem
#write a method to determine leap years both before and after 1752

#Example/Test Case
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true

#Data Structure
#integers

#Algorithm
#set leap_year to false
#if year is less than 1752, run the julian calendar (evenly divisible by 4)
#else
  #check if year is evenly divisible by 4 and not evenly divisible by 100
  #if yes, set leap_year to true
  #if the year is evenly divisible by 100, then check if the year is evenly disibile by 400.
  #if yes, set leap_year to true

#Code
def leap_year?(arg)
  leap_year = false
  
  if arg < 1752
    leap_year = true if arg % 4 == 0
  else
    if arg % 4 == 0 && !(arg % 100 == 0)
      leap_year = true
    elsif arg % 100 == 0 && arg % 400 == 0
      leap_year = true
    end
  end
  
  leap_year
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true