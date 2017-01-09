# Implementation of Book class
class Book
  attr_accessor :tittle, :id, :yor, :quantity, :isbn

  def initialize(tittle, id, yor, quantity, isbn)
    @tittle = tittle
    @id = id
    @yor = yor
    @quantity = quantity
    @isbn = isbn
  end

  def to_s
    book = 'Tytul:    : ' << tittle.to_s << "\n"
    book << 'Rok Wydania: ' << yor.to_s << "\n"
    book << 'Ilosc : ' << quantity.to_s << "\n"
    book << 'ISBN: ' << isbn.to_s << "\n"
  end

  def authors_to_s(authors)
    books_authors = 'Autorzy          : '
    authors.each do |a|
      a.books.each do |b|
        books_authors << a.author_name.to_s << ' '
        books_authors << a.author_surname.to_s << ', ' if b.id.eql?(id)
      end
    end
    books_authors << "\n\n"
  end
end
