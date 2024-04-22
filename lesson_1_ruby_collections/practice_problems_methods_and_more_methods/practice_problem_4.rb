#What is the return value of each_with_object in the following code? Why?

p (['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end)

# {a: ant, b: bear, c: cat}

#on line 3, the Array object ['ant', 'bear', 'cat'] calls the each_with_object method.
#the each_object method takes a method argument, which is a collection object returned by the method.
#in this case, it is an empty hash.

#A do/end block is passed to the method as an argument. It takes two arguments.
#the first block argument (value) represents the current element
#the second block argument (hash) represents the original collection object passed as an argument to the method.

#on line 4, the collection object returned by the method assigns a key..
#... created by the return value of the expression value[0]...
#to a value, which is set simply to value (the current element.)