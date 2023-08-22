import 'dart:convert';
import 'dart:io';

class Utils {
  static String lerConsoleComTexto(String texto) {
    print(texto);
    return lerDadosPessoas();
  }

  static lerDadosPessoas() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }
}
