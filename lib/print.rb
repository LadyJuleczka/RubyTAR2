require_relative 'book'
require_relative 'author'

# Implementation of Print class
class Print
  def authors_to_s(authors, books)
    authors.each do |a|
      puts a.to_s
      puts a.books_to_s(books)
    end
  end

  def books_to_s(books)
    books.each do |b|
      puts b.to2_s
    end
  end
end
