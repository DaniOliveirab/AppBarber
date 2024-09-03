import 'package:logger/logger.dart'; // Importa o pacote Logger, que é usado para registrar logs com diferentes níveis de severidade

// Classe auxiliar para gerenciamento de logs na aplicação
class AppLoggerHelper {
  // Instância única da classe Logger com configurações personalizadas
  static final Logger _logger = Logger(
    printer: PrettyPrinter(), // Define o formato de impressão dos logs com o PrettyPrinter, que embeleza a saída do log
    level: Level.debug, // Define o nível de log padrão como debug
  );

  // Método para registrar mensagens de debug
  // Usado para logs detalhados que ajudam a rastrear o fluxo da aplicação durante o desenvolvimento
  static void debug(String message) {
    _logger.d(message);
  }

  // Método para registrar informações gerais
  // Usado para logs de informações importantes, mas não críticas
  static void info(String message) {
    _logger.i(message);
  }

  // Método para registrar avisos
  // Usado para logs que indicam possíveis problemas ou situações inesperadas que não impedem o funcionamento da aplicação
  static void warning(String message) {
    _logger.w(message);
  }

  // Método para registrar erros
  // Usado para logs que indicam falhas ou problemas críticos na aplicação
  // Também permite registrar o erro e o stack trace associado
  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
