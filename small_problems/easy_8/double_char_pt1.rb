#PEDAC

#Problem
#write a method that takes a string
#and returns a new string in which every character is doubled

#Examples/Test Case
#repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

#Data Structure
#string object input
#string object output

#Algorithm
#initiailize var final_str to ""
#loop through each char in arg
#add the char * 2 to the final_str
#return final_str

#Code
def repeater(arg)
  final_str = ""
  arg.each_char do |letter|
    final_str += letter * 2
  end 
  
  final_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''