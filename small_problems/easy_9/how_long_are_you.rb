#PEDAC

#Problem
#write a method that takes a string as an arg
#and returns an Array that contains every word from the string
#to which you have appended a space and the word legth

#You may assume that the words in the string are separated
#by exactly one space, and that any substring of non-space
#characters is a word.

#Examples/Test Case
# word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# word_lengths("") == []

#Data Structure
#String object input
#Array object output

#Algorithm
#initialize var final_arr to []
#split string into array by space
#loop through each element in the array
#get the length of the element
#add the element + " " + length to final_arr

#return final_arr

#Code
def word_lengths(str)
  split_str = str.split(" ")
  
  split_str.map! do |word|
    length = word.length
    "#{word} #{length}"
  end 
  
  split_str
  
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []