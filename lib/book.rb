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
    book = 'Tytul:    : ' << tittle.to_s << ''
  end
end
