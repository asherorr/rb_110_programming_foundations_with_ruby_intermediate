#PEDAC

#Problem: write a method that takes a single String argument
#and returns a new string that contains the original value of
#the argument with the first character of every word capitalized
#and all the other letters lowercase

#You may assume that words are any sequence of non-blank chars

#Example/Test Case
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

#Data Structure
#String object element input
#String object element output

#Algorithm
#initialize `new_str` to ""
#loop through each_char in the string
#if the element index is 0, capitalize it and add to new_str
#if the element preceding the element is " ", capitaalize it and add it to the new_str
#else simply add the letter to new_str
#return a new string object

#Code
def word_cap(arg)
  new_string = ""
  arg.chars.each_with_index do |letter, index|
    if index == 0
      new_string << letter.upcase
    elsif arg.chars[index - 1] == " "
      new_string << letter.upcase
    else
      new_string << letter.downcase
    end
  end

  new_string
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'