require 'pry'
#PEDAC

#Problem
#If you take a number like 735291, and rotate it to the left, you get 325917
#If you now keep the first digit fixed in place, and rotate the remaining digits
#you get 329175.
#keep the first 2 digits fixed in place and rotate again to 321759.
#keep the first 3 digits fixed in place and rotate again to get 321597.
#finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579.
#the resulting number is called the maximum rotation of the original number

#write a method that takes an integer as an argument, and returns the maximum rotation
#of that argument.
#you can use the rotate_right_most_digits method from the previous exercise.

#note that you don't have to handle multiple 0s.

#Example/Test Case
# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845

#Data Structure
#integer object as input

#Algorithm
#invoke rotate_right_most digits on arg with arg2 set to length of arg
#turn the number into an array of string object element & store in `num_to_max_rotate`
#initialize var final_arr to []

#isolate the first num and rotate the remaining digits
  #append the num at the 0th index element to final_arr
  #delete the num from the arg
  #rotate the remaining digits
    #invoke rotate_rightmost_digits with num_to_max_rotate passed in and length of arg as arg2
  #repeat process until the nums isolated is greater than the length of the arg
  
#return the final_arr

#Code
def rotate_array(arg, num_times_to_rotate)
  if num_times_to_rotate == 1
    return arg.to_s.chars
  else
    nums_to_flip = arg.dup.to_s.chars
    nums_to_flip = nums_to_flip.slice(-num_times_to_rotate, num_times_to_rotate)
    nums_to_flip.append(nums_to_flip[0])
    nums_to_flip.delete_at(0)
    
    flipped_nums = nums_to_flip
  end
  
  flipped_nums
end


def rotate_rightmost_digits(arg1, arg2)
  if arg2 == 1
    return arg1
  else
    nums_to_append = rotate_array(arg1, arg2)
    array_without_flipped_nums = arg1.dup.to_s.chars
    array_without_flipped_nums.slice!(-arg2, arg2)
    
    array_with_flipped_nums = array_without_flipped_nums << nums_to_append
    array_with_flipped_nums.flatten!
    array_with_flipped_nums.map! {|ele| ele.to_i}
    array_with_flipped_nums.join("").to_i
  end
end
  
def max_rotation(arg)
  num_to_max_rotate = rotate_rightmost_digits(arg, arg.to_s.length)
  num_to_max_rotate = num_to_max_rotate.to_s.chars
  final_arr = []
  
  while final_arr.size <= arg.to_s.length
    final_arr << num_to_max_rotate[0]
    num_to_max_rotate.delete_at(0)
    num_to_max_rotate = num_to_max_rotate.join("").to_i
    num_to_max_rotate = rotate_rightmost_digits(num_to_max_rotate, num_to_max_rotate.to_s.length)
    num_to_max_rotate = num_to_max_rotate.to_s.chars
    break if final_arr.size >= arg.to_s.length
  end
  
  p final_arr.join("").to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845