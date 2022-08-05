require './book'
require './rental'

describe Book do
  before :each do
    @book = Book.new nil, 'The Lion And The Jewel', 'Wole Soyinka'
  end

  it 'should print the book title' do
    expect(@book.title).to eq 'The Lion And The Jewel'
  end

  it 'should print the book author' do
    expect(@book.author).to eq 'Wole Soyinka'
  end
end
