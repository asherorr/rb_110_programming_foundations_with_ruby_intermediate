# def is_odd(int_arg)
#   int_arg.odd?
# end

# p is_odd(3)
# p is_odd(4)

#solution without odd or even

def is_odd(int_arg)
  int_arg % 3 == 0
end

p is_odd(3)
p is_odd(4)
p is_odd(15)
p is_odd(16)