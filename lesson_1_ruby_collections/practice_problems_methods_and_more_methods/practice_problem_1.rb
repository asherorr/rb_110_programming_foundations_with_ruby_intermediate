#What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

#[1, 2, 3]
#This is because the return value of the block is always truthy.
#Thus, the select method will select each integer element in the array.
#It will then return a new array containing all the elements in the original array.