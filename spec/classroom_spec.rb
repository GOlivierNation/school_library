require './classroom'

describe Classroom do
  before :each do
    @classroom = Classroom.new('grade9B')
  end

  it 'should print the grade' do
    expect(@classroom.label).to eq 'grade9B'
  end
end