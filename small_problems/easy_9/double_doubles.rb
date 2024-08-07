#PEDAC

#Problem
#a double number is a number with an even number of digits
#whose left-side digits are exactly the same as its right-side
#digits. For example, 44, 3333, 103103, 7676, are doubles
#444, 334433, and 107 are not.

#write a method that returns 2 times the number provided as an
#argument, unless the argument is a double number; double numbers
#should be returned as-is.

#Examples/Test Case
# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

#Data Structure
#integer object as input
#integer object returned

#Algorithn
#check if the number is a double_number
#get the number of digits in the num (convert to_s and call length
#if the number is not evenly divisible by 2, double the number
#if the number of digits is evenly disivble by 2
#initialize first_half to the arg[0..size/2 - 1] (slice it)
#rest of arg is now second half
#see if they are exactly equal
#if they are, return the number
#if not, recombine the two args and multiply by 2.

#code
def twice(arg)
  num_digits = arg.to_s.length
  if num_digits % 2 != 0
    arg * 2
  else
    first_half = arg.to_s.chars.values_at(0..(num_digits/2)-1)
    second_half = arg.to_s.chars.values_at((num_digits/2)..-1)
    if first_half == second_half
      return arg 
    else
    return arg * 2
    end
  end 
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10