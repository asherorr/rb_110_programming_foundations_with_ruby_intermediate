#In the array, find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#Problem
#find the index of the first name that starts with "Be"
#input: array
#output: integer object referencing an index

#Example/Test Case
#flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#Output: 3

#Data Structure
#arrays

#Algorithm
#loop through each name in the flintstones array
#if the name starts with "Be", return the index of the first letter.

#Code
#first solution
# def return_index_of_first_letter(array_obj)
#   for name in array_obj
#     if name[0] == "B" && name[1] == "e"
#       return array_obj.index(name)
#     end
#   end
# end

# p return_index_of_first_letter(flintstones)

#second solution
flintstones.index { |name| name[0, 2] == "Be" }