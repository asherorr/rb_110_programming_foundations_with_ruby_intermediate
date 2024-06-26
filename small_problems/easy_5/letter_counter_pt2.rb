#PEDAC

#Problem
#modify the word_sizes method from the previous exercise to include non-letters
#when determining word size.
#for instance, the length of `it's` is 3, not 4.

#Example/Test Case
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

#Data Structure
#string object input to hash object output

#Algorithm
def word_sizes(str_obj)
  split_string = str_obj.scan(/[a-zA-Z']+|[^a-zA-Z']+/)
  split_string.each do |element|
    split_string.delete(element) if element.match(/[^a-zA-Z']/)
    element.each_char do |char|
      element.delete!(char) if char == "'"
    end
  end
  sizes = split_string.map do |element|
    element.size
  end
  
  hsh = {}
  num_times = sizes.map do |element|
    hsh[element] = sizes.count(element)
    
  end
  hsh
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}