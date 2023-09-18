import 'package:test/test.dart';
import 'package:calc_imc/classes/pessoa.dart';
import 'package:calc_imc/enum/tipo_sexo.dart';

void main() {
  group('Pessoa', () {
    test('calcularIMC', () {
      final pessoa = Pessoa('João', 70, 1.75, Genero.M);
      expect(pessoa.calcularIMC(), equals(22.857142857142858));
    });

    test('resultadoIMC', () {
      final pessoa1 = Pessoa('Maria', 50, 1.6, Genero.F);
      expect(pessoa1.resultadoIMC(), equals('Saudável'));

      final pessoa2 = Pessoa('João', 90, 1.8, Genero.M);
      expect(pessoa2.resultadoIMC(), equals('Sobrepeso'));

      final pessoa3 = Pessoa('Júlia', 120, 1.7, Genero.F);
      expect(pessoa3.resultadoIMC(), equals('Obesidade Grau III (mórbida)'));
    });

    test('getters and setters', () {
      final pessoa = Pessoa('João', 70, 1.75, Genero.M);
      expect(pessoa.getnome(), equals('João'));
      expect(pessoa.getpeso(), equals(70));
      expect(pessoa.getaltura(), equals(1.75));
      expect(pessoa.getsexo(), equals(Genero.M));

      pessoa.setnome('Maria');
      pessoa.setpeso(60);
      pessoa.setaltura(1.6);
      pessoa.setsexo(Genero.F);

      expect(pessoa.getnome(), equals('Maria'));
      expect(pessoa.getpeso(), equals(60));
      expect(pessoa.getaltura(), equals(1.6));
      expect(pessoa.getsexo(), equals(Genero.F));
    });
  });
}