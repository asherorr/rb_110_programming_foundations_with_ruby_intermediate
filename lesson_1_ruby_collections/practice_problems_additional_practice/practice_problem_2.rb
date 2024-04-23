#Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#Problem
#Input: Hash
#Output: Integer

#Example:
#ages = { "Herman" => 32, "Lily" => 30} -> 62

#Data Structure
#Hashes

#Algorithm
#set a counter variable to 0
#loop through the ages hash
#for each key:value pair, add the value to the counter variable
#return the counter

#Code

all_ages_added = 0
ages.each_value {|age| all_ages_added += age}
puts all_ages_added