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

*** Antes: ***

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


*** Depois: ***

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

*** equal ***
O matcher equal testar se o objeto x é igual ao objeto y.

```
  it '#equal - Testa se é o mesmo objeto' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to equal(y)
    expect(y).to equal(y)
  end
```

*** be ***

Testa se é o mesmo objeto

```

  it '#be - Testa se é o mesmo objeto' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to be(y)
    expect(y).to be(y)
  end
```

*** eql ***

Testa se os valores são iguais.

```
  it '#eql - Testa se é o valor é o mesmo' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eql(y)
  end
```

*** eq ***
Testa se é o valor é o mesmo
```
  it '#eq - Testa se é o valor é o mesmo' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eq(y)
  end
```

*** be true, be false, be_truthy, be_falsey, be nil ***


*** be true ***

```

```


*** be false ***

```

```



*** be_truthy ***

```

```


*** be_falsey ***

```

```


*** be nil ***

```

```

### Links diretos:


Desenvolvimento
---------------------
-   [Rodolfo Peixoto](http://www.rogpe.me)
