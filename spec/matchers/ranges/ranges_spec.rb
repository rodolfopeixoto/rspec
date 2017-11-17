describe (1..5), 'Ranges' do
  # Valores cobertos pelo range. 2 está entre 1 e 5. 0 e 6 não está entre 1 e 5.
  it "#cover" do
    expect(subject).to cover(2)
    expect(subject).to cover(2,5)
    expect(subject).not_to cover(0,6)
  end
  # it {} = Descrição implícita 
    it { is_expected.to cover(2) }
    it { is_expected.to cover(2,5) }
    it { is_expected.not_to cover(0,6) }
    # Output
    # should cover 2
    # should cover 2 and 5
    # should not cover 0 and 6
end