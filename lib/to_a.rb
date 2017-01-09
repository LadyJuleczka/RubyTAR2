require_relative 'book'
require_relative 'author'
require_relative 'menu'
require 'csv'

# Implementation of to_a class
class ToArray
  def authors_to_a(path = '../lib/csv/authors.csv')
    array = []
    authors = CSV.read(path, col_sep: ';')
    authors.shitf
    authors.each do |row|
      author_name, author_surname, yob, yod, id = row
      a = Author.new(author_name, author_surname, yob, yod, id)
      array.push(a)
    end
    array
  end

  def books_to_a(auth, path = '../lib/csv/books.csv')
    array = []
    books = CSV.read(path, col_sep: ';')
    books.shitf
    books.each do |row|
      tittle, id, yor, quantity, isbn, authors = row
      authors_id = authors.split(',')
      b = Book.new(tittle, id, yor, quantity, isbn)
      authors_id.each do |a|
        b.add_author(auth.at(a.to_i))
      end
      array.push(b)
    end
    array
  end
end
