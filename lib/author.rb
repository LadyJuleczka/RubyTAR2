# Implementation of Book author
class Author
  attr_accessor :author_name, :author_surname, :yob, :yod

  def initialize(author_name, author_surname, yob, yod)
    @author_name = author_name
    @author_surname = author_surname
    @yob = yob
    @yod = yod
  end

  def to_s
    author = 'Imie autora:    : ' << author_name.to_s << "\n"
    author << 'Nazwisko autora: ' << author_surname.to_s << "\n"
    author << 'Rok urodzenia: ' << yob.to_s << "\n"
    author << 'Rok smierci: ' << yod.to_s << "\n"
    author << 'Wiek: '
    author << (yod.to_s.to_i - yob.to_s.to_i).to_s << "\n"
  end
end
