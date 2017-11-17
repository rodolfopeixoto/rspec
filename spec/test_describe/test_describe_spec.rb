# describe 'description' do
#   it 'String' do
#     str = "rodolfo"
#     expect(str.size).to eq(7)
#   end
# end

# 'Rodolfo' é instânciado como uma string, logo nosso subject é uma string

describe 'Rodolfo' do
  it 'String' do
      expect(subject.size).to eq(7)
  end
end

describe [1,2] do
    it 'Array' do
        expect(subject).to be_kind_of(Array)
    end
end