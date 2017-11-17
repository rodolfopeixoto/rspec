describe 'Ruby on Rails' do
  it { is_expected.to starting_with('Ruby').and ending_with('Rails') }
  it { expect(fruit).to eq('banana').or eq('orange').or eq('grape') }

  def fruit
    %w(banana orange grape).sample #sorteia
  end
end