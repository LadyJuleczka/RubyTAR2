# Implementation of Book class
class Book
  attr_accessor :tittle, :author_surname, :yor, :quantity, :isbn

  def initialize(tittle, author_surname, yor, quantity, isbn)
    @tittle = tittle
    @author_surname = author_surname
    @yor = yor
    @quantity = quantity
    @isbn = isbn
  end

  def to_s
    book = 'Tytul:    : ' << tittle.to_s << "\n"
    book << 'Nazwisko autora: ' << author_surname.to_s << "\n"
    book << 'Rok Wydania: ' << yor.to_s << "\n"
    book << 'Ilosc : ' << quantity.to_s << "\n"
    book << 'ISBN: ' << isbn.to_s << "\n"
  end

  def authors_to_s(authors)
    books_authors = ''
  end
end
