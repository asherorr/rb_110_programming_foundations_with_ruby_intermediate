#Given this data structure write some code to return an array containing...
#... the colors of the fruits, and the sizes of the vegetables. 
#.. The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

#Problem
#input: hash object where each element has a string key and a hash object value
#output: array with sizes uppercase the colors capitalized

#Example/Test Case
#[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

#Data Structure
#Hash object

#Algorithm
#hsh object calls map and passes in element as argument
#select elements that are fruits or vegetables
#if type is fruit, capitalize the values assoociated with the colors key
#if type is vegetable, upcase values associated with the size key

#Code
p (hsh.map do |key, value|
    if hsh[key][:type] == 'fruit'
      hsh[key][:colors].map {|color| color.capitalize}
      
    elsif hsh[key][:type] == 'vegetable'
      hsh[key][:size].upcase
    end
end)
  