import 'package:health/consultas.dart';

class ConsultaRepositorio {
  static List<Consulta> tabela = [
    Consulta(
        medico: '',
        especialidade: '',
        data: '',
        local: '',
        historico: '',
        exames: '')
  ];
  static var cont = 0;
}
