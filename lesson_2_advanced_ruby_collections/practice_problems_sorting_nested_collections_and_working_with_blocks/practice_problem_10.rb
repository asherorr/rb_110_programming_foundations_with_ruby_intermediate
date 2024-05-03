#Given the following data structure and without modifying the original array...
#... use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

#Problem
#input: Array object of hash object elements
#output: Array object of hash object elements, with value incremented by 1.

#Example/Test Case
#[{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]

#Data Structure
#array object of hash object elements

#Algorithm
#arr calls map method and passes in block with hash_obj as argument
#loop through each hash_object and increment the value by 1.

#Code
p (arr.map do |hash_obj|
  hash_obj.each_pair { |key, value| hash_obj[key] += 1 }
end)

