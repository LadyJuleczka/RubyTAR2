# Implementation of Book class
class Book
  attr_accessor :tittle, :id, :yor, :quantity, :isbn, :authors

  def initialize(tittle, id, yor, quantity, isbn)
    @tittle = tittle
    @id = id
    @yor = yor
    @quantity = quantity
    @isbn = isbn
    @authors = []
  end

  def add_author(author)
    @authors.push(author)
  end

  def get_authors
    @authors
  end

  def to2_s
    book = 'Tytul: ' << tittle.to_s << "\n"
    book << 'Rok Wydania: ' << yor.to_s << "\n"
    book << 'Ilosc : ' << quantity.to_s << "\n"
    book << 'ISBN: ' << isbn.to_s << "\n"
    book << 'Autorzy: '
    @authors.each do |a|
      book << a.author_name << ' ' << a.author_surname << ', '
    end
    book << "\n\n"
  end
end
