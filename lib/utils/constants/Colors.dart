import 'package:flutter/material.dart';

class CoresApp {
  CoresApp._();

  // Cores básicas do aplicativo
  static const Color primaria = Color(0xFF4b68ff);
  static const Color secundaria = Color(0xFF09123D);
  static const Color destaque = Color(0xFFE476C5);

  // Cores do gradiente
  static const Gradient gradienteLinear = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );

  // Cores do texto
  static const Color textoPrimario = Color(0xFF333333);
  static const Color textoSecundario = Color(0xFF61636A);
  static const Color textoDestaque = Color(0xFFFFFFFF);

  // Cores de fundo
  static const Color claro = Color(0xFFF6F6F6);
  static const Color escuro = Color(0xFF272727);
  static const Color fundoPrimario = Color(0xFFF3F5FF);

  // Cores de fundo do container
  static const Color containerClaro = Color(0xFFF6F6F6);
  static Color containerEscuro = Colors.white.withOpacity(0.1);

  // Cores do botão
  static const Color botaoPrimario = Color(0xFF513E8C);
  static const Color botaoSecundario = Color.fromARGB(255, 79, 79, 79);
  static const Color botaoDesabilitado = Color(0xFFD6C6C6);

  // Cores da borda
  static const Color bordaPrimaria = Color(0xFFF6F6F6);
  static const Color bordaSecundaria = Color(0xFFF6F6F6);

  // Cores de erro e validação
  static const Color erro = Color(0xffd32f2f);
  static const Color sucesso = Color(0xff388e3c);
  static const Color alerta = Color(0xfff57c00);
  static const Color informacao = Color(0xff1976d2);

  // Tons neutros
  static const Color preto = Color(0xff232323);
  static const Color cinzaEscuro = Color(0xff4f4f4f);
  static const Color cinzaMedio = Color(0xff939393);
  static const Color cinza = Color(0xffe0e0e0);
}