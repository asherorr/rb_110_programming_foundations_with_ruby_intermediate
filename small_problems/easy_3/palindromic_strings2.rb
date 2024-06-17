##PEDAC

#Problem
#write a method that returns true if the string passed as
#an argument is a palindrome, false otherwise.
#in this case, it's case-insensitive and should ignore all non-alphanumeric characters

#Example/Test Case
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

#Data Structure
#string object inputs and arrays

#Algorithm
#downcase arg and remove non_alpha-numeric_characters
#store above expression in `str1_adjusted`

#reverse str1_adjusted and store in var `str2`
#compare str2 with str1_adjusted

#Code
def real_palindrome?(str1)
  str1_adjusted = str1.downcase.gsub(/\p{^Alnum}/, '')
  str2 = str1_adjusted.reverse
  
  str1_adjusted == str2
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false