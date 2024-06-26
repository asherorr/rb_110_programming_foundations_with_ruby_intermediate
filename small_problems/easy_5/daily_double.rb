require 'pry'
#PEDAC

#Problem
#write a method that takes a string argument and returns a new string
#that contains the value of the original string with all consecutive duplicate characters
#collapsed into a single character
#you may not use String#squeeze or String#squeeze!

#Example/Test Case
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

#Data Structure
#string object inputs
#string object outputs

#Algorithm
#initialize var `result` to empty string
#convert arg to Array object `arr`
#convert `arr` to individual string object elements ["d", "d"]

#check if the current char is equivalent to the following character or a space
#if yes, add the following character to `result` unless the next element == nil
#if no, skip to the next iteration of the loop
#return result

# #Code
# def crunch(arg)
#   new_arr = []
#   arr = arg.split(/(\s)/)
  
#   arr.each do |element|
#     element.each_char do |letter|
#       new_arr << letter
#     end
#   end
    
#   result = ""
#   new_arr.each_with_index do |letter, index|
#     next_letter = new_arr[index+1]
#     if result.length == 0 || letter == " "
#       result << letter
#     elsif (letter == next_letter && letter != result[-1]) || (letter != next_letter && letter != result[-1])
#       result << letter
#     else
#       next
#     end
#   end
  
#   result
# end

# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''

#second solution
def crunch(text)
  index = 0
  crunch_text = ""
  while index <= text.length - 1
    crunch_text << test[index] unless text[index] == test[index + 1]
    index += 1
  end
  crunch_text
end