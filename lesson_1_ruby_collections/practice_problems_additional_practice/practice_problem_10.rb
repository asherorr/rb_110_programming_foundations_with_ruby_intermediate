#Given the munsters hash below:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#Modify the hash such that each member of the Munster family has an additional "age_group" key...
#that has one of three values describing the age group the family member is in (kid, adult, or senior). 
#Your solution should produce the hash below

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

#Problem
#input: hash
#output: hash

#Example/Test Case
#lines 3-9 and 15-19

#Data Structure
#hashes

#Algorithm
#loop through each key:value pair in the munsters hash
#add a new key to each hash titled age_group
#if the age is 0-17, assign value as "kid"
#if the age is 18-59, assign value as "adult"
#if the age is 60-90, assign value as "senior"

def determine_age_group(number)
  if (1..18).include?(number)
    "kid"
  elsif (19..64).include?(number)
    "adult"
  else
    "senior"
  end
end

def modify_hash(hash_obj)
  hash_obj.each do |person, data|
    age = data["age"]
    age_group = determine_age_group(age)
    data["age_group"] = age_group
  end
end

p modify_hash(munsters)


#second solution
# munsters.each do |name, details|
#   case details["age"]
#   when 0..18
#     details["age_group"] = "kid"
#   when 18..65
#     details["age_group"] = "adult"
#   else
#     details["age_group"] = "senior"
#   end 
# end