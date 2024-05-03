#Given the following data structure, and without using the Array#to_h method... 
#Write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

#Problem
#input: nested array object
#output: hash object

#Example/Test Case
#expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

#Data Structure
#nested array object to hash object

#Algorithm
#initialize an empty hash object
#invoke each on arr with nested_arr argument
#first element in nested_arr is key, second is value.
#add it to the empty hash object

#Code

new_hash = {}
arr.each do |nested_arr|
  key = nested_arr[0]
  value = nested_arr[1]
  new_hash[key] = value
end

p new_hash

#second solution
# hsh = {}
# arr.each do |item|
#   hsh[item[0]] = item[1]
# end
