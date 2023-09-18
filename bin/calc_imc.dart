import 'package:calc_imc/classes/pessoa.dart';
import 'package:calc_imc/utils/console_utils.dart';

void main(List<String> arguments) {
  var nome = ConsoleUtils.lerStringComTexto("Digite seu nome:");
  var peso =
      ConsoleUtils.lerDoubleComTexto("Digite seu peso em quilos (ex.: 80.5):");
  var altura = ConsoleUtils.lerDoubleComTexto(
      "Digite sua altura em metros (ex.: 1.76):");
  var sexo = ConsoleUtils.lerGenero("Digite seu sexo (M ou F):");

  var pessoa = Pessoa(nome, peso, altura, sexo);

  print("Nome: ${pessoa.getnome()}");
  print("Peso: ${pessoa.getpeso()}");
  print("Altura: ${pessoa.getaltura()}");
  print("Sexo: ${pessoa.getsexo()}");
  print("---------------------");
  print("IMC: ${pessoa.calcularIMC()}");
  print("Resultado: ${pessoa.resultadoIMC()}");
}
