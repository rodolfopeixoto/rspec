require 'person'

describe 'Attributes' do
  it 'have_attributes' do
    person = Person.new
    person.name = 'Rodolfo'
    person.age = 25
    # expect(person).to have_attributes(name: 'Rodolfo')
    expect(person).to have_attributes(name: starting_with("R"), age: (be >= 25))
  end
end