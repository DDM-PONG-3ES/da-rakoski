import 'dart:ffi';

class Pessoa {
  String _nome;
  String _sobrenome;
  double _peso;

  String get nome => _nome;
  String get sobrenome => _sobrenome;
  double get peso => _peso;

  set nome(String nome) => _nome = nome;
  set sobrenome(String sobrenome) => _sobrenome = sobrenome;

  set peso(double peso) {
    if (peso < 0) throw Exception('Peso inválido');
    _peso = peso;
  }

  Pessoa(String nome, String sobrenome, double peso)
      : _nome = nome,
        _sobrenome = sobrenome,
        _peso = peso;

  @override
  String toString() {
    return 'Pessoa{name: $nome, peso: $peso, sobrenome: $sobrenome}';
  }
}
