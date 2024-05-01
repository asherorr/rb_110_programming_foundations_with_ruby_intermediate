#Determine the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#P
#Input: nested hash
#output: integer of summed ages

#Example/Test Case
# with munsters hash = 442

#Data Structure
#hashes

#Algorithm
#select all members of the fam that are males
#gather ages from the collection object of males
#sum their ages

#Code

def select_males(hash_obj)
  hash_obj.select do |person|
    hash_obj[person]["gender"] == "male"
  end
end

def gather_ages(males)
  males.map { |_, details | details["age"]}
end

def sum_ages(array_ages)
  array_ages.sum
end


males_in_munsters = select_males(munsters)
ages = gather_ages(males_in_munsters)
p sum_ages(ages)
