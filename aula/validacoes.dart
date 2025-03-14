class Validacoes {
  static List<String> estados = [
    'AC',
    'AL',
    'AM',
    'AP',
    'BA',
    'CE',
    'DF',
    'ES',
    'GO',
    'MA',
    'MG',
    'MS',
    'MT',
    'PA',
    'PB',
    'PE',
    'PI',
    'PR',
    'RJ',
    'RN',
    'RO',
    'RR',
    'RS',
    'SC',
    'SE',
    'SP',
    'TO',
  ];

  static int maiorIdadeMundo = 128;

  static bool validarCidade(var cidade) {
    if (cidade is String) {
      return true;
    }
    throw TypeError();
  }

  static bool validarEstado(var estado) {
    if (estado is String && estados.contains(estado)) {
      return true;
    }
    throw TypeError();
  }

  static bool validarIdade(var idade) {
    try {
      int idadeInteiro = int.parse(idade);
      if (idadeInteiro >= 0 && idadeInteiro < maiorIdadeMundo) {
        return true;
      } else {
        throw RangeError(
          'sua idade não pode ser negativa nem maior que a maior do mundo',
        );
      }
    } catch (error) {
      throw TypeError();
    }
  }

  static bool validarNome(var nome) {
    if (nome is String) {
      return true;
    }
    throw TypeError();
  }
}
