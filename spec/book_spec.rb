require './book'
require './rental'

describe Book do
  before :each do
    @book = Book.new nil, 'title', 'authour'
  end

  it 'should print the book title' do
    expect(@book.title).to eq 'title'
  end

  it 'should print the book author' do
    expect(@book.author).to eq 'authour'
  end
end
