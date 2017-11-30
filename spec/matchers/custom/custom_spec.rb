RSpec::Matchers.define :be_a_multiple_of do |expected|
  #expected é igual ao 3
  # bloco match ele testará o que desejamos.
  # Atual é igual a 18
  match do |actual|
    actual % expected == 0
  end

  # customização da falha
  failure_message do |actual|
    "expected that #{actual} would be a multiple of #{expected}"
  end

  description do
    "be a multiple of #{expected} <<<<<"
  end
end

describe 18, 'Custom Matchers' do
  it { is_expected.to be_a_multiple_of(3) }
end
