require_relative 'book'
require_relative 'author'
require_relative 'menu'
require_relative 'to_a'
require_relative 'print'

read = ToArray.new
print = Print.new
menu = Menu.new

authors = read.authors_to_a
books = read.books_to_a

key = 1

while key == 1
  puts menu.to_s
  case gets.chop
  when '1'
    menu.clear
    print.books_to_s(books)
    gets.chop
    menu.clear
  when '0'
    puts 'Nastepuje zamkniecie programu'
    key = 0
    break
  end
end
