require 'pry'
#PEDAC

#Problem
#make a method that takes an Array of String objects
#and puts the string objects that are Anagrams into individual arrays
#and prints the arrays


#Example/Test case
#["dome", "mode", "none", "neon"]

#to:
#["dome", "mode"]

#Data Structure
#Array object of string object elements
#Array object if string object elements as output

#Algorithm
#initialize var `result` to {}
#loop through each word in words
#make the key the word split by "", sorted, then joined together now.
#if the result has the key, make the word the value associated with the key in result
#if not, then the value associated with the key simply becomes the word

#print out each value associated with result

#Code

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end 
end

result.each_value do |v|
  puts "-----"
  p v
end