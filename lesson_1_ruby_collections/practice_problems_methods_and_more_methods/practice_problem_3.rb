#What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

#reject returns a new array whose elements are all those from self...
#... from which the block returns false or nil.
#since the puts method always returns nil, all the elements are selected.