require 'pry'
#PEDAC

#Problem
#write a method that takes a string
#and returns a hash that contains 3 entries
#one represents the number of characters in the str
#that are lowercase letters
#one that represents the uppercase letters
#one that represents the number of characters that are neither

#Example/Test Case
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

#Data Structure
#String object input
#Hash object output

#Algorithm
#initialize Hash `hsh`
#initialize lowercase counter
#initialize uppercase counter
#initialize neither counter

#loop through each element in the string object
#determine if the letter is a integer or space
#if it is, add one to the neither counter
#if the letter is lowercase, add 1 to the counter
#if the letter is uppercase, add 1 to the counter

#return the hash

#Code
def letter_case_count(arg)
  hsh = {}
  lowercase_counter = 0
  uppercase_counter = 0
  neither_counter = 0
  
  arg.each_char do |letter|
    if letter !~ /\A[a-zA-Z]\z/
      neither_counter += 1
    elsif letter == letter.upcase
      uppercase_counter += 1
    elsif letter == letter.downcase
      lowercase_counter += 1
    end
  end
      
    hsh[:lowercase] = lowercase_counter
    hsh[:uppercase] = uppercase_counter
    hsh[:neither] = neither_counter
    
    hsh
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }