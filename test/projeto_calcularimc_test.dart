import 'package:test/test.dart';

import '../classes/pessoa.dart';

void main() {
  Pessoa pessoa1 = Pessoa("Rafael", 1.55, 58);
  Pessoa pessoa2 = Pessoa("Lucas", 1.55, 72);
  Pessoa pessoa3 = Pessoa("Vanessa", 1.60, 95);

  group('Calcular o IMC de acordo com o peso e a altura informada', () {
    test('teste1', () {
      expect(pessoa1.calcularIMC(), "Peso ideal, parabéns");
    });
    test('teste2', () {
      expect(pessoa2.calcularIMC(), "Obesidade grau I");
    });
    test('teste3', () {
      expect(pessoa3.calcularIMC(), "Obesidade grau II, severa");
    });
  });
}
