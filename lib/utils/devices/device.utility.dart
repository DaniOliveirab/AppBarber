// Importações de pacotes necessários para a classe AppDeviceUtils
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

// Classe utilitária para manipulação de dispositivos
class AppDeviceUtils {
  // Esconde o teclado virtual
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  // Define a cor da barra de status
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  // Verifica se a orientação da tela está em modo paisagem
  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  // Verifica se a orientação da tela está em modo retrato
  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  // Habilita ou desabilita o modo de tela cheia
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  // Obtém a altura da tela
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // Obtém a largura da tela
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Obtém a densidade de pixels da tela
  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  // Obtém a altura da barra de status
  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  // Obtém a altura da barra de navegação inferior
  static double getBottomNavigationHeight() {
    return kBottomNavigationBarHeight;
  }

  // Obtém a altura da AppBar
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  // Obtém a altura do teclado virtual
  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  // Verifica se o teclado virtual está visível
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = View.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  // Verifica se o dispositivo é físico (não emulador)
  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  // Vibra o dispositivo por uma duração especificada
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  // Define as orientações preferidas de tela
  static Future<void> setPreferredOrientations(
      List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  // Esconde a barra de status
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  // Mostra a barra de status
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  // Verifica se há conexão com a internet
  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketMessage catch (_) {
      return false;
    }
  }

  // Verifica se o dispositivo é iOS
  static bool isIOS() {
    return Platform.isIOS;
  }

  // Verifica se o dispositivo é Android
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  // Lança uma URL no navegador
  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}