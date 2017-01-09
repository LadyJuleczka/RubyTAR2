require_relative 'book'
require_relative 'author'
require_relative 'menu'
require_relative 'to_a'

read = Read.new
print = Print.new
menu = Menu.new

authors = read.authors_to_a
books = read.books_to_a

key = 1
