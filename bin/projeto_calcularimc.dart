import '../classes/pessoa.dart';

void main(List<String> arguments) {
  String nome = "";
  double altura = 0;
  double peso = 0;

  Pessoa pessoa = Pessoa(nome, altura, peso);
  print(pessoa);

  print("--------------------------------------");

  Pessoa pessoa1 = Pessoa(nome, altura, peso);
  print(pessoa1);

  print("--------------------------------------");

  Pessoa pessoa2 = Pessoa(nome, altura, peso);
  print(pessoa2);
}
