describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(12.0) } # A diferença máxima entre 12.5 e 12 tem que ser de 0.5
  it { expect([12.6,12.9, 12.5]).to all(be_within(0.5).of(13.0))}
  # Intervalo
  # 0.5 é o delta
  # Números aceitos: 11.5 à 12.5
end