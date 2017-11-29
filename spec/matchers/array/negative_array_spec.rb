RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1,2,3]), "Array" do
    # include funciona para os elementos do array sepadamente
    it "#include" do
      expect(subject).to include(2)
      expect(subject).to include(2,1)
    end
    # match_array funciona para verificar se o array existe, porém ele só trabalha com elementos exatos
    # match_array = contain_exactly() [ alias ]
    it "#match_array" do
      expect(subject).to match_array([1,2,3])
    end
  
    # contain_exactly funciona para verificar se o array existe, porém ele só trabalha com elementos exatos
    # os elementos não precisam estar na mesma ordem.
    # match_array = contain_exactly() [ alias ]
    it "#contain_exactly" do
      expect(subject).to contain_exactly(1,2,3)
    end

    it { expect(subject).to exclude(4) }  # esse array não deve conter o 4 
  end