#How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

#Problem
#order this array of hashes based on the year (earliest to latest)
#input: array of hashes
#output: array of hashes

#Example/Test Case
#[{:title=>"War and Peace", :author=>"Leo Tolstoy", :published=>"1869"}, {:title=>"Ulysses", :author=>"James Joyce", :published=>"1922"}, {:title=>"The Great Gatsby", :author=>"F. Scott Fitzgerald", :published=>"1925"}, {:title=>"One Hundred Years of Solitude", :author=>"Gabriel Garcia Marquez", :published=>"1967"}]

#Data Structure
#Array with hash object elements

#Algorithm
#books calls the sort_by method and passes book as an argument
#return value is value associated with published key converted to i

#Code

books.sort_by do |book|
  year = book[:published]
  year.to_i
end