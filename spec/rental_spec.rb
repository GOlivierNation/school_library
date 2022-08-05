require './teacher'
require './book'
require './student'

describe Rental do
  before :each do
    @person = Student.new(19, 'charles', parent_permission: true)
    @book = Book.new('title', 'author')
    @rental = Rental.new '2022/06/22', @person, @book
  end

  it 'should display rented book title' do
    @person.rentals.each do |rental|
      expect(rental.person.title).to eq 'title'
    end
  end
  it 'should display rented date' do
    @person.rentals.each do |rental|
      expect(rental.date).to eq '2022/06/22'
    end
  end
end
