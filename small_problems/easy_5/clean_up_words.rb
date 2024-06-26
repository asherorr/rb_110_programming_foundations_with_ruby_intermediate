#PEDAC

#Problem
#given a string that consists of some words (all lowercased)
#and an assortment of non-alpahabetic characters, write a
#method that returns the string with all of the non-alphabetic characters
#replaced by spaces

#if one or more non-alphabetic characters occur in a row, you should
#only have one space in the result (the result should never have consecutive
#spaces)

#Example/Test Case
# cleanup("---what's my +*& line?") == ' what s my line '

#Data Structure
#string object inputs to string object outputs

#Algorithm
#split the string at the alphabetic characters
#loop through each object in the array
#if the object is not an alphabetic character, replace it with a space.
#convert the new array to a string and return that object

#code
def cleanup(str_obj)
  split_string = str_obj.scan(/[a-zA-Z]+|[^a-zA-Z]+/)
  split_string.map! do |element|
    if element.match(/[^a-zA-Z]/)
      " "
    else
      element
    end
  end
  split_string.join
end

p cleanup("---what's my +*& line?") == ' what s my line '