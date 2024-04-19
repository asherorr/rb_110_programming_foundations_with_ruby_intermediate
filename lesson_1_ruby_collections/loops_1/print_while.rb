#Using a while loop, print 5 random numbers between 0 and 99 (inclusive).

numbers = []

#first solution
# while numbers.size < 5
#   num = rand(0..99)
#   numbers << num
#   puts num
# end

#second solution
while numbers.size < 5
  numbers << rand(100)
end

puts numbers