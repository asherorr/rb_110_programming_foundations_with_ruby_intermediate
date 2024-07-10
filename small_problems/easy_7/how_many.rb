#PEDAC

#Problem
#write a method that counts the number of occurences
#of each element in a given array

#the words in the array are case sensitive.
#SUV != 'suv'
#once counted, print each element alongside the number of occurences

#Examples/Test Case
# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)

#expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

#Data Structure
#array object of string object elements as input
#hash object puts as the output

#Algorithm
#initialize var `hsh` to {}
#loop through each element in arg
#count the number of occurences it exists in the array
#make a key:value pair in which key is element, value is num occurences
#puts the hash object

#Code
def how_many(arg)
  hsh = {}
  arg.each do |element|
    num_occurences = arg.count(element)
    hsh[element] = num_occurences
  end
  
  p hsh
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

how_many(vehicles)