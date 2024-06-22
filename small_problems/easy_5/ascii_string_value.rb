#PEDAC

#Problem
#write a method that returns the ASCII string value of a string
#that is passed as an argument (ASCII string value is the sum of the ASCII values of every character)

#Example/Test Case
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

#Data Structure
#string object inputs
#integer object outputs

#Algorithm
#initialize var `sum` to 0
#loop through each character in the arg
#determine the ASCII string value of character
#add this figure to `sum`
#return `sum`

#Code
def ascii_value(arg)
  sum = 0
  arg.each_char do |char|
    sum += char.ord
  end
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0