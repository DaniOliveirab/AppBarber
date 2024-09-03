import 'package:flutter/material.dart';
import 'package:notion_barber/utils/theme/custom_themes/tema_appbar.dart';
import 'package:notion_barber/utils/theme/custom_themes/tema_botao_elevado.dart';
import 'package:notion_barber/utils/theme/custom_themes/tema_bottom_sheet.dart';
import 'package:notion_barber/utils/theme/custom_themes/tema_checkbox.dart';
import 'package:notion_barber/utils/theme/custom_themes/tema_chip.dart';
import 'package:notion_barber/utils/theme/custom_themes/text_theme.dart';
import 'package:notion_barber/utils/theme/custom_themes/tema_outline_button.dart';
import 'package:notion_barber/utils/theme/custom_themes/tema_text_field.dart';

class TemaApp {
  TemaApp._();

  // Configuração do tema claro.
  static ThemeData temaClaro = ThemeData(
    useMaterial3: true, // Usa Material Design 3.
    fontFamily: 'Poppins', // Define a fonte padrão.
    brightness: Brightness.light, // Define o brilho como claro.
    primaryColor: Colors.blue, // Define a cor primária.
    textTheme: TemaTextoApp.temaTextoClaro, // Tema do texto claro.
    chipTheme: TemaChip.temaChipClaro, // Tema dos chips claro.
    scaffoldBackgroundColor: Colors.white, // Cor de fundo do scaffold.
    appBarTheme: TemaAppBar.temaAppBarClaro, // Tema da AppBar claro.
    checkboxTheme: TemaCheckbox.temaCheckboxClaro, // Tema dos checkboxes claro.
    bottomSheetTheme: TemaBotaoSheet.temaBotaoSheetClaro, // Tema do bottom sheet claro.
    outlinedButtonTheme: TemaOutlinedButton.temaOutlinedButtonClaro, // Tema dos botões outline claro.
    elevatedButtonTheme: TemaBotaoElevado.temaBotaoElevadoClaro, // Tema dos botões elevados claro.
    inputDecorationTheme: TemaTextFormField.temaInputDecorationClaro, // Tema dos campos de texto claro.
  );

  // Configuração do tema escuro.
  static ThemeData temaEscuro = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TemaTextoApp.temaTextoEscuro,
    chipTheme: TemaChip.temaChipEscuro,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TemaAppBar.temaAppBarEscuro,
    checkboxTheme: TemaCheckbox.temaCheckboxEscuro,
    bottomSheetTheme: TemaBotaoSheet.temaBotaoSheetEscuro,
    outlinedButtonTheme: TemaOutlinedButton.temaOutlinedButtonEscuro,
    elevatedButtonTheme: TemaBotaoElevado.temaBotaoElevadoEscuro,
    inputDecorationTheme: TemaTextFormField.temaInputDecorationEscuro,
  );
}
