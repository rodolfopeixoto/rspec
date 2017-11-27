$count = 0

describe "let!" do
  let!(:contador) do
    ordem_de_invocacao << :let!
    $count += 1
  end

  # roda o teste do let! novamente
  it "chama o método helper antes do teste" do
    ordem_de_invocacao << :exemplo
    expect(ordem_de_invocacao).to eq([:let!, :exemplo])
    expect(contador).to eq(1)
  end

end