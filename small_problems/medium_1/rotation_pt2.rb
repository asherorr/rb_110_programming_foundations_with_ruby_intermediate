#PEDAC

#Problem
#write a method that can rotate the last n digits of a number

#Note that rotating just 1 digit results in the original number being returned.
#You may use the rotate_array method from the previous exercise if you want. (Recommended!)
#You may assume that n is always a positive integer.

#Example/Test Case
#rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

#Data Structure
#integer object element as input (num, num_digits_to_rotate)
#integer object as output

#Algorithm
#rotate_array algorithn
#if arg2 is equal to 1, return arg1
#else
#isolate the last number to the end of the num specified (-arg2)
#turn those numbers into their own array
#append the first number to the end of the list
#then delete that first num
#return the array

#rotate_rightmost_digits algorithm
#if arg2 is 1, return the arg
#else
#invoke rotate_array to get the elements to append at the end
#turn arg1 into an Array of string object elements
#delete the arg2 number of elements starting from the last element
#append the var holding rotate_array to the end
#turn each object in the array to an integer and join
#return the integer object

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
  
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917