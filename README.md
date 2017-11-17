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


### Links diretos:


Desenvolvimento
---------------------
-   [Rodolfo Peixoto](http://www.rogpe.me)
