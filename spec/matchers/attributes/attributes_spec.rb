require 'person'

describe 'Attributes' do
  it 'have_attributes' do
    person = Person.new
    person.name = 'Rodolfo'
    expect(person).to have_attributes(name: 'Rodolfo')
  end
end