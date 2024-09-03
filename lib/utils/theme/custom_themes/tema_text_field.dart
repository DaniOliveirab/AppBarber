import 'package:flutter/material.dart';

class TemaTextFormField {
  TemaTextFormField._();

  // Configuração do tema claro dos campos de texto.
  static InputDecorationTheme temaInputDecorationClaro = const InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFFE0E0E0),
    labelStyle: TextStyle(fontSize: 16, color: Colors.black),
    hintStyle: TextStyle(fontSize: 16, color: Colors.black),
    errorStyle: TextStyle(fontSize: 16, color: Colors.red),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(color: Colors.transparent),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(color: Colors.transparent),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(color: Colors.transparent),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(color: Colors.transparent),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(color: Colors.transparent),
    ),
  );

  // Configuração do tema escuro dos campos de texto.
  static InputDecorationTheme temaInputDecorationEscuro = const InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFFE0E0E0),
    labelStyle: TextStyle(fontSize: 16, color: Colors.black),
    hintStyle: TextStyle(fontSize: 16, color: Colors.black),
    errorStyle: TextStyle(fontSize: 16, color: Colors.red),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(color: Colors.transparent),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(color: Colors.transparent),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(color: Colors.transparent),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(color: Colors.transparent),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(color: Colors.transparent),
    ),
  );
}
