#What is the return value of map in the following code? Why?


p ({ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end)

# Enumerable#map returns an array of objects returned by the block.
#When none of the conditions in an if statement evalutes as true, the if statement itself returns nil.
#thus, it will return -> [nil, 'bear']

p ({ a: 'ant', c: "boo", b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end)

# -> [nil, nil, "bear"]