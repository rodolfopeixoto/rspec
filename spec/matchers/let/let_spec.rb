$counter = 0

describe "let" do
  let(:count) { $counter += 1 }

  it "memorizar o valor" do
    expect(count).to eq(1) #1a vez 
    expect(count).to eq(1) #2a cache
  end

  it "não é cacheado entre os testes" do
    expect(count).to eq(2) #instância então será 2.
  end
end