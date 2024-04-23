
#What happens when we modify an array while we are iterating over it? 
#What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

#The each method allows the array to be modified while we're iterating over it.
#When a positive integer argument n is given for the shift method, it...
#... removes the first n elements. It then returns those elements in a new array.

#The array is changed as this loop iterates.
#In the first iteration, number is 1.
#The first element in the array, 1, is shifted (removed.)

#On the next iteration of the array, the each method is iterating over the array [2, 3, 4]
#The counter for the each method is set to 2, as in, it iterates over the second element in the array.
#This is now the Integer object 3, which is why the p method invoked with numbers passed as an argument...
#... the number 3 is output. 

#4 is not output because the first element, 2, is shifted/removed on the second iteration.
#The numbers array is [3, 4] on the second iteration. 
#There is no third element, so the loop exits. 