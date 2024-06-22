#PEDAC

#Problem
#the time of day can be represented as the number of minutes
#before or after midnight. 
#if the number of minutes is positive, the time is after midnight
#if the number of minutes ie negative, the time is before midnight.

#write a method that takes a time using this minute-based format
#and returns the time of day in 24-hour format (hh:mm)

#you may not use Ruby's Date and Time classes.

#Example/Test Case
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

#Data Structure
#integer object input, string object output

#Algorithm
#initialize var `hour`
#initialize var `minute`
#initialize var `result` to "00:00"

#if arg > 1440 divide hour by 24
#arg calls divmod method with 60 passed in. returns hour, minute.
#store hour in `hour` and minute in `minute
#initialize var `result` with `hour` and `minute` interpolated
#return result

#if arg is less than -1440 (more than 1 full day backwards)
#1440 minutes is a 24-hour period
#calculate equivalent positive minutes using modulo
#add 1440 to result until we get positive num within range of 0 to 1439
#convert that number to hours and minutes

def time_of_day(arg)
  if arg < -1440
    remainder = arg % 1440
    hour, minute = remainder.divmod(60)
    hour = "0#{hour}" if hour < 10
    minute = "0#{minute}" if minute < 10
    result = "#{hour}:#{minute}"
    
  elsif arg < 0
    hour, minute = arg.divmod(60)
    hour = 24 + hour
    hour = "0#{hour}" if hour < 10
    minute = "0#{minute}" if minute < 10
    result = "#{hour}:#{minute}"
    
  elsif arg > 1440
    hour, minute = arg.divmod(60)
    hour = hour / 24
    hour = "0#{hour}" if hour < 10
    minute = "0#{minute}" if minute < 10
    result = "#{hour}:#{minute}"
    
  else
    hour, minute = arg.divmod(60)
    hour = "0#{hour}" if hour < 10
    minute = "0#{minute}" if minute < 10
    result = "#{hour}:#{minute}"
  end
  
  result
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"