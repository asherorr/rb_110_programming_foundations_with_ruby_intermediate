#PEDAC

#Problem
#write a method that takes a String as an argument
#and returns a new String that contains the original value
#using a staggered capitalization scheme
#in which every other character is capitalized
#and the remaining characters are lowercase
#characters that are not letters should not be changed
#but count as characters when switching between
#uppercase and lowercase

#Example/Test Case
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#Data Structure
#String object input
#String object output

#Algorithm
#initialize new_str to ""
#invoke chars on arg and loop through each with the index
#if the character is a non-letter, add it to new_str
#elsif the index is even, add the uppercased version to new_string
#else simply add the lowercased version to new_str

#return new_str

#Code
def staggered_case(arg)
  new_string = ""
  arg.chars.each_with_index do |letter, index|
    if letter !~ /\A[a-zA-Z]\z/
      new_string << letter
    elsif index.even?
      new_string << letter.upcase
    else
      new_string << letter.downcase
    end
  end
      
  new_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'