require './nameable'

class Person < Nameable
  attr_reader :id, :rentals # we need only getter
  attr_accessor :name, :age # we need to get and set

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def of_age?
    @age >= 18
  end
  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def rent_book(book, person)
    Rental.new(book, person, self)
  end
end
