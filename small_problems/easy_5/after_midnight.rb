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
# def time_of_day(arg)
#   if arg < -1440
#     # Calculate the equivalent positive minutes using modulo
#     remainder = arg % 1440
#     # Convert `remainder` to hours and minutes
#     hour, minute = remainder.divmod(60)
#     # Format hours and minutes to ensure two digits
#     hour = "0#{hour}" if hour < 10
#     minute = "0#{minute}" if minute < 10
#     # Construct the result string
#     result = "#{hour}:#{minute}"
    
#   elsif arg < 0
#     # Adjust to positive equivalent within a day by adding 1440
#     arg += 1440
#     # Convert to hours and minutes
#     hour, minute = arg.divmod(60)
#     # Adjust the hour for the 24-hour format
#     hour = 24 + hour
#     # Format hours and minutes to ensure two digits
#     hour = "0#{hour}" if hour < 10
#     minute = "0#{minute}" if minute < 10
#     # Construct the result string
#     result = "#{hour}:#{minute}"
    
#   elsif arg > 1440
#     # Calculate the equivalent positive minutes using modulo
#     arg = arg % 1440
#     # Convert to hours and minutes
#     hour, minute = arg.divmod(60)
#     # Format hours and minutes to ensure two digits
#     hour = "0#{hour}" if hour < 10
#     minute = "0#{minute}" if minute < 10
#     # Construct the result string
#     result = "#{hour}:#{minute}"
    
#   else
#     # Convert to hours and minutes
#     hour, minute = arg.divmod(60)
#     # Format hours and minutes to ensure two digits
#     hour = "0#{hour}" if hour < 10
#     minute = "0#{minute}" if minute < 10
#     # Construct the result string
#     result = "#{hour}:#{minute}"
#   end
  
#   result
# end

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