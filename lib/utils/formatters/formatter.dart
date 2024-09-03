import 'package:intl/intl.dart';

class FormatadorApp {
  // Função para formatar a data no formato 'dd-MMM-yyyy'
  static String formatarData(DateTime? data) {
    // Se a data for nula, usar a data atual
    data ??= DateTime.now();
    // Formatar a data usando o padrão especificado
    return DateFormat('dd-MMM-yyyy', 'pt_BR').format(data);
  }

  // Função para formatar um valor monetário no formato de moeda
  static String formatarMoeda(double valor) {
    // Formatar o valor monetário para o padrão americano com símbolo de dólar
    return NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(valor);
  }

  // Função para formatar um número de telefone no formato nacional
  static String formatarNumeroTelefone(String numeroTelefone) {
    // Se o número tiver 10 dígitos, formatar como (XXX) XXX XXXX
    if (numeroTelefone.length == 10) {
      return '(${numeroTelefone.substring(0, 2)}) ${numeroTelefone.substring(2, 6)}-${numeroTelefone.substring(6)}';
    }
    // Se o número tiver 11 dígitos, formatar como (XX) XXXX XXXX
    else if (numeroTelefone.length == 11) {
      return '(${numeroTelefone.substring(0, 2)}) ${numeroTelefone.substring(2, 7)}-${numeroTelefone.substring(7)}';
    }
    // Retornar o número original se não tiver 10 ou 11 dígitos
    return numeroTelefone;
  }

  // Função para formatar um número de telefone no formato internacional
  static String formatarNumeroTelefoneInternacional(String numeroTelefone) {
    // Remover todos os caracteres que não são dígitos
    var apenasDigitos = numeroTelefone.replaceAll(RegExp(r'\D'), '');

    // Extrair o código do país
    String codigoPais = '+${apenasDigitos.substring(0, 2)}';
    // Remover o código do país dos dígitos
    apenasDigitos = apenasDigitos.substring(2);

    final numeroFormatado = StringBuffer();
    // Adicionar o código do país ao início do número formatado
    numeroFormatado.write('($codigoPais) ');

    // Iterar sobre os dígitos restantes e adicionar espaços a cada dois ou três dígitos
    int i = 0;
    while (i < apenasDigitos.length) {
      int comprimentoGrupo = 2;
      // Nos EUA, o primeiro grupo tem três dígitos
      if (i == 0 && codigoPais == '+1') {
        comprimentoGrupo = 3;
      }

      int fim = i + comprimentoGrupo;
      // Adicionar um grupo de dígitos ao número formatado
      numeroFormatado.write(apenasDigitos.substring(i, fim));

      // Adicionar um espaço se ainda houver dígitos restantes
      if (fim < apenasDigitos.length) {
        numeroFormatado.write(' ');
      }
      i = fim;
    }
    return numeroFormatado.toString();
  }
}
