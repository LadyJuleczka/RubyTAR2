# Implementation of Book author
class Author
  attr_accessor :author_name, :author_surname, :yob, :yod, :id

  def initialize(author_name, author_surname, yob, yod, id)
    @author_name = author_name
    @author_surname = author_surname
    @yob = yob
    @yod = yod
    @id = id
  end

  def to_s
    author = 'Imie autora: ' << author_name.to_s << "\n"
    author << 'Nazwisko autora: ' << author_surname.to_s << "\n"
    author << 'Rok urodzenia: ' << yob.to_s << "\n"
    # Dont show yod if they are not dead
    author << 'Rok smierci: ' << yod.to_s << "\n" unless yod.to_s.to_i == 2017
    author << 'Wiek: '
    author << (yod.to_s.to_i - yob.to_s.to_i).to_s << "\n"
  end

  def books_to_s(books)
    authors_book = 'Ksiazki: '
    books.each do |b|
      b.authors.each do |a|
        authors_book << b.tittle.to_s << ', ' if a.id.eql?(id)
      end
    end
    authors_book << "\n\n"
  end
end
