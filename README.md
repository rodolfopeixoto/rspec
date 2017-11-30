# rogpe [ Calculator Project ]

TDD - RSPEC | Ruby

Exemplo da aplicação: 

[www.about.me/rodolfopeixoto](http://www.about.me/rodolfopeixoto) 

Versão do Projeto 0.1
================

Sobre esta versão
---------------------
Site desenvolvido:
Utilizei: 
 - Ruby 2.4
 - RSpec 3.7

ATENÇÃO
---------------------



Configuração inicial
---------------------


Documentação
----------------------


### Gerar documentação rspec
No arquivo .rspec basta adicionar

```
--format documentation
```



#### Subject

describe Calculor: Busca a classe e instância. 
subject = Calculator.new

**Antes:**

```
describe Calculator do
  # method class sum #  | methods of instance .sum(self.sum)
  context '#sum' do
    it 'positive numbers' do
      calc = Calculator.new
      result = calc.sum(5,7)
      expect(result).to eq(12)
    end
    it 'with negative and positive numbers' do
      calc = Calculator.new
      result = calc.sum(-5,7)
      expect(result).to eq(2)
    end
    it 'with negative numbers' do
      calc = Calculator.new
      result = calc.sum(-5,-7)
      expect(result).to eq(-12)
    end
  end
end

```


**Depois:**

```
describe Calculator do
  # method class sum #  | methods of instance .sum(self.sum)
  context '#sum' do
    it 'positive numbers' do
      result = subject.sum(5,7)
      expect(result).to eq(12)
    end
    it 'with negative and positive numbers' do
      result = subject.sum(-5,7)
      expect(result).to eq(2)
    end
    it 'with negative numbers' do
      result = subject.sum(-5,-7)
      expect(result).to eq(-12)
    end
  end
end

```


#### Trocar subject para uma outra variável

```
describe Calculator do
  # method class sum #  | methods of instance .sum(self.sum)
  context '#sum' do

    subject(:calc) { described_class.new() }

    it 'positive numbers' do
      result = calc.sum(5,7)
      expect(result).to eq(12)
    end
    it 'with negative and positive numbers' do
      result = calc.sum(-5,7)
      expect(result).to eq(2)
    end
    it 'with negative numbers' do
      result = calc.sum(-5,-7)
      expect(result).to eq(-12)
    end
  end
end
```

#### xit e it

Para que o teste fique pendente basta fazer:

```
it 'with positive numbers'
```
ou

```

    xit 'with negative and positive numbers' do
      result = calc.sum(-5,7)
      expect(result).to eq(2)
    end
```



#### describe Class, 'About it' do

```
describe Calculator, 'Sobre a Calculadora' do

end
```


#### Matchers

Example: 

```
expect(subject).to eq(1)
```

```
expect(subject).not_to eq(1)
```

**equal**
O matcher equal testar se o objeto x é igual ao objeto y.

```
  it '#equal - Testa se é o mesmo objeto' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to equal(y)
    expect(y).to equal(y)
  end
```

**be**

Testa se é o mesmo objeto

```

  it '#be - Testa se é o mesmo objeto' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to be(y)
    expect(y).to be(y)
  end
```

**eql**

Testa se os valores são iguais.

```
  it '#eql - Testa se é o valor é o mesmo' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eql(y)
  end
```

**eq**
Testa se é o valor é o mesmo
```
  it '#eq - Testa se é o valor é o mesmo' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eq(y)
  end
```

**be true, be false, be_truthy, be_falsey, be nil**


**be true**

espera que seja verdadeiro o valor

```
  it 'be true' do
    expect(1.odd?).to be true 
  end

```


**be false**

espera que seja falso o valor

```
  it 'be false' do
    expect(1.even?).to be false
  end

```



**be_truthy**

espera que o valor seja verdadeiro

```
  it 'be_truthy' do
    expect(1.odd?).to be_truthy 
  end
```


**be_falsey**

espera que o valor seja falso

```
  it 'be_falsey' do
    expect(1.even?).to be_falsey
  end

```


**be nil**

espera que a variavel está vazia (nil)

```
it 'be_nil' do
  expect(defined? x).to be_nil
end
```

**Marchers comparison**

**be > 1**

Methcer maior ( > )

```
  it '>' do
    expect(5).to be > 1
  end
```


**be >=**

Matcher maior ou igual (>=)

```

  it '>=' do
    expect(5).to be >= 2
    expect(5).to be >= 5
  end
```


**be <**

Matcher menor (<)

```
  it '<' do
    expect(5).to be < 12
    expect(5).to be < 5
  end
```


**be <=**

Matcher menor ou igual

```
  it '<=' do
    expect(5).to be <= 12
    expect(5).to be <= 5
  end
```




**be_between**

deve estar entre um valor min e max ( que contam, inclisive)

```
  it 'be_between inclusive' do
    expect(5).to be_between(2,7).inclusive # 2 e 7 contam
    expect(2).to be_between(2,7).inclusive
    expect(7).to be_between(2,7).inclusive
  end

```

ou 

deve estar entre um range min e max ( que não irão contar, exclusive)

```
  it 'be_between exclusive' do
    expect(5).to be_between(2,7).exclusive # 2 e 7 não contam
    expect(3).to be_between(2,7).exclusive
    expect(6).to be_between(2,7).exclusive
  end
```


**Match para usar regex**

Podemos verificar através de expressão regular

```
  it 'match' do
    expect('fulano@com.br').to match(/..@../)
  end

```


**start_with**

Verificar se no inicio tem uma palavra ou verificar se o primeiro elemento é o esperado.

```
  it 'start_with' do
    expect('fulano de tal').to start_with('fulano')
    expect([1,2,3]).to start_with(1)
  end
```




**end_with**

Verificar se no fim tem uma palavra ou verificar se o ultimo elemento é o esperado.

```
  it 'end_with' do
    expect('Fulano de tal').to end_with('tal')
    expect([2,4,6]).to end_with(6)
  end
```




**Matchers de class e tipos (be_instance_of, be_kind_of respond_to, be_a, be_an)**

*** be_instance_of ***

Deve ser exatamento da classe

```
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) # Exatamente a classe
  end
```


**be_kind_of**

Pode ser de uma herança de classe também exemplo: class StringNew < String end

```
  it 'be_kind_of' do
    expect(10).to be_kind_of(Integer) # Pode ser por herança
  end
```


**respond_to**

Verifica se o valor responde a um método

```
  it 'respond_to' do
    expect('ruby').to respond_to(:size) # Respond ao método size
    expect('ruby').to respond_to(:count) # Respond ao método count
  end
```

**be_a**

Segue os principios de be_kind_of, mas para escrever da forma correta utiliza o be_a

```
  it 'be_a' do
    expect(10).to be_a(Integer) # Pode ser por herança
  end
```

**be_an**

Segue os principios de be_kind_of, mas para escrever da forma correta utiliza o be_an


```
  it 'be_an' do
    expect(10).to be_an(Integer) # Pode ser por herança
  end
```

**have_attributes**

Para testar os atributos de uma classe é necessário utilizar o have_attributes

Utilizado para verificar se o atributo existe.
```
require 'person'

describe 'Attributes' do
  it 'have_attributes' do
    person = Person.new
    person.name = 'Rodolfo'
    expect(person).to have_attributes(name: 'Rodolfo')
  end
end
```

Outra opção é fazer algumas validações:

```
describe 'Attributes' do
  it 'have_attributes' do
    person = Person.new
    person.name = 'Rodolfo'
    person.age = 25
    # expect(person).to have_attributes(name: 'Rodolfo')
    expect(person).to have_attributes(name: starting_with("R"), age: (be >= 25))
  end
end

class Person
    attr_accessor :name, :age
end
```

Você poderá ter algumas variações para melhorar a leitura(verboso), como por exemplo:

```
  expect(person).to have_attributes(name: a_string_starting_with("R"), age: (a_value >= 25))
```

Link com as methods alias:
[Alias Methods](https://gist.github.com/JunichiIto/f603d3fbfcf99b914f86)


#### Matchers Predicados

São métodos que ao ler lhe da uma intenção, por exemplo:

```
  12.odd?
  => false
  12.even?
  => true
  12.nil?
  => false
  12.nonzero?
  => false
```

**be_(method predicate)**

Colocando o be_ poderemos utilizar qualquer método predicado.
exemplo:

```
describe 'Predicate' do
  it 'odd' do
    expect(1).to be_odd 
  end
  it 'even' do
    expect(1).not_to be_even 
  end
end
```


#### Matchers of Errors

**raise_exception**

Caso queira pegar um error, no exemplo o Ruby 10 / 0 é um error. Então, podemos
verificar, porém como já é um error da classe não podemos usar o **expect().to** <~ com parênteses, devemos
utilizar o **expect{}.to**, pois conseguiremos comparar o error, antes que ele lance uma exception.

Mesmo que tenha um error o **expect{}.to** vai fazer o parse e vai comparar com o **raise_exception**.

```
require 'calculator'

describe Calculator do
  # method class sum #  | methods of instance .sum(self.sum)
  context '#sum' do

    subject(:calc) { described_class.new() }

    it 'positive numbers' do
      result = calc.sum(5,7)
      expect(result).to eq(12)
    end
    it 'with negative and positive numbers' do
      result = calc.sum(-5,7)
      expect(result).to eq(2)
    end
    it 'with negative numbers' do
      result = calc.sum(-5,-7)
      expect(result).to eq(-12)
    end
  end
  
   context '#div' do
    it "divide by 0" do
      expect{subject.div(3,0)}.to raise_exception
    end
  end
end
```

Podemos usar o **raise_error(TipoDoError)**

por exemplo:

```
require 'calculator'

describe Calculator do
  # method class sum #  | methods of instance .sum(self.sum)
  context '#sum' do

    subject(:calc) { described_class.new() }

    it 'positive numbers' do
      result = calc.sum(5,7)
      expect(result).to eq(12)
    end
    it 'with negative and positive numbers' do
      result = calc.sum(-5,7)
      expect(result).to eq(2)
    end
    it 'with negative numbers' do
      result = calc.sum(-5,-7)
      expect(result).to eq(-12)
    end
  end
  
   context '#div' do
    it "divide by 0" do
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError)
    end
  end
end
```

Algumas possibilidades para testar o erro:

* Expressão Regular
* Tipo do error
* Mensagem do erro

```
   context '#div' do
    it "divide by 0" do
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError)
      expect{subject.div(3,0)}.to raise_error("divided by 0")
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError,"divided by 0")
      expect{subject.div(3,0)}.to raise_error(/divided/) #regular expression
    end
  end
```


#### About describe

```
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
```

#### Matchers Arrays

 O **include** funciona para os elementos do array sepadamente

 O **match_array** match_array funciona para verificar se o array existe, porém ele só trabalha com elementos exatos
 
 O **contain_exactly()** contain_exactly funciona para verificar se o array existe, porém ele só trabalha com elementos exatos os elementos não precisam estar na mesma ordem.

```
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
end
```


#### Matchers Range (cover)

Valores cobertos pelo **range**. 2 está entre 1 e 5. 0 e 6 não está entre 1 e 5.


```
describe (1..5), 'Ranges' do
  # Valores cobertos pelo range. 2 está entre 1 e 5. 0 e 6 não está entre 1 e 5.
  it "#cover" do
    expect(subject).to cover(2)
    expect(subject).to cover(2,5)
    expect(subject).not_to cover(0,6)
  end
end
```

#### One-liner Syntax(Subject)

expect(subject) == is_expected

Com o is_expected você infere que no describe temos já o subject.

```
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
```


#### Composição de expectativas (or / and)
Caso queira fazer uma composição, basta usar o **or** ou **and**

```
describe 'Ruby on Rails' do
  it { is_expected.to starting_with('Ruby').and ending_with('Rails') }
  it { expect(fruit).to eq('banana').or eq('orange').or eq('grape') }

  def fruit
    %w(banana orange grape).sample #sorteia
  end
end
```

#### Collections matcher (all)

```
describe [1,7,9], "Array" do
 it { is_expected.to all (be_odd).and be_an(Integer) }
 it { expect(['ruby','rails']).to all(be_a(String).and include('r')) }
end

# Nas collection você o all para verificar se todas as colleções são alguma coisa.

# Espera que todos os elementos sejam string e tenha a letra r em qualquer lugar.
# it { expect(['ruby','rails']).to all(be_a(String).and include('r')) }
``` 

**be_within**

É utilizado para trabalhar com números com casas decimais.


**satisfy**
É uma método muito flexivel, porém a desvantagem é que não a leitura do test não fica tão clara.

```
describe 'Satisfy' do
  it { expect(10).to satisfy { |x| x % 2 == 0 }}
  it { 
       expect(9).to satisfy('be a multiple of 3') do |x| 
         x % 3 == 0 
       end
      }
end

```


#### HOOKS (before after)

**before(:suite)**
Antes de toda a suite de testes

**after(:suite)**
Depois de toda a suite de testes

spec_helper.rb

```
  config.before(:suite) do
    puts ">>>>>>>>>>>>>>>>>>>>> ANTES DE TODA A SUÍTE DE TESTES"
  end
```


**before(:all)** ou **before(:context)**
Antes de todos os testes por contexto(describe é um contexto)

**after(:all)** ou **after(:context)**
Depois de todos os testes por contexto(describe é um contexto)


spec_helper.rb

```
RSpec.configure do |config|
  config.before(:suite) do
    puts ">>>>>>>>>>>>>>>>>>>>> ANTES DE TODA A SUÍTE DE TESTES"
  end

  config.after(:suite) do
    puts ">>>>>>>>>>>>>>>>>>>>> AFTER DE TODA A SUÍTE DE TESTES"
  end
  config.before(:context) do
    puts ">>>>>>>>>>>>>>>>>>>>> ANTES DE TODOS OS TESTES"
  end

  config.after(:context) do
    puts ">>>>>>>>>>>>>>>>>>>>> AFTER DE TODOS OS TESTES"
  end
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

```


**before(:each)** ou **before(:example)**
Antes de cada teste

**after(:each)** ou **after(:example)**
Depois de cada teste


**around(:each)**

Para não utilizar o after e o before juntos, basta usar o around colocando o
teste antes, test.run, logo depois o outro test.

```
  around(:each) do |test|
    puts "ANTES"
    @person = Person.new

    test.run # roda o teste
    
    @person.name = "No name!"
    puts "Depois >>>>>> #{@person.inspect}"

  end
```

**let()** e **let!()**

É um Helper methods arbitrário e no módulo. Você poderá adicionar no
describe ou no module.
Quando você precisar attribuir uma variável, ao invés de usar um bloco before para criar uma variável de instância, use let.

Ao usar let, a variável é carregada apenas quando ela é utilizada pela primeira vez no teste e fica na cache até o teste em questão terminar.


A diferença abaixo:

Com uma variável de instância e before


```
require 'person'

describe 'Attributes' do
#   before(:each) do
#     @person = Person.new
#   end

  let(:person) { Person.new }

  it 'have_attributes' do
    @person.name = 'Rodolfo'
    @person.age = 25
    # expect(@person).to have_attributes(name: 'Rodolfo')
    expect(@person).to have_attributes(name: starting_with("R"), age: (be >= 25))
  end
  it 'have_attributes' do
    @person.name = 'Ramon'
    @person.age = 25
    # expect(@person).to have_attributes(name: 'Rodolfo')
    expect(@person).to have_attributes(name: starting_with("R"), age: (be >= 25))
  end
end
```

Utilizando o **let**


```
require 'person'

describe 'Attributes' do
#   before(:each) do
#     @person = Person.new
#   end

  let(:person) { Person.new }

  it 'have_attributes' do
    person.name = 'Rodolfo'
    person.age = 25
    # expect(person).to have_attributes(name: 'Rodolfo')
    expect(person).to have_attributes(name: starting_with("R"), age: (be >= 25))
  end
  it 'have_attributes' do
    person.name = 'Ramon'
    person.age = 25
    # expect(person).to have_attributes(name: 'Rodolfo')
    expect(person).to have_attributes(name: starting_with("R"), age: (be >= 25))
  end
end
```

Verificando o funcionamento do let:

```
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
```

**let**
Utilizando o **let!**(bang)

O let! é um let com um **before**

```$count = 0

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

```

**change**

Utilizamos o matcher change para quando um valor é modificado, como no exemplo abaixo:

change { code }

change { code }.by(x)

change { code }.from(x).to(y)

```
require 'count'

describe "Matcher change" do
  it { expect{Count.increment}.to change { Count.quantity } }
  it { expect{Count.increment}.to change { Count.quantity }.by(1) }
  it { expect{Count.increment}.to change { Count.quantity }.from(2).to(3) }
end

```


```
class Count

    @quantity = 0

    def self.quantity
      @quantity  
    end

    def self.increment
      @quantity += 1
    end

end
```

**output**

É utilizado para testar as saídas padrões do sistema. Em Ruby você poderá usar as saídas:
**print**, **warn** e **puts** e há possibilidade de testar se há erro ou o retorno.
Utilizando sempre o conceito de blocos {  puts "Rodolfo" }. Caso você utilize parênteses ocorrerá um error, pois precisamos passar como bloco.

```
describe "Matcher output" do
  it { expect{puts "Rodolfo"}.to output.to_stdout }
  it { expect{ print "Rodolfo" }.to output("Rodolfo").to_stdout }
  # Testando com expressão regular
  it { expect{ puts "Rodolfo" }.to output(/Rodolfo/).to_stdout }


  it { expect{warn "Rodolfo"}.to output.to_stderr }
  it { expect{ warn "Rodolfo" }.to output("Rodolfo\n").to_stderr }
  # Testando com expressão regular
  it { expect{ warn "Rodolfo" }.to output(/Rodolfo/).to_stderr }
end

```

#### Negativando Matchers

*RSpec::Matchers.define_negated_matcher :an_array_excluding, :include*
*RSpec::Matchers.define_negated_matcher :exclude, :include*

Quando desejamos inverter o matcher, fazendo com que ele espere um valor "diferente"

```
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
```


Você poderá adicionar o nome que desejar, como exemplo abaixo:

```
RSpec::Matchers.define_negated_matcher :nome_que_desejar, :be_within
```


```
RSpec::Matchers.define_negated_matcher :be_not_within, :be_within

describe 'be_within' do
    it { expect(12.5).to be_within(0.5).of(12.0) } # A diferença máxima entre 12.5 e 12 tem que ser de 0.5
    it { expect(11.4).to be_not_within(0.5).of(12.0) }
    it { expect([12.6,12.9, 12.5]).to all(be_within(0.5).of(13.0))}
    # Intervalo
    # 0.5 é o delta
    # Números aceitos: 11.5 à 12.5
  end
```


#### Agregando falhas

O RSpec verifica se tem um error na primeira expect, caso haja ele não mostra o seguinte. Porém há momentos que iremos precisar que seja mostrado todas as expects e seus erros.

**aggregate_failures**

```
it 'teste' do
  aggregate_failures do
    code
  end
end
```

Exemplo:

```
  it 'be_between inclusive / Falhas agregadas' do
    aggregate_failures do
      expect(5).to be_between(2,7).inclusive # 2 e 7 contam
      expect(1).to be_between(2,7).inclusive
      expect(8).to be_between(2,7).inclusive
    end
  end
  
    it 'be_between inclusive / Falhas agregadas', :aggregate_failures do
        expect(5).to be_between(2,7).inclusive # 2 e 7 contam
        expect(1).to be_between(2,7).inclusive
        expect(8).to be_between(2,7).inclusive
    end

  
    it 'be_between inclusive / Falhas agregadas', aggregate_failures:true do
        expect(5).to be_between(2,7).inclusive # 2 e 7 contam
        expect(1).to be_between(2,7).inclusive
        expect(8).to be_between(2,7).inclusive
    end
```

Caso deseje para todas as configurações, você poderá adicionar no spec_helper.rb

```
  config.define_derived_metadata do |meta| 
    meta[:aggregate_failures] = true
  end
```

## shared examples

**send** and **capitalize** 
O send envia uma mensagem para o objeto. Exemplo:

```
x = "Rodolfo"
y = "size"
x.send(y)
>> 7
x.size
>> 7
```

O shared examples é utilizado para reutilizar código.

Criando um código dinâmico, veja a diferença com shared_examples e com:

```
require 'person'

describe "Person" do
  subject(:person) { Person.new }
  
  it '#happy!' do
    person.happy!
    expect(person.status).to eq('Felling happy!')
  end

  it '#said!' do
    person.said!
    expect(person.status).to eq('Felling said!')
  end

  it '#content!' do
    person.content!
    expect(person.status).to eq('Felling content!')
  end
end


```

Métodos para chamar o shared_examples
include_examples "name"
it_behaves_like "name"
it_should_behave_like "name"



**Pasta**: shared_examples/shared_examples.rb


```
require 'person'

shared_examples 'status' do |felling|
  it '#{felling}!' do
    person.send("#{felling}!")
    expect(person.status).to eq("Felling #{felling.capitalize}!")
  end
end

describe "Person" do
  subject(:person) { Person.new }
  
  it_behaves_like 'status', :happy
  it_behaves_like 'status', :said
  it_behaves_like 'status', :content

end


```


**Pasta**: person.rb

```
class Person
  attr_accessor :name, :age
  attr_reader :status

  def happy!
    @status = "Felling Happy!"
  end

  def said!
    @status = "Felling Said!"
  end

  def content!
    @status = "Felling Content!"
  end
end

```

#### Customizando os matchers

```
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

```

### Links diretos:


Desenvolvimento
---------------------
-   [Rodolfo Peixoto](http://www.rogpe.me)
