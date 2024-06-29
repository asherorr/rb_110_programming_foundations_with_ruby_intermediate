#PEDAC

#Problem
#write a method that takes an array of strings
#and returns an array of the same string values
#except with the vowels (a, e, i, o, u) removed.

#Example/Test Case
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

#Data Structure
#input: array of string object with all alphabetic chars
#output: array of string object (with the vowels removed)

#Algorithm
#loop through each element in arg
#delete any vowels from the element

#Code
def remove_vowels(arg)
  arg.map! {|str| str.delete("aeiouAEIOU")}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
