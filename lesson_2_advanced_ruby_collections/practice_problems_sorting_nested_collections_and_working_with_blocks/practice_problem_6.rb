#Given this previously seen family hash, print out the name, age and gender of each family member:



munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#Problem
#print out the name, age and gender of each family member
#input: hash object, where key is a string and value is a hash object
#output: strings ((Name) is a (age)-year-old (male or female).)

#Example/Test Case
#"Herman is a 32-year-old male."

#Data Structure
#hashes

#Algorithm
#loop through each object in the munsters hash
#print the statement with the information for each

#Code
munsters.each do |key, value|
  puts "#{key} is a #{value['age']}-year-old #{value['gender']}."
end