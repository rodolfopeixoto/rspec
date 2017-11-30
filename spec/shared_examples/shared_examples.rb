require 'person'

shared_examples 'status' do |felling|
  it '#{felling}!' do
    person.send("#{felling}!")
    expect(person.status).to eq("Felling #{felling.capitalize}!")
  end
end

describe "Person" do
  subject(:person) { Person.new }
  
  it_behaves_like 'status', :happy
  it_behaves_like 'status', :said
  it_behaves_like 'status', :content

end
