import 'dart:io';
import 'package:flutterzada/aula/validacoes.dart';

void main() {
  printarRespostas();
}

void printarRespostas() {
  String? nome;
  String? idade;
  String? cidade;
  String? estado;

  print('informe o seu nome:');
  nome = stdin.readLineSync()!;
  if (Validacoes.validarNome(nome)) print('seu nome é $nome');

  print('informe a sua idade:');
  idade = stdin.readLineSync()!;
  if (Validacoes.validarIdade(idade)) print('sua idade é $idade');

  print('informe a sua cidade:');
  cidade = stdin.readLineSync()!;
  if (Validacoes.validarCidade(cidade)) print('sua cidade é $cidade');

  print('informe seu estado (em singlas): ');
  estado = stdin.readLineSync()!;
  if (Validacoes.validarEstado(estado.toUpperCase())) {
    print('seu estado é $estado');
  }
}
