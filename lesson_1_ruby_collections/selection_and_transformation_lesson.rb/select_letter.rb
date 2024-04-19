#write a method called select_letter, that takes a string and returns a new string containing only the letter that we specified.

question = 'How many times does a particular character appear in this sentence?'


def select_letter(question, str_obj)
  new_str = ""
  num_instances = question.count(str_obj)
  new_str << str_obj * num_instances
  new_str
end


p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""

#P
#Problem: extract out the amount of times a particular character appears in a sentence. 
#Input: sentence (string object), character (string object)
#Output: string object containing the letter, as many times as it appears.

#E (Example/Test Case)
# select_letter(question, 'a') # => "aaaaaaaa"
# select_letter(question, 't') # => "ttttt"
# select_letter(question, 'z') # => ""

#D (Data Structure)
# string objects

#Algorithm
#loop through each character in the string
#if the character matches the selection criteria, add it to an empty string
#return empty string

#C (Code with Intention)