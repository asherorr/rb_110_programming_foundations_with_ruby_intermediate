#PEDAC

#Problem
#write a method that returns true if the string passed as
#an argument is a palindrome, false otherwise.
#in this case, case matters as does punctuation and spaces

#Example/Test Case
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

#Data Structure
#string object inputs and arrays

#Algorithm
#add string object into array `arr`
#split `arr` by ""
#create a new array `arr2` by reversing `arr`
#convert `arr2` to a str_obj `str2`
#return true if str_2 matches str1'

#Code
def palindrome?(str1)
  arr = str1.split("")
  arr2 = arr.reverse
  str2 = arr2.join("")
  str2.match?(str1)
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
