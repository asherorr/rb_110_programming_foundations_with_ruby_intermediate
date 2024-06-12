# def is_odd(int_arg)
#   int_arg.odd?
# end

# p is_odd(3)
# p is_odd(4)

#solution without odd or even

def is_odd?(int_arg)
  if int_arg % 2 == 0
    false
  else
    true
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

#PEDAC
#problem: write a method that takes one integer argument, which may be positive, negative, or zero. 
#this method returns true if the number's absolute value is odd,
#don't use #odd? or #even?

#Example/Test Case
#puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

#Data Structure
#Integers

#Algorithm
#determine if algorithm is an integer multiple of 2
#if yes, return false.
#if no, return true.

#Code

