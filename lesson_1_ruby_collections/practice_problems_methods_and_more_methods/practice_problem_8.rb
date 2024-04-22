#How does take work? Is it destructive?

arr = [1, 2, 3, 4, 5]
arr.take(2)

#take returns a new Array containing the first n element of self.
#it is not destructive! take will return a new array -> [1, 2]