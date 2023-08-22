import 'utils.dart';

class Pessoa {
  String _nome = "";
  double _altura = 0;
  double _peso = 0;
  double _resultadoImc = 0;
  String _tipoPesoDeAcordoComImc = "";

  Pessoa(String nome, double altura, double peso) {
    try {
      _nome = nome = Utils.lerConsoleComTexto("Digite seu nome");

      _altura =
          altura = double.parse(Utils.lerConsoleComTexto("Digite sua altura"));

      _peso = peso = double.parse(Utils.lerConsoleComTexto("Digite seu peso"));

      if (_nome.isEmpty) {
        _nome = "Usuário padrão";
      }
      if (_altura.isNaN || _altura.isNegative) {
        _altura = 0;
      }
      if (_peso.isNaN || _peso.isNegative) {
        _peso = 0;
      }

      calcularIMC();
    } catch (e) {
      print("Valor inválido $e");
    }
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getImc() {
    calcularResultadoImc();
    return _resultadoImc.isNaN ? 0 : _resultadoImc;
  }

  String getTipoDoPeso() {
    calcularIMC();
    return _tipoPesoDeAcordoComImc.isNotEmpty
        ? _tipoPesoDeAcordoComImc
        : "Não foi possível calcular";
  }

  double getPeso() {
    return _peso;
  }

  void calcularResultadoImc() {
    _resultadoImc = _peso / (_altura * _altura);
  }

  String calcularIMC() {
    calcularResultadoImc();
    if (_resultadoImc > 0 && _resultadoImc <= 18.5) {
      _tipoPesoDeAcordoComImc = "Abaixo do peso";
    } else if (_resultadoImc > 18.5 && _resultadoImc <= 24.9) {
      _tipoPesoDeAcordoComImc = "Peso ideal, parabéns";
    } else if (_resultadoImc > 24.9 && _resultadoImc <= 29.9) {
      _tipoPesoDeAcordoComImc = "Levemente acima do peso";
    } else if (_resultadoImc > 29.9 && _resultadoImc <= 34.9) {
      _tipoPesoDeAcordoComImc = "Obesidade grau I";
    } else if (_resultadoImc > 34.9 && _resultadoImc <= 39.9) {
      _tipoPesoDeAcordoComImc = "Obesidade grau II, severa";
    } else if (_resultadoImc > 40) {
      print("Obesidade III");
    }
    return _tipoPesoDeAcordoComImc;
  }

  @override
  String toString() {
    return {
      'nome': _nome,
      'altura': _altura.toString(),
      'peso': _peso.toString(),
      'média de peso': getTipoDoPeso(),
      'resultado imc': getImc().toStringAsFixed(1),
    }.toString();
  }
}
