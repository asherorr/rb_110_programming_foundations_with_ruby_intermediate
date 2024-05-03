#Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

#Problem
#using each, output all of the vowels from the strings.


#Example/Test Case
#hsh = {first: ['the', 'quick'], second: ['brown', 'fox']}
# -> "eioo"

#Data Structure
#hash object
#value for each key is an array of two string object elements

#Algorithm
#initialize a local variable that holds vowels
#initialize a new string object to hold the vowels
#loop through each key:value pair in hsh
#if the string contains a vowel, add it to the local variable for str_vowels
#return the string

#Code

vowels = ['a', 'e', 'i', 'o', 'u']
vowels_from_str = ""

hsh.each do | key, value |
  value.each do | str_obj |
    str_obj.each_char do | char |
      vowels_from_str += char if vowels.include?(char)
    end 
  end
end

p vowels_from_str
# "euiooueoeeao"