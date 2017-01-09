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
      puts 'Tytul: '
      puts b.tittle
      puts 'Data wydania:'
      puts b.yor
      puts 'ISBN: '
      puts b.isbn
      puts b.to2_s
      puts b.to_s
    end
  end
end
