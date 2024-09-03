// Classe utilitária para funções auxiliares
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AppHelperFunctions {
  // Retorna a cor correspondente ao valor de string fornecido
  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    }
  }

  // Mostra um SnackBar com uma mensagem
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  // Mostra um alerta com um título e uma mensagem
  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop,
                child: const Text('OK'),
              ),
            ],
          );
        });
  }

  // Navega para outra tela
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  // Trunca o texto se exceder o comprimento máximo especificado
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  // Verifica se o modo escuro está ativado
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // Obtém o tamanho da tela
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  // Obtém a altura da tela
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // Obtém a largura da tela
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  // Retorna uma data formatada com base no formato fornecido
  static String getFormattedDate(DateTime date,
      {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  // Remove duplicatas de uma lista
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  // Envolve widgets em uma lista com um tamanho de linha específico
  static List<Widget> wrapWidget(List<Widget> widgets, int rowSize) {
    List<Widget> wrappedWidgets = [];
    for (int i = 0; i < widgets.length; i += rowSize) {
      wrappedWidgets.add(
        Row(
          children: widgets.sublist(
              i, i + rowSize > widgets.length ? widgets.length : i + rowSize),
        ),
      );
    }
    return wrappedWidgets;
  }
}