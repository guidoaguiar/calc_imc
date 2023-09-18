import 'package:calc_imc/enum/tipo_sexo.dart';
// Classe pessoa para calcular o IMC

class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;
  Genero _sexo = Genero.naoDefinido;

  double calcularIMC() {
    return _peso / (_altura * _altura);
  }

  String resultadoIMC() {
    double imc = calcularIMC();
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      return "Magreza Moderada";
    } else if (imc >= 17 && imc < 18.5) {
      return "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      return "Saudável";
    } else if (imc >= 25 && imc < 30) {
      return "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      return "Obesidade Grau I";
    } else if (imc >= 35 && imc < 40) {
      return "Obesidade Grau II (severa)";
    } else {
      return "Obesidade Grau III (mórbida)";
    }
  }

  setnome(String nome) {
    _nome = nome;
  }

  setpeso(double peso) {
    _peso = peso;
  }

  setaltura(double altura) {
    _altura = altura;
  }

  void setsexo(Genero sexo) {
    _sexo = sexo;
  }

  getnome() {
    return _nome;
  }

  getpeso() {
    return _peso;
  }

  getaltura() {
    return _altura;
  }

  getsexo() {
    return _sexo;
  }

  Pessoa(String nome, double peso, double altura,
      Genero sexo) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
    _sexo = sexo;
  }
}
