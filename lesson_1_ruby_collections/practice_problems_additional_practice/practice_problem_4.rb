#Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#Problem
#pick out the minimum/lowest age from the hash
#input: hash
#output: hash

#Example/Test Case
#ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# -> 10

#Data Structure
#hash

#Algorithm
#convert the ages hash to an array
#flatten the array
#select each integer object from the array and add to its own array
#retrieve the lowest number from the array
#return the value

#Code
#first solution
# def pick_minimum_age(hash_obj)
#   hash_to_array = hash_obj.to_a
#   hash_to_array.flatten!.select! {|element| element.class == Integer}
#   hash_to_array.min
# end

# p (pick_minimum_age(ages))
# -> 10

#second solution
ages.values.min