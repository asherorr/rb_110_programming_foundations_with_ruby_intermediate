#What is the block's return value in the following code? How is it determined? 
#Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

#The block's return value is true on the first and third iterations, then false on the second iteration.
#It's because the block returns the return value of the last expression in it, which is num.odd?
#The return value of any is true if any element of self meets the criteria indicated in the block.
#Because num.odd? evaluates to true on the first iteration, the method will return true.

