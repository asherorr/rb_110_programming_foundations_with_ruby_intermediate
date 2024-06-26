#PEDAC

#Problem
#write a method that takes a string with one or more space separated words
#and returns a hash that shows the number of words of different sizes
#words consist of any string of characters that do not include a space.

#Example/Test Case
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

#Data Structure
#string object input
#hash object output

#Algorithm
#split the string object by spaces
#get the size of each object in the array and store in var `sizes`
#determine the number of times each size shows up in the array
#initialize a hash object `hsh` and make the key the size, and the val..
#.. the number of times it shows up in the array
#return the hash object

#Code
def word_sizes(str_obj)
  split_string = str_obj.split
  sizes = split_string.map do |element|
    element.size
  end
  
  hsh = {}
  num_times = sizes.map do |element|
    hsh[element] = sizes.count(element)
    
  end
  hsh
end
  
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
