#Write a loop that prints numbers 1-5 and whether the number is even or odd.

#Expected output:
# 1 is odd!
# 2 is even!
# 3 is odd!
# 4 is even!
# 5 is odd!

#first solution
# count = 1

# loop do
#   case count
#   when count.even? then puts "#{count} is even!"
#   else
#     puts "#{count} is odd!"
#   end
#   count += 1
#   break if count > 5
# end

#second solution

count = 1

loop do
  if count.even?
    puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end
  
  break if count == 5
  count += 1
end