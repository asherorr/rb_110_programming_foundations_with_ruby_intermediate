#What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

#the Array#map method calls the block and returns a new array whose elements are...
#... the return values from the block.
# -> [1, nil, nil]