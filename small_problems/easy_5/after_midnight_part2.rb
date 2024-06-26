#PEDAC

#Problem
#write 2 methods that each take a time of day in 24 hour format
#and then return the number of minutes before and after midnight
#respectively. both methods should return a value in the range 0..1439

#Example/Test Case
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

#Data Structure
#string object inputs
#integer object outputs

#Algorithm

#after midnight
#--
#split string object into sections
#calculate the number of minutes that have occured from the minute
  #get the two last elements in the split string
  #join them into a single str
  #convert str to int
  #store this val in a var `minutes`
#calculate the number of minutes that have occurred from the hour
  #get the first two elements in the split string
  #convert this number to an int
  #store this val in var `hour`
#sum these figures and return

#before midnight
#--
#split string object into sections
#calculate the number of minutes that have occured from the minutes
#calculate the number of minutes that have occured from the hour
#subtract these numbers and subtract from integer 1440

#Code
def after_midnight(str_obj)
  str_elements = str_obj.split("")
  minutes = str_elements[3, 2].join().to_i
  hours = str_elements[0, 2].join().to_i
  if hours == 24
    hours = 0
  else
    hours = hours * 60
  end
  overall_minutes = hours + minutes
end
  

def before_midnight(str_obj)
  str_elements = str_obj.split("")
  minutes = str_elements[3, 2].join().to_i
  hours = str_elements[0, 2].join().to_i
  if hours == 0 && minutes == 0
    0
  else
    hours = hours * 60
    overall_minutes = hours + minutes
    delta = 1440 - overall_minutes
  end
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0