#PEDAC

#Problem: write a method named `xor` that takes two arguments
#and returns true if exactly one of its arguments is truthy
#false if otherwise. Note that we are looking for a boolean result

#Example/Test Case
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

#Data Structure
#integer objects w/ even? or odd? called, so Booleans.

#Algorithm
#check if arg1 is truthy and arg2 is falsy
#or check if arg1 is falsy && arg2 is truthy

#Code
def xor?(arg1, arg2)
  (arg1 && !arg2) || (!arg1 && arg2)
end


p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false