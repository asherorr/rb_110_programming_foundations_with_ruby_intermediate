#PEDAC

#Problem
#write a method that takes an Array of Integers between 0 and 19
#and returns an Array of those integers sorted based on the English words for each number.

#Example/Test Case
# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

#Data Structure
#Array of integers between 0 and 119
#returns an array of integers sorted based on the English words

#Algorithm
#get hash object `numbers_in_english` (1 => "one")
#loop through each number in the array
#map each element sorted by the English equivalent into a new array
#return that array

#Code
NUMBERS_IN_ENGLISH = {
  0 => "zero",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen"
}

NUMBERS_IN_ENGLISH_REVERSED = {
  "zero" => 0,
  "one" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
  "seven" => 7,
  "eight" => 8,
  "nine" => 9,
  "ten" => 10,
  "eleven" => 11,
  "twelve" => 12,
  "thirteen" => 13,
  "fourteen" => 14,
  "fifteen" => 15,
  "sixteen" => 16,
  "seventeen" => 17,
  "eighteen" => 18,
  "nineteen" => 19
}




def alphabetic_number_sort(arg)
  arr = arg.to_a
  arr.map! do |ele|
    NUMBERS_IN_ENGLISH[ele]
  end
  
  arr.sort!
  result = arr.map do |ele|
    NUMBERS_IN_ENGLISH_REVERSED[ele]
  end
  
  result
end
  
p alphabetic_number_sort((0..19)) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]