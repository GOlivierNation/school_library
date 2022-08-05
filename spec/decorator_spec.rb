require './capitalize_decorator'
require './trimmer_decorator'
require './person'

describe Decorator do
  before :each do
    @person = Person.new('Maximulus', 'maximulus')
    @captalize = CapitalizeDecorator.new(@person)
    @trimmer = TrimmerDecorator.new(@captalize)
  end
  it 'Should display name' do
    expect(@person.correct_name).to eq 'maximulus'
  end
  it 'should capitalize person name' do
    expect(@captalize.correct_name) == 'maximulus'
  end
end
