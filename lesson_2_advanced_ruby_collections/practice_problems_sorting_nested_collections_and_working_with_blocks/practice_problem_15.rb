#Given this data structure write some code to return an array...\
#... which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

#Problem
#input: array object of hash object elements, where key is a symbol and value is an array of integer object elements
#output: array object which contains only the hashes where all the integers are even

#Example/Test Case
#return value: # => [{:e=>[8], :f=>[6, 10]}]

#Data Structure
#array of hash objects

#Algorithm
#arr calls select method and passes in hash_obj as argument
#for each element in hash_obj, if all numbers in the value are even, return true.

#Code
p (arr.select do |hash_obj|
    hash_obj.all? do |key, value|
      value.all? do |num|
        num.even?
      end
  end
end)