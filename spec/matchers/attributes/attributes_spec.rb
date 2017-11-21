require 'person'

describe 'Attributes' do
  before(:each) do
    @person = Person.new
    puts ">>>>> Antes de cada teste"
  end
  after(:each) do
    puts ">>>>> Depois de cada teste"
  end
  it 'have_attributes' do
    @person.name = 'Rodolfo'
    @person.age = 25
    # expect(@person).to have_attributes(name: 'Rodolfo')
    expect(@person).to have_attributes(name: starting_with("R"), age: (be >= 25))
  end
  it 'have_attributes' do
    @person.name = 'Ramon'
    @person.age = 25
    # expect(@person).to have_attributes(name: 'Rodolfo')
    expect(@person).to have_attributes(name: starting_with("R"), age: (be >= 25))
  end
end