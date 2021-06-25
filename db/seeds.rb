require 'open-uri'
require 'json'

puts "Cleaning up database..."
Book.destroy_all
puts "Database cleaned"

url = "https://fakerapi.it/api/v1/books?_quantity=10"


puts "Importing books from page."
books = JSON.parse(open(url).read)['data']
books.each do |book|
  puts "Creating #{book['title']}"
  Book.create!(
    title: books['title'],
    author: books['author'],
    description: books['description']
)
end

puts "Books created"