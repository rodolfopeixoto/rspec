describe 'Class' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) # Exatamente a classe
  end
  it 'be_kind_of' do
    expect(10).to be_kind_of(Integer) # Pode ser por herança
  end
  it 'respond_to' do
    expect('ruby').to respond_to(:size) # Respond ao método size
    expect('ruby').to respond_to(:count) # Respond ao método count
  end
  it 'be_a' do
    expect(10).to be_a(Integer) # Pode ser por herança
  end
  it 'be_an' do
    expect(10).to be_an(Integer) # Pode ser por herança
  end
end