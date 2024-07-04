#PEDAC

#Problem
#write a method that takes a string as an argument
#and returns a new string in which every uppercase letter
#is replaced by its lowercase version

#and every lowercase letter by its uppercase version
#all other characters should be unchanged

#You may not use String#swapcase; write your own version of this method.

#Example/Test Case
#swapcase('PascalCase') == 'pASCALcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#Data Structure
#string object

#Algorithm
#initialize `new_str` to ""
#invoke chars on arg and loop through each
#if the letter is not a a-z or A-Z letter add it to new_str
#if the letter is equal to the uppercase version of itself
#add the downcased version to new_str
#if the letter is equal to the downcase version of itself
#add the uppercased version to new_str

#return new_str

#Code
def swapcase(arg)
  new_str = ""
  arg.chars.each do |letter|
    if letter !~ /\A[a-zA-Z]\z/
      new_str << letter
    elsif letter == letter.upcase
      new_str << letter.downcase
    elsif letter == letter.downcase
      new_str << letter.upcase
    end
  end
  
  new_str
end

p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'