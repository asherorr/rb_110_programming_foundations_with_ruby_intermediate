#PEDAC

#Problem
#write a method that takes a string
#and returns a new string in which every consonant character is doubled
#vowels, digits, punctuation, and whitespace should not be doubled

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
#add the char * 2 to the final_str if it's a consonant
#otherwise add letter
#return final_str

#Code

def consonant?(letter)
  letter.match?(/^[a-zA-Z]$/) && !letter.match?(/^[aeiouAEIOU]$/)
end

def double_consonants(arg)
  final_str = ""
  
  arg.each_char do |letter|
    if consonant?(letter)
      final_str += letter * 2
    else
      final_str += letter
    end
  end 
  
  final_str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""