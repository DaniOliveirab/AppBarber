import 'package:flutter/material.dart';

class TemaBotaoSheet {
  TemaBotaoSheet._();

  // Configuração do tema claro do Bottom Sheet.
  static BottomSheetThemeData temaBotaoSheetClaro = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  // Configuração do tema escuro do Bottom Sheet.
  static BottomSheetThemeData temaBotaoSheetEscuro = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
