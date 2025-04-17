import 'dart:io';

void treze() {
  print("Digite o primeiro número:");
  double n1 = double.parse(stdin.readLineSync()!);
  
  print("Digite o segundo número:");
  double n2 = double.parse(stdin.readLineSync()!);
  
  print("Digite o terceiro número:");
  double n3 = double.parse(stdin.readLineSync()!);
  
  double media = (n1 + n2 + n3) / 3;
  
  double maior = n1;
  if (n2 > maior) maior = n2;
  if (n3 > maior) maior = n3;
  
  double soma = n1 + n2 + n3;
  
  print("1) Média: ${media.toStringAsFixed(2)}");
  print("2) Maior: $maior");
  print("3) Soma: $soma");
}

void quatorze() {
print("Digite seu nome:");
  String nome = stdin.readLineSync()!;
  
  print("Digite sua idade:");
  String idadeStr = stdin.readLineSync()!;
  
  print("Digite sua altura (em metros):");
  String alturaStr = stdin.readLineSync()!;
  
  print("Digite seu peso (em kg):");
  String pesoStr = stdin.readLineSync()!;
  
  print("matriculado? (sim/não):");
  String matriculadoStr = stdin.readLineSync()!.toLowerCase();
  
  int idade = int.parse(idadeStr);
  double altura = double.parse(alturaStr);
  double peso = double.parse(pesoStr);
  bool matriculado = matriculadoStr == "sim";
  
  double imc = peso / (altura * altura);
  
  print("Nome: $nome");
  print("Idade: $idade anos");
  print("Altura: ${altura.toStringAsFixed(2)}m");
  print("Peso: ${peso.toStringAsFixed(1)}kg");
  print("Matriculado: ${matriculado ? 'Sim' : 'Não'}");
  print("IMC: ${imc.toStringAsFixed(2)}");
  
  String categoriaIdade = idade >= 18 ? "Adulto" : "Menor de idade";
  print("Categori: $categoriaIdade");
}

void quinzee() {
    final DateTime agora = DateTime.now();
     const double PI = 3.14159;
}