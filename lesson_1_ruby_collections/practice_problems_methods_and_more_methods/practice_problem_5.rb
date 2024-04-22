#What does shift do in the following code?

hash = { a: 'ant', b: 'bear' }
hash.shift

#it removes the first hash entry and returns a 2-element array...
#... containing the removed key and value.

#thus, it returns -> [:a, 'ant']