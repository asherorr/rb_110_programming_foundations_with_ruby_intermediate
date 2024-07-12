#PEDAC

#Problem
#write a method that returns a lsit of all substrings of a string
#that are palindromic.
#That is, each substring must consist of the same sequence of chars
#forwards as it does backwards.

#The return value should be arranged in the same sequence as the substrings
#appear in the string
#Duplicate palindromes should be included multiple times

#You may (and should) use the substrings method you wrote previously.

#For the purposes of this exercise, you should all consider chars
#and pay attention to case
#in addition, assume that single characters are not palindromes.

#Example/Test Case
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

#Data Structure
#string object input
#array object with string object elements as output

#Algorithm
#initialize var `str` to ""
#initialize var `final_arr` to []

#call substrings on arg
#check if each substring in the array is a palindrome
#if it is, add it to final_arr
#if not, next
#return final_arr

#Code
def leading_substrings(arg)
  arr = []
  str = ""
  
  arg.each_char do |letter|
    str += letter
    arr << str
  end
  
  arr
  
end

def substrings(arg)
  result = []
  
  while arg.length > 0
    result += leading_substrings(arg)
    arg.slice!(0)
    break if arg.length == 0
  end 

  result
end

def palindrome?(str1)
  arr = str1.split("")
  arr2 = arr.reverse
  str2 = arr2.join("")
  str2.match?(str1)
end

def palindromes(arg)
  final_arr = []
  result = substrings(arg)
  result.each do |ele|
    if palindrome?(ele) == true && ele.size > 1
      final_arr << ele
    else
      next
    end
  end
  
  p final_arr
end
  
p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]