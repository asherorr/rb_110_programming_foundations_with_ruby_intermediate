#In the ages hash, remove people with age 100 and greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

#Problem
#input: hash
#output: hash

#Example/Test Case
#ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#ages should be modified to:
#ages = { "Herman" => 32, "Lily" => 30, "Eddie" => 10 }

#Data Structure
#hashes

#Algorithm
#loop through each key:value pair in the hash
#if the value is 100 or greater, remove that key:value pair from the hash.
#return the new hash.

#Code

ages.reject! {|key, value| value >= 100}
p ages
