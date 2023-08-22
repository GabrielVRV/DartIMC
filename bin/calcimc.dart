import 'dart:io';

class Pessoa {
  String nome;
  double altura;
  double peso;

  Pessoa(this.nome, this.altura, this.peso);
}

void main() {
  print("Calculadora de IMC");

  stdout.write("Informe o seu nome: ");
  String nome = stdin.readLineSync()!;

  stdout.write("Informe a sua altura (metros): ");
  double altura = double.parse(stdin.readLineSync()!);

  stdout.write("Informe o seu peso (kg): ");
  double peso = double.parse(stdin.readLineSync()!);

  Pessoa pessoa = Pessoa(nome, altura, peso);

  double imc = calcularIMC(pessoa.peso, pessoa.altura);

  print("O IMC de ${pessoa.nome} é: $imc");
  interpretarIMC(imc);
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

void interpretarIMC(double imc) {
  if (imc < 16) {
    print("Magreza grave");
  } else if (imc < 17) {
    print("Magreza moderada");
  } else if (imc < 18.5) {
    print("Magreza leve");
  } else if (imc < 25) {
    print("Saudável");
  } else if (imc < 30) {
    print("Sobrepeso");
  } else if (imc < 35) {
    print("Obesidade Grau I");
  } else if (imc < 40) {
    print("Obesidade Grau II");
  } else {
    print("Obesidade Grau III");
  }
}
