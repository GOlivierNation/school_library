require './teacher'

describe Teacher do
  before :each do
    @teacher = Teacher.new('TEST', 44)
  end

  it 'instance of teacher' do
    expect(@teacher.name) == 'TEST'
  end

  it 'id correct' do
    expect(@teacher.id) == 44
  end
end
