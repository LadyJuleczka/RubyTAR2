require_relative 'book'
require_relative 'author'
require_relative 'menu'
require_relative 'to_a'
require_relative 'print'

read = ToArray.new
print = Print.new
menu = Menu.new

authors = read.authors_to_a
books = read.books_to_a(authors)

key = 1

while key == 1
  puts menu.to_s
  case gets.chop
  when '1'
    menu.clear
    print.books_to_s(books)
    # puts books.to_s
    gets.chop
    menu.clear
  when '2'
    menu.clear
    print.authors_to_s(authors, books)
    gets.chop
    menu.clear
  when '3'
    menu.clear
    print 'Wyszukaj: '
    input = gets.chop
    while input.length < 3 || input == 'x'
      break if input == 'x'
      print 'Podaj przynajmniej trzy znaki (x - anulowanie wyszukania)'
      input = gets.chop
    end
    found = 0
    books.each do |b|
      if b.tittle.include?(input)
        puts b.to2_s
        found = 1
      end
    end
    puts 'Nie znaleziono zadnej ksiazki spelniajacej kryteria.' if found != 1
    gets.chop
    menu.clear
  when '4'
    menu.clear
    print 'Wyszukaj: '
    input = gets.chop
    while input.length < 3 || input == 'x'
      break if input == 'x'
      print 'Podaj przynajmniej trzy znaki (x - anulowanie wyszukania)'
      input = gets.chop
    end
    found = 0
    authors.each do |a|
      if a.author_name.include?(input) || a.author_surname.include?(input)
        puts a.to_s
        puts a.books_to_s(books)
        found = 1
      end
    end
    puts 'Nie znaleziono zadnej ksiazki spelniajacej kryteria.' if found != 1
    gets.chop
    menu.clear
  when '0'
    puts 'Nastepuje zamkniecie programu'
    key = 0
    break
  end
end
