describe "Test Double" do
  it '--' do
    user = double('User')
    # allow(user).to receive_messages(name: 'Rodolfo', password: 'secret')
    allow(user).to receive(:name).and_return('Rodolfo')
    allow(user).to receive(:password).and_return('secret')
    user.name
    user.password
  end
end
