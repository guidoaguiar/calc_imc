import 'dart:convert';
import 'dart:io';

import 'package:calc_imc/enum/tipo_sexo.dart';

class ConsoleUtils {
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }
  //change , to . before parsing

  static double lerDouble() {
    do {
      try {
        return double.parse(lerString().replaceAll(",", "."));
      } catch (e) {
        print("Valor inválido, digite novamente:");
      }
    } while (true);
  }

  static double lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }

  static Genero lerGenero(String texto) {
    do {
      try {
        var genero = lerStringComTexto(texto).toUpperCase();
        if (genero == "M") {
          return Genero.M;
        } else if (genero == "F") {
          return Genero.F;
        } else {
          throw Exception("Valor inválido, digite novamente:");
        }
      } catch (e) {
        print("Valor inválido, digite novamente:");
      }
    } while (true);
  }
}
