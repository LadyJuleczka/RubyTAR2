#Implementation of menu class
class menu
  attr_accessor :menu,

  def initialize
    @menu = "Biblioteka szkolna \n"
    @menu << "1. Wyswietl wszystkie ksiazki \n"
    @menu << "2. Wyswietl wszystkich autorow \n"
    @menu << "3. Wyszukaj film \n"
    @menu << "4. Wyszukaj autora \n"
    @menu << "0. Zakoncz program \n"
    @menu << "3Wybierz: -> "
