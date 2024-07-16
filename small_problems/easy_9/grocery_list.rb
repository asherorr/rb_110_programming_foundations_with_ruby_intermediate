#PEDAC

#Problem
#write a method that takes a grocery list (array) of fruits with quantities
#and converts it into an array of the correct number of each fruit

#Example/Test Case
# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

#Data Structure
#Array objects of string object and integer obejct elements as input
#single array object of string object elements as output

#Algorithm
#invoke map on arg and loop through each sub_array
#initialize `num` to second element in the sub_array
#get the first element in the sub_array in separate str objects

#Code
def buy_fruit(arg)
  arg.map! do |sub_array|
    num = sub_array[1]
    word = sub_array[0]
    [word] * num
  end

  p arg.flatten!
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]