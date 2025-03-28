# Diário de aula  - 27 de Março de 2025

- tipagem em dart
- rodei a classe pessoa no main.dart
- classe pessoa
- criei um app basicao doc do google flutter
- POO em dart

### 1) O que significa o uso do operador ? em Dart ao declarar um atributo de uma classe? Explique com um exemplo.
- significa que pode ser null/sem definição por exemplo, String? nome assim ele precisa ser passado como string mas não estoura exceção se nome for nulo

 ### 2) No código abaixo, há um erro. Qual é ele? Como corrigir?
```dart
class Carro {
  String? marca;
  int ano;
}
```
 - falta o construtor, não tem como inicializar esses atributos

 ### 3) Complete a implementação da classe Produto, garantindo que seus atributos (nome e preco) possam ser nulos:
```dart
  class Produto {
  _______ nome;
  _______ preco;
}
```
 
 - precisa ficar assim:
```dart
  class Produto {
  String? nome;
  double? preco;
}
```

### 4) Modifique o código abaixo para garantir que, se nenhuma entrada for fornecida, os atributos recebam um valor padrão:
```dart
import 'dart:io';

void main() {
  Produto produto = Produto();
  print('Digite o nome do produto:');
  produto.nome = stdin.readLineSync();
  print('Digite o preço do produto:');
  produto.preco = double.tryParse(stdin.readLineSync() ?? '0');
  print('Produto: ${produto.nome}, Preço: ${produto.preco}');
}
class Produto {
  String? nome;
  double? preco;
}
```

- precisa ficar assim:

```dart
import 'dart:io';

void main() {
  Produto produto = Produto();
  print('Digite o nome do produto:');
  produto.nome = stdin.readLineSync();
  print('Digite o preço do produto:');
  produto.preco = double.tryParse(stdin.readLineSync() ?? '0');
  print('Produto: ${produto.nome}, Preço: ${produto.preco}');
}
class Produto {
  String? nome = "Mouse";
  double? preco = 10.00;
}
```

### 5. Explique a diferença entre ? e late na declaração de atributos em Dart.

- late é mais pra quando vc quer dizer que vai vir um atributo, por ex quando vc precisa pegar algo da API mas tem que esperar a requisição ser completada antes, daí enquanto isso ele fica nulo

### 6) No código abaixo, o que acontecerá se tentarmos acessar pessoa.idade antes de atribuir um valor? Justifique

```dart
class Pessoa {
  late int idade;
}
```

- erro de timing caso acessemos antes de chegar um valor pro atributo

### 7) Modifique a classe Funcionario abaixo para utilizar late corretamente e evitar problemas de inicialização:

```dart
class Funcionario {
  String? nome;
  double? salario;
  Funcionario({required this.nome, required this.salario});
}
```

### 8) Escreva um construtor para a classe Aluno, garantindo que nome e nota sejam inicializados na criação do objeto.
```dart
class Aluno {
  String nome = "Mateus";
  double nota = 10.0;
  Aluno({required this.nome, required this.nota});
}
```

### 9) Qual a vantagem de utilizar um construtor em vez de definir atributos com ? ou late?
- Com um construtor você determina que precisam ser tipados algumas coisas e ganha um erro de compilação na sua cara se vc fizer bobeira

### 10) Modifique o código abaixo para utilizar parâmetros nomeados no construtor:
```dart
class Endereco {
  String rua;
  String cidade;
  
  Endereco({required this.rua, required this.cidade});
}
```

### 11) O que são métodos get e set em Dart? Para que servem?
- são meios de pegar valores privados em suas classes. Servem pra definir e buscar valores com segurança

### 12) Implemente um getter para a classe Retangulo que calcule a área automaticamente:
```dart
class Retangulo {
  double largura;
  double altura;

  double get area => largura * altura;

  Retangulo(this.largura, this.altura);
}
```

### 13) Modifique a classe abaixo para que o set de idade não permita valores negativos:
```dart
class Pessoa {
  int _idade;
  
  Pessoa(this.idade);

  set idade(double idade) {
    if (idade < 0) throw Exception('idade inválida');
    _idade = idade;
  }
}
```

### 14)  Modifique a classe abaixo para que o set de idade não permita valores negativos:

```dart
class Pessoa {
  int _idade;
  double _peso;
  
  double get peso => _peso;
  set peso(double novoPeso) {
    if (novoPeso > 0) _peso = novoPeso;
  }

  set idade(double idade) {
    if (idade < 0) throw Exception('idade inválida');
    _idade = idade;
  }
  
  Pessoa(this._idade, this._peso);
}
```
### 15) Crie uma classe ContaBancaria que possua os atributos titular, saldo e um método depositar(double valor). O saldo deve ser alterado apenas pelo método.

```dart
class ContaBancaria {
  String titular;
  double _saldo;
  
  ContaBancaria(this.titular, [this._saldo = 0.0]);
  
  double get saldo => _saldo;
  
  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
    }
  }
}
```

### 16) Modifique a classe ContaBancaria da questão anterior, adicionando um método sacar(double valor), garantindo que o saldo não fique negativo. 

```dart
class ContaBancaria {
  String titular;
  double _saldo;
  
  ContaBancaria(this.titular, [this._saldo = 0.0]);
  
  double get saldo => _saldo;
  
  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
    }
  }
  
  bool sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
      return true;
    }
    return false;
  }
}
```

### 17) Reescreva a classe Carro para utilizar construtores nomeados que permitam criar um carro novo (zeroKm) ou usado (usado com ano definido).

```dart
class Carro {
  String modelo;
  String marca;
  int? ano;
  bool isZeroKm;
  
  Carro._internal(this.modelo, this.marca, this.ano, this.isZeroKm);
  
  factory Carro.zeroKm(String modelo, String marca) {
    return Carro._internal(modelo, marca, DateTime.now().year, true);
  }
  
  factory Carro.usado(String modelo, String marca, int ano) {
    if (ano > DateTime.now().year) {
      throw ArgumentError('O ano do carro usado não pode ser maior que o ano atual');
    }
    return Carro._internal(modelo, marca, ano, false);
  }
}
```

### 18) Implemente uma classe Aluno que possua um método que retorne se o aluno está aprovado ou reprovado, considerando a média mínima de 7.

```dart
class Aluno {
  String nome;
  List<double> notas = [];
  
  Aluno(this.nome);
  
  void adicionarNota(double nota) {
    if (nota >= 0 && nota <= 10) {
      notas.add(nota);
    } else {
      throw ArgumentError('A nota deve estar entre 0 e 10');
    }
  }

  double calcularMedia() {
    if (notas.isEmpty) {
      return 0;
    }
    
    double soma = notas.reduce((a, b) => a + b);
    return soma / notas.length;
  }
  
  bool estaAprovado() {
    return calcularMedia() >= 7;
  }
  
  String verificarSituacao() {
    return estaAprovado() ? 'Aprovado' : 'Reprovado';
  }
}
```
