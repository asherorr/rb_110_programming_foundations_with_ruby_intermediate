#Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

#P: 
#Input: array
#Output: Hash (name: indice in array)

#E:
#["Fred", "Barney"] -> {"Fred": 0, "Barney": 1}

#D
#Arrays converted to hash

#Algorithm
#initialize method convert_to_hash(array_obj)
  #initialize a local variable pointing to an empty hash
  #loop through each element in the flintstones array
  #assign the name of the element as the key in the hash
  #assign the index position of the key as the value in the hash
  #return the hash
  
#Code

#first solution
# def convert_to_hash(array_obj)
#   new_hash = {}
#   for name in array_obj
#     new_hash[name] = array_obj.index(name)
#   end
#   new_hash
# end

# p (convert_to_hash(flintstones))
# ->  {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}

#second solution
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash