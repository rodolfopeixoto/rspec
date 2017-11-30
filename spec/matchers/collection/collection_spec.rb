describe [1,7,9], "Array", collection: true do
 it { is_expected.to all (be_odd).and be_an(Integer) }
 it { expect(['ruby','rails']).to all(be_a(String).and include('r')) }
end

# Nas collection você o all para verificar se todas as colleções são alguma coisa.

# Espera que todos os elementos sejam string e tenha a letra r em qualquer lugar.
# it { expect(['ruby','rails']).to all(be_a(String).and include('r')) }