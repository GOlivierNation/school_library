require_relative './person'
require_relative './book'
require_relative './rental'
require_relative './student'
require_relative './teacher'
require_relative './capitalize_name'
require_relative './trim_name'
require_relative './app'

class Main < App
  def initialize
    super()
    @book = []
    @person = []
    @rental = []
    puts 'Welcome to the library!'
  end

  def ask
    puts 'Select Option'
    puts '================'
    puts "1. List all books \n2. List all persons \n3. Create a book \n4. Create a person
    \n5. Rent a book \n6. List all rentals per person \n7. Exit"
    puts
    option = gets.chomp
    case option
    when '1'
      list_book(@book)
      ask
    when '2'
      list_persons(@person)
      ask
    when '3'
      create_new_book
      ask
    end
    run(option)
  end

  def run(num)
    case num
    when '4'
      add_persons
    when '5'
      append_rental
      ask
    when '6'
      filter_list_book
      ask
    when '7'
      puts 'Goodbye!'
    end
  end
end

Main.new.ask
