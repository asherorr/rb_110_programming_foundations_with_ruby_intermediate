#PEDAC

#Problem
#write a method that takes a year as input
#and returns the century.
#the return value should be a string that begins with
#the century number and ends with `st`, `nd`, `rd`, or `th`
#as appropriate for that number.

#Example/Test Case
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

#Data Structure
#integer objects

#Algorithm
#create a hash with keys representing the cenury, and values representing the year (as a range)
#if the arg is in the range representing the years (in the hash), return the key.

#Code

require 'active_support/core_ext/integer/inflections'

def century(arg)
  int = ((arg - 1) / 100 + 1).floor
  int.ordinalize
end 

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'