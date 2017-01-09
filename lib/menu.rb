# Implementation of menu class
class Menu
  attr_accessor :menu

  def initialize
    @menu = "Biblioteka szkolna \n"
    @menu << "1. Wyswietl wszystkie ksiazki \n"
    @menu << "2. Wyswietl wszystkich autorow \n"
    @menu << "3. Wyszukaj ksiazke \n"
    @menu << "4. Wyszukaj autora \n"
    @menu << "0. Zakoncz program \n"
    @menu << 'Wybierz: -> '
  end

  def to_s
    menu
  end

  def clear
    system 'clear'
    system 'cls'
  end
end
