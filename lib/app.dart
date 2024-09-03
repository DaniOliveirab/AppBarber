import 'package:flutter/material.dart';  // Importa o pacote Flutter Material, que fornece componentes e temas visuais padronizados.
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:notion_barber/features/authentication/screens/onboarding.dart';
import 'package:notion_barber/utils/theme/theme.dart';  // Importa o arquivo de temas personalizados do aplicativo.

// Classe principal do aplicativo.
class MyApp extends StatelessWidget {
  // Construtor constante da classe MyApp.
  const MyApp({super.key});

  // Método build que constrói a interface do aplicativo.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Define o tema do aplicativo baseado no modo do sistema (modo claro ou escuro).
      themeMode: ThemeMode.system,
      
      // Define o tema claro do aplicativo, conforme configurado no arquivo de temas personalizado.
      theme: TemaApp.temaClaro,
      
      // Define o tema escuro do aplicativo, conforme configurado no arquivo de temas personalizado.
      darkTheme: TemaApp.temaEscuro,
      home: const OnBoardingScreen(),
    );
  }
}
